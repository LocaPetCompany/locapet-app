import 'package:injectable/injectable.dart';
import 'package:locapet/export/package.dart';

/// 앱 전반에서 일관된 로깅을 제공하기 위한 싱글톤 로거 클래스입니다.
///
/// [logger] 패키지를 래핑하여 사용하며, [injectable]을 통해
/// `@lazySingleton`으로 주입받아 사용할 수 있습니다.
@lazySingleton
class AppLogger {
  final Logger _logger;

  /// [AppLogger] 인스턴스를 생성하고 내부 [Logger]를 초기화합니다.
  ///
  /// [PrettyPrinter]를 사용하여 개발 중 로그를 보기 쉽게 출력합니다.
  AppLogger()
    : _logger = Logger(
        printer: PrettyPrinter(
          methodCount: 2, // 표시할 메서드 호출 스택 수
          errorMethodCount: 8, // 에러 발생 시 표시할 메서드 호출 스택 수
          lineLength: 120, // 로그 라인의 최대 길이
          colors: true, // 로그 레벨에 따라 색상 적용
          printEmojis: true, // 로그 레벨에 맞는 이모지 출력
        ),
      );

  /// 내부 [Logger] 인스턴스에 직접 접근할 수 있도록 노출합니다.
  Logger get logger => _logger;

  /// Trace 레벨의 로그를 출력합니다. (가장 상세한 정보)
  ///
  /// [message]: 로그 메시지
  /// [error]: 관련된 예외 객체 (선택 사항)
  /// [stackTrace]: 스택 트레이스 (선택 사항)
  void t(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _logger.t(message, error: error, stackTrace: stackTrace);

  /// Debug 레벨의 로그를 출력합니다. (개발 중 디버깅 정보)
  void d(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _logger.d(message, error: error, stackTrace: stackTrace);

  /// Info 레벨의 로그를 출력합니다. (일반적인 정보성 메시지)
  void i(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _logger.i(message, error: error, stackTrace: stackTrace);

  /// Warning 레벨의 로그를 출력합니다. (잠재적인 문제에 대한 경고)
  void w(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _logger.w(message, error: error, stackTrace: stackTrace);

  /// Error 레벨의 로그를 출력합니다. (오류 상황)
  void e(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _logger.e(message, error: error, stackTrace: stackTrace);

  /// Fatal 레벨의 로그를 출력합니다. (앱 동작을 중단시킬 수 있는 심각한 오류)
  void f(dynamic message, [dynamic error, StackTrace? stackTrace]) =>
      _logger.f(message, error: error, stackTrace: stackTrace);
}
