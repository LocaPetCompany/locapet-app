import 'package:injectable/injectable.dart';
import 'package:locapet/export/package.dart';

@lazySingleton
class AnalyticsService {
  final FirebaseAnalytics _analytics;

  AnalyticsService(this._analytics);

  /// 기능별 이용률
  Future<void> logFeatureUsed({
    required String featureName,
    required String nickname,
  }) async {
    await _analytics.logEvent(
      name: 'feature_used',
      parameters: {'feature_name': featureName, 'nickname': nickname},
    );
  }

  /// 재방문 여부 (Retention)
  Future<void> logReturnVisit({required String nickname}) async {
    await _analytics.logEvent(
      name: 'return_visit',
      parameters: {'nickname': nickname},
    );
  }
}
