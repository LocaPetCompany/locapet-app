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
    color: AppColor.textPrimaryColor,
    leadingDistribution: TextLeadingDistribution.even,
  );

  /// Head(제목)
  ///
  /// Head/20 B
  ///
  /// fontSize: 20, fontWeight: w700, height: 1.25
  ///
  /// 업체 상세 페이지 업체명, 리뷰 별점
  static final TextStyle head20B = _base.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    height: 1.25,
  );

  /// Head/18 B
  ///
  /// fontSize: 18, fontWeight: w700, height: 1.25
  ///
  /// 앱바 타이틀, 팝업 제목
  static final TextStyle head18B = _base.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    height: 1.25,
  );

  /// Head/16 SB
  ///
  /// fontSize: 16, fontWeight: w600, height: 1.25
  ///
  /// 섹션 제목
  static final TextStyle head16SB = _base.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    height: 1.25,
  );

  /// Head/16 M
  ///
  /// fontSize: 16, fontWeight: w500, height: 1.25, color: AppColor.primaryColor500
  ///
  /// 소개 분류
  static final TextStyle head16M = _base.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    height: 1.25,
    color: AppColor.primaryColor500,
  );

  /// Head/13 SB
  ///
  /// fontSize: 13, fontWeight: w600, height: 1.25
  ///
  /// 소제목
  static final TextStyle head13SB = _base.copyWith(
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    height: 1.25,
  );

  /// Body(일반 글)
  ///
  /// Body/15 R
  ///
  /// fontSize: 15, fontWeight: w400, height: 1.4
  ///
  /// 기본 텍스트 (정보), 팝업 설명
  static final TextStyle body15R = _base.copyWith(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  /// Body/14 SB
  ///
  /// fontSize: 14, fontWeight: w600, height: 1.4
  ///
  /// 리뷰 아이디, 리뷰작성 - 업체명
  static final TextStyle body14SB = _base.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  /// Body/14 R
  ///
  /// fontSize: 14, fontWeight: w400, height: 1.4
  ///
  /// 탭 (기본), 텍스트 인풋, 라디오 버튼 글
  static final TextStyle body14R = _base.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  /// Caption(설명글)
  ///
  /// Caption/12 R
  ///
  /// fontSize: 12, fontWeight: w400, height: 1.4
  ///
  /// 리뷰 반려동물 정보, 리뷰 날짜, 리뷰 작성 - 주소, Footer 글
  static final TextStyle caption12R = _base.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  /// Label(버튼, 칩 등)
  ///
  /// Label/16 B
  ///
  /// fontSize: 16, fontWeight: w700, height: 1.25, color: AppColor.primaryColor500
  ///
  /// L 버튼 라벨
  static final TextStyle label16B = _base.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    height: 1.25,
    color: AppColor.primaryColor500,
  );

  /// Label/16 R
  ///
  /// fontSize: 16, fontWeight: w400, height: 1.25
  ///
  /// 팝업/드롭다운 내 버튼 라벨
  static final TextStyle label16R = _base.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    height: 1.25,
  );

  /// Label/14 SB
  ///
  /// fontSize: 14, fontWeight: w600, height: 1.25
  ///
  /// 인풋 라벨(제목), 탭 (선택O), 업체설명 별점
  static final TextStyle label14SB = _base.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    height: 1.25,
  );

  /// Label/14 M
  ///
  /// fontSize: 14, fontWeight: w500, height: 1.25
  ///
  /// Chip 라벨(h36), 탭 (선택x), S 버튼 라벨
  static final TextStyle label14M = _base.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 1.25,
  );

  /// Label/13 B
  ///
  /// fontSize: 13, fontWeight: w700, height: 1.25
  ///
  /// 팝업 강조 버튼 라벨
  static final TextStyle label13B = _base.copyWith(
    fontSize: 13.sp,
    fontWeight: FontWeight.w700,
    height: 1.25,
  );

  /// Label/13 M
  ///
  /// fontSize: 13, fontWeight: w500, height: 1.25
  ///
  /// 텍스트 버튼
  static final TextStyle label13M = _base.copyWith(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    height: 1.25,
  );

  /// Label/12 M
  ///
  /// fontSize: 12, fontWeight: w500, height: 1.25
  ///
  /// 네비게이션 라벨, 편의시설 라벨, S Chip 라벨 (h28), 리뷰 개별 별점
  static final TextStyle label12M = _base.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    height: 1.25,
  );

  /// Label/10 M
  ///
  /// fontSize: 10, fontWeight: w500, height: 1.25
  ///
  /// 성격 선택지 라벨
  static final TextStyle label10M = _base.copyWith(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    height: 1.25,
  );
}
