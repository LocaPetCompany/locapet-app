part of 'social_login_cubit.dart';

@freezed
abstract class SocialLoginState with _$SocialLoginState {
  const factory SocialLoginState({@Default(false) bool isLoggedIn}) =
      _SocialLoginState;
}
