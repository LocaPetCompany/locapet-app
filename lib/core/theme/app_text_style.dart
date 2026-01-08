import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

/// ✒️ `AppTextStyle`
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
///   '타이틀 입니다',
///   style: AppTextStyle.title,
/// );
/// ```
class AppTextStyle {
  AppTextStyle._();

  static const String _fontFamily = 'Pretendard';

  static const TextStyle _base = TextStyle(
    fontFamily: _fontFamily,
    color: AppColor.textColor,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: -0.05,
  );

  /// Title
  /// fontSize: 24, fontWeight: w600
  static final TextStyle title = _base.copyWith(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );

  /// Subtitle 1
  /// fontSize: 20, fontWeight: w600
  static final TextStyle subtitle1 = _base.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );

  /// Subtitle 2
  /// fontSize: 20, fontWeight: w600
  static final TextStyle subtitle2 = _base.copyWith(fontSize: 20.sp);

  /// Headline 1
  /// fontSize: 18, fontWeight: w600
  static final TextStyle headline1 = _base.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );

  /// Headline 2
  /// fontSize: 18
  static final TextStyle headline2 = _base.copyWith(fontSize: 18.sp);

  /// Sub-headline 1
  /// fontSize: 16, fontWeight: w600
  static final TextStyle subHeadline1 = _base.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );

  /// Sub-headline 2
  /// fontSize: 16
  static final TextStyle subHeadline2 = _base.copyWith(fontSize: 16.sp);

  /// Body 1
  /// fontSize: 14, fontWeight: w600
  static final TextStyle body1 = _base.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  /// Body 2
  /// fontSize: 14
  static final TextStyle body2 = _base.copyWith(fontSize: 14.sp);

  /// Caption
  /// fontSize: 12
  static final TextStyle caption = _base.copyWith(fontSize: 12.sp);
}
