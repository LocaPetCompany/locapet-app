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

  // Primary Color
  static const Color primaryColor500 = Color(0xFFF00029);
  static const Color primaryColor400 = Color(0xFFF33354);
  static const Color primaryColor50 = Color(0xFFFee6EA);

  // Secondary Color
  static const Color secondaryColor500 = Color(0xFFFFC300);
  static const Color secondaryColor200 = Color(0xFFFFE38A);
  static const Color secondaryColor50 = Color(0xFFFFF9E6);

  // Gray Color
  static const Color grayColor900 = Color(0xFF212121);
  static const Color grayColor800 = Color(0xFF424242);
  static const Color grayColor700 = Color(0xFF616161);
  static const Color grayColor600 = Color(0xFF757575);
  static const Color grayColor500 = Color(0xFF9E9E9E);
  static const Color grayColor400 = Color(0xFFBDBDBD);
  static const Color grayColor300 = Color(0xFFE0E0E0);
  static const Color grayColor200 = Color(0xFFEEEEEE);
  static const Color grayColor100 = Color(0xFFF5F5F5);
  static const Color grayColor50 = Color(0xFFFAFAFA);

  // Black & White Color
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);

  // Text Color
  static const Color textPrimaryColor = grayColor900;
  static const Color textSecondaryColor = grayColor700;
  static const Color textTertiaryColor = grayColor500;
  static const Color textOnPrimaryColor = whiteColor;

  // Red & Blue & Green Color
  static const Color redColor = Color(0xFFFF383C);
  static const Color blueColor = Color(0xFF0088FF);
  static const Color greenColor = Color(0xFF34C759);

  // Scaffold Background Color
  static const Color scaffoldBackgroundColor = whiteColor;
}
