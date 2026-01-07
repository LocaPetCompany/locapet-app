import 'package:injectable/injectable.dart';
import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

/// HTTP 요청/응답에서 사용될 헤더 키를 관리합니다.
abstract class _HttpHeaderKeys {
  static const authorization = 'Authorization';
  static const authorizationRefresh = 'Authorization-Refresh';
}

/// Dio 요청을 가로채 인증 토큰을 관리하는 인터셉터입니다.
///
/// - 모든 발신 요청에 자동으로 액세스 토큰을 헤더에 추가합니다.
/// - API 응답이 401 (Unauthorized) 오류일 경우, 리프레시 토큰을 사용하여 새로운 액세스 토큰을 요청합니다.
/// - 토큰 재발급에 성공하면, 원래의 요청을 새로운 토큰으로 재시도합니다.
/// - 토큰 재발급에 실패하면, 모든 로컬 데이터를 삭제하고 사용자를 홈 화면으로 보냅니다.
@lazySingleton
class AuthInterceptor extends Interceptor {
  final AppLogger _logger;
  final AppLocalStorage _localStorage;
  final AppRouter _router;

  /// 토큰 재발급 전용으로 사용되는 별도의 Dio 인스턴스입니다.
  ///
  /// 이 인스턴스는 [AuthInterceptor]를 포함하지 않아,
  /// 토큰 재발급 요청이 무한 루프에 빠지는 것을 방지합니다.
  final Dio _refreshDio = Dio();

  /// [AuthInterceptor]를 생성합니다.
  ///
  /// 필요한 의존성은 [injectable]을 통해 주입됩니다.
  AuthInterceptor(this._logger, this._localStorage, this._router);

  /// 요청을 보내기 전에 호출됩니다.
  ///
  /// 저장된 액세스 토큰이 있는 경우, 요청 헤더에 'Authorization'을 추가합니다.
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await _localStorage.getAccessToken();

    if (accessToken != null && accessToken.isNotEmpty) {
      options.headers[_HttpHeaderKeys.authorization] = 'Bearer $accessToken';
    } else {
      _logger.w('요청 헤더에 추가할 액세스 토큰이 없습니다.');
    }

    _logger.d('Dio Request:${options.method} ${options.uri}');
    return handler.next(options);
  }

  /// 응답을 받은 후에 호출됩니다.
  ///
  /// 성공적인 응답을 로그로 남깁니다.
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.d(
      'Dio Response:${response.statusCode} ${response.requestOptions.uri}',
    );
    return handler.next(response);
  }

  /// 에러가 발생했을 때 호출됩니다.
  ///
  /// 401 에러가 발생하면 토큰 재발급 로직을 수행합니다.
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // 401 (Unauthorized) 에러가 아니면, 그대로 에러를 전파합니다.
    if (err.response?.statusCode != 401) {
      return handler.next(err);
    }

    _logger.i('Access Token 만료(401). 토큰 재발급을 시도합니다.');

    try {
      final refreshToken = await _localStorage.getRefreshToken();

      // 저장된 리프레시 토큰이 없으면, 재발급이 불가능하므로 로그아웃 처리합니다.
      if (refreshToken == null || refreshToken.isEmpty) {
        _logger.e('저장된 리프레시 토큰이 없어 즉시 로그아웃 처리합니다.');
        await _localStorage.clearAll();
        _router.router.goNamed(HomeScreen.routeName);
        return handler.reject(err);
      }

      // 토큰 재발급 API를 호출합니다.
      final refreshResponse = await _refreshDio.post(
        // TODO: 실제 토큰 재발급 API 엔드포인트로 교체해야 합니다.
        '/auth/refresh',
        options: Options(
          // TODO: 서버의 재발급 정책에 따라 헤더를 수정해야 합니다.
          headers: {
            _HttpHeaderKeys.authorizationRefresh: 'Bearer $refreshToken',
          },
        ),
      );

      // TODO: 서버 응답에 따라 새로운 액세스 토큰을 파싱하는 로직을 확인해야 합니다.
      final newAccessToken = refreshResponse.data['newAccessToken'];
      await _localStorage.saveAccessToken(accessToken: newAccessToken);

      _logger.i('토큰 재발급 성공. 원래 요청을 재시도합니다.');

      // 원래의 요청 옵션을 복사하여 새로운 토큰으로 헤더를 교체합니다.
      final options = err.requestOptions;
      options.headers[_HttpHeaderKeys.authorization] = 'Bearer $newAccessToken';

      // Dio 인스턴스를 getIt으로 다시 가져와 요청을 재시도합니다.
      // 이는 AuthInterceptor -> Dio -> AuthInterceptor... 의 순환 참조를 피하기 위함입니다.
      // 재시도하는 요청은 새로운 토큰이 적용되어 정상 처리될 것으로 기대됩니다.
      final response = await getIt<Dio>().fetch(options);

      // 재시도한 요청의 성공적인 응답을 반환합니다.
      return handler.resolve(response);
    } catch (e) {
      _logger.e('토큰 재발급 과정에서 에러 발생 $e. 강제 로그아웃 처리합니다.');

      // 재발급 과정에서 어떤 에러든 발생하면, 안전을 위해 로컬 데이터를 모두 삭제하고 로그아웃 처리합니다.
      await _localStorage.clearAll();
      _router.router.goNamed(HomeScreen.routeName);
      return handler.reject(err);
    }
  }
}
