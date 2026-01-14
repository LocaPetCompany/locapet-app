import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';
import 'package:locapet/export/util.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

part 'social_login_cubit.freezed.dart';
part 'social_login_state.dart';

class SocialLoginCubit extends Cubit<SocialLoginState> {
  final AppLocalStorage _appLocalStorage;
  final AppLogger _logger;

  SocialLoginCubit(this._appLocalStorage, this._logger)
    : super(const SocialLoginState());

  /// ✅ 카카오 로그인 메소드
  Future<void> handleKakaoLogin() async {
    try {
      bool isInstalled = await isKakaoTalkInstalled();
      OAuthToken token;
      if (isInstalled) {
        try {
          token = await UserApi.instance.loginWithKakaoAccount();
        } catch (e) {
          if (e is PlatformException) {
            token = await UserApi.instance.loginWithKakaoAccount();
          } else {
            emit(state.copyWith(isLoggedIn: false));
            GlobalFunction.showToast('소셜 로그인 실패!');
            _logger.e('카카오 로그인 에러: $e');
            return;
          }
        }
      } else {
        token = await UserApi.instance.loginWithKakaoAccount();
      }
      String? idToken = token.idToken;
      await _appLocalStorage.saveProvider(provider: SocialLoginType.kakao.type);
      await _appLocalStorage.saveIdToken(idToken: idToken!);
      emit(state.copyWith(isLoggedIn: true));
    } catch (error) {
      emit(state.copyWith(isLoggedIn: false));
      GlobalFunction.showToast('소셜 로그인 실패!');
      _logger.e('알 수 없는 카카오 에러: $error');
    }
  }

  /// ✅ 구글 로그인 메소드
  Future<fb.User?> handleGoogleLogin() async {
    final fb.FirebaseAuth auth = fb.FirebaseAuth.instance;

    try {
      final GoogleSignInAccount googleUser = await GoogleSignIn.instance
          .authenticate(scopeHint: ['email', 'profile', 'openid']);
      final GoogleSignInAuthentication googleAuth = googleUser.authentication;

      final credential = fb.GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      final fb.UserCredential userCredential = await auth.signInWithCredential(
        credential,
      );
      final fb.User? user = userCredential.user;

      if (user != null) {
        final String? idToken = await user.getIdToken();
        await _appLocalStorage.saveProvider(
          provider: SocialLoginType.google.type,
        );
        await _appLocalStorage.saveIdToken(idToken: idToken!);
        emit(state.copyWith(isLoggedIn: true));
      }
      return user;
    } catch (e) {
      emit(state.copyWith(isLoggedIn: false));
      GlobalFunction.showToast('소셜 로그인 실패!');
      _logger.e('Google 로그인 에러: $e');
      return null;
    }
  }

  /// ✅ 애플 로그인 메소드
  Future<fb.User?> handleAppleLogin() async {
    final fb.FirebaseAuth auth = fb.FirebaseAuth.instance;

    try {
      final credentialFromApple = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final fb.OAuthCredential credential = fb.OAuthProvider('apple.com')
          .credential(
            idToken: credentialFromApple.identityToken,
            accessToken: credentialFromApple.authorizationCode,
          );

      final fb.UserCredential userCredential = await auth.signInWithCredential(
        credential,
      );
      final fb.User? user = userCredential.user;

      if (user != null) {
        final String idToken = await user.getIdToken() ?? '';
        await _appLocalStorage.saveProvider(
          provider: SocialLoginType.apple.type,
        );
        await _appLocalStorage.saveIdToken(idToken: idToken);
        emit(state.copyWith(isLoggedIn: true));
      }
      return user;
    } on SignInWithAppleAuthorizationException catch (e) {
      if (e.code == AuthorizationErrorCode.canceled) {
        _logger.e('Apple 로그인 취소됨');
        return null;
      }
      emit(state.copyWith(isLoggedIn: false));
      GlobalFunction.showToast('소셜 로그인 실패!');
      _logger.e('Apple 로그인 인증 에러: $e');
      return null;
    } catch (e) {
      emit(state.copyWith(isLoggedIn: false));
      GlobalFunction.showToast('소셜 로그인 실패!');
      _logger.e('Apple 로그인 에러: $e');
      return null;
    }
  }

  /// ✅ 네이버 로그인 메소드
  Future<void> handleNaverLogin() async {
    try {
      await NaverLoginSDK.authenticate(
        callback: OAuthLoginCallback(
          onSuccess: () async {
            // await NaverLoginSDK.profile(
            //   callback: ProfileCallback(
            //     onError: (errorCode, message) {
            //       _logger.e('Naver 개인정보 불러오기 에러: $errorCode, $message');
            //     },
            //     onFailure: (httpStatus, message) {
            //       _logger.e('Naver 서버 에러: $httpStatus, $message');
            //     },
            //     onSuccess: (resultCode, message, response) {
            //       final profile = NaverLoginProfile.fromJson(
            //         response: response,
            //       );
            //       email = profile.email;
            //     },
            //   ),
            // );

            await _appLocalStorage.saveProvider(
              provider: SocialLoginType.naver.type,
            );
            emit(state.copyWith(isLoggedIn: true));
          },
          onError: (errorCode, message) {
            emit(state.copyWith(isLoggedIn: false));
            GlobalFunction.showToast('소셜 로그인 실패!');
            _logger.e('Naver 로그인 에러: $errorCode, $message');
          },
          onFailure: (httpStatus, message) {
            emit(state.copyWith(isLoggedIn: false));
            GlobalFunction.showToast('소셜 로그인 실패!');
            _logger.e('Naver 로그인 실패: $httpStatus, $message');
          },
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoggedIn: false));
      GlobalFunction.showToast('소셜 로그인 실패!');
      _logger.e('Naver 로그인 에러: $e');
    }
  }

  Future<void> handleLogout() async {
    final String? provider = _appLocalStorage.getProvider();
    await fb.FirebaseAuth.instance.signOut();
    if (provider == SocialLoginType.kakao.type) {
      await UserApi.instance.logout();
    } else if (provider == SocialLoginType.google.type ||
        provider == SocialLoginType.apple.type) {
      final fb.FirebaseAuth auth = fb.FirebaseAuth.instance;
      await auth.signOut();
    } else if (provider == SocialLoginType.naver.type) {
      await NaverLoginSDK.logout();
    }
    await _appLocalStorage.clearAll();
  }
}
