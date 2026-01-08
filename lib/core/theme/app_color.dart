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

  // Scaffold Background Color
  static const Color scaffoldBackgroundColor = Color(0xFFF9F9F9);

  // Primary Color
  static const Color primaryColor800 = Color(0xFF54AA6A);
  static const Color primaryColor700 = Color(0xFF61CC7C);
  static const Color primaryColor600 = Color(0xFF74DA8D);
  static const Color primaryColor500 = Color(0xFF7EDF96);
  static const Color primaryColor400 = Color(0xFF93E9A8);
  static const Color primaryColor300 = Color(0xFFA2F2B6);
  static const Color primaryColor200 = Color(0xFFB5F5C5);
  static const Color primaryColor100 = Color(0xFFC5FDD3);
  static const Color primaryColor50 = Color(0xFFE5FFEC);
  static const Color primaryColor40 = Color(0xFFF0FFF4);

  // Gray Color
  static const Color grayColor700 = Color(0xFF1B1B1B);
  static const Color grayColor600 = Color(0xFF2F2F2F);
  static const Color grayColor500 = Color(0xFF585858);
  static const Color grayColor400 = Color(0xFF787878);
  static const Color grayColor300 = Color(0xFF959595);
  static const Color grayColor200 = Color(0xFFB6B6B6);
  static const Color grayColor100 = Color(0xFFD3D3D3);
  static const Color grayColor50 = Color(0xFFEAEAEA);
  static const Color grayColor40 = Color(0xFFF4F4F4);

  // Secondary Color
  static const Color secondaryColor = Color(0xFFF3F344);

  // Black & White Color
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);

  // Text Color
  static const Color textColor = Color(0xFF212121);

  // Deny Color
  static const Color denyColor = Color(0xFFDa7474);
}
