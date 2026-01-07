import 'package:injectable/injectable.dart';
import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

/// 앱 전반에서 사용되는 외부 라이브러리 및 공통 모듈을 주입하는 모듈입니다.
///
/// [injectable] 패키지에 의해 스캔되어 의존성 주입 컨테이너에 등록됩니다.
@module
abstract class RegisterModule {
  /// 네트워크 통신을 위한 [Dio] 인스턴스를 생성하여 주입합니다.
  ///
  /// [AuthInterceptor]를 추가하여 모든 요청에 인증 헤더를 자동으로 추가하고,
  /// 디버그 모드에서는 [LogInterceptor]를 추가하여 요청/응답 로그를 출력합니다.
  @lazySingleton
  Dio dio(AuthInterceptor authInterceptor, AppLogger appLogger) {
    final dio = Dio(
      BaseOptions(
        //TODO: URL 넣어야함
        baseUrl: 'url집어넣기',
        //TODO: 컨텐트타입도 넣어야함
        contentType: 'application/json; charset=utf-8',
      ),
    );

    dio.interceptors.add(authInterceptor);
    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          requestHeader: true,
          responseHeader: true,
          error: true,
        ),
      );
    }
    return dio;
  }

  /// 간단한 키-값 데이터를 저장하기 위한 [SharedPreferences] 인스턴스를 주입합니다.
  ///
  /// [@preResolve] 어노테이션을 사용하여 앱 시작 시 비동기적으로 인스턴스를 미리 생성합니다.
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  /// 토큰 등 민감한 데이터를 안전하게 저장하기 위한 [FlutterSecureStorage] 인스턴스를 주입합니다.
  ///
  /// 안드로이드에서는 암호화된 SharedPreferences를 사용하도록 설정합니다.
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @lazySingleton
  ServerCheckApi serverCheckApi(Dio dio) => ServerCheckApi(dio);
}
