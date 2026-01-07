import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

/// ✒️ `ApptextStyle`
///
/// 앱 전체에서 사용되는 텍스트 스타일을 정의하는 클래스입니다.
///
/// 이 클래스는 인스턴스화할 수 없으며, 모든 텍스트 스타일은 `static` getter로 제공됩니다.
/// 앱의 디자인 시스템에 따라 텍스트 스타일을 중앙에서 관리하여 일관성을 유지하고
/// 유지보수를 용이하게 합니다.
///
/// ## 사용 예시
///
/// ```dart
/// Text(
///   'Hello World',
///   style: ApptextStyle.appTextStyle.copyWith(
///     fontSize: 24,
///     fontWeight: FontWeight.bold,
///     color: AppColor.primaryColor,
///   ),
/// );
/// ```
class AppTextStyle {
  AppTextStyle._();

  /// 앱의 기본 텍스트 스타일입니다.
  ///
  /// 폰트 패밀리, 기본 크기, 두께 등을 정의합니다.
  static TextStyle get appTextStyle {
    return const TextStyle(
      fontFamily: 'Pretendard', // 기본 폰트 패밀리
      fontSize: 16, // 기본 폰트 크기
      fontWeight: FontWeight.w400, // 기본 폰트 두께
      color: AppColor.blackColor, // 기본 텍스트 색상
    );
  }
}
