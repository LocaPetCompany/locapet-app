import 'package:locapet/export/package.dart';

/// 🎨 `AppColor`
///
/// 앱 전체에서 사용되는 색상 상수를 관리하는 클래스입니다.
///
/// 이 클래스는 인스턴스화할 수 없으며, 모든 색상 상수는 `static const`로 정의됩니다.
/// 앱의 디자인 시스템에 따라 색상을 중앙에서 관리하여 일관성을 유지하고
/// 유지보수를 용이하게 합니다.
///
/// ## 사용 예시
///
/// ```dart
/// Container(
///   color: AppColor.primaryColor,
///   child: Text(
///     'Hello World',
///     style: TextStyle(color: AppColor.whiteColor),
///   ),
/// );
/// ```
class AppColor {
  AppColor._();

  /// 앱의 주요 브랜드 색상입니다.
  static const Color primaryColor = Color(0xFF007BFF);

  /// 보조적인 UI 요소에 사용되는 색상입니다.
  static const Color secondaryColor = Color(0xFF6C757D);

  /// 성공 상태를 나타내는 색상입니다. (예: 유효성 검사 통과)
  static const Color successColor = Color(0xFF28A745);

  /// 위험 또는 에러 상태를 나타내는 색상입니다. (예: 삭제, 에러)
  static const Color dangerColor = Color(0xFFDC3545);

  /// 경고 상태를 나타내는 색상입니다.
  static const Color warningColor = Color(0xFFFFC107);

  /// 정보 제공 목적의 UI 요소에 사용되는 색상입니다.
  static const Color infoColor = Color(0xFF17A2B8);

  /// 밝은 배경 또는 UI 요소에 사용되는 색상입니다.
  static const Color lightColor = Color(0xFFF8F9FA);

  /// 어두운 배경 또는 텍스트에 사용되는 색상입니다.
  static const Color darkColor = Color(0xFF343A40);

  /// 순수한 흰색입니다.
  static const Color whiteColor = Color(0xFFFFFFFF);

  /// 순수한 검은색입니다.
  static const Color blackColor = Color(0xFF000000);

  /// 다크 모드용 기본 배경 색상입니다.
  static const Color darkBackground = Color(0xFF121212);

  /// 다크 모드용 카드, 다이얼로그 등 표면 색상입니다.
  static const Color darkSurface = Color(0xFF1E1E1E);

  /// 중간 톤의 회색입니다.
  static const Color grayColor = Color(0xFF6C757D);
}
