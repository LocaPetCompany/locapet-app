import 'package:injectable/injectable.dart';
import 'package:locapet/export/package.dart';

@lazySingleton
class CrashlyticsService {
  final FirebaseCrashlytics _crashlytics;

  CrashlyticsService(this._crashlytics);

  // 에러 기록
  Future<void> recordError(
    dynamic exception,
    StackTrace? stack, {
    dynamic reason,
    Iterable<Object> information = const [],
    bool fatal = false,
  }) async {
    await _crashlytics.recordError(
      exception,
      stack,
      reason: reason,
      information: information,
      fatal: fatal,
    );
  }

  // 로그 메시지 기록
  Future<void> log(String message) async {
    await _crashlytics.log(message);
  }
}
