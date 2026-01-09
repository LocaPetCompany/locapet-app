import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

class OnboardingThirdWidget extends StatelessWidget {
  const OnboardingThirdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 156.h,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '내 반려동물과 비슷한\n리뷰만 찾아볼 수 있어요',
                  style: AppTextStyle.head20B,
                  textAlign: TextAlign.center,
                ),
                Gap(12.h),
                Text(
                  '나의 대표 반려동물 기준의 리뷰만 확인해요',
                  style: AppTextStyle.body15R,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Image.asset(AssetPath.onboardingThird, width: 300.w),
      ],
    );
  }
}
