import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

class OnboardingFirstWidget extends StatelessWidget {
  const OnboardingFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 156.h,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '반려동물 동반장소를 찾아보세요',
                  style: AppTextStyle.head20B,
                  textAlign: TextAlign.center,
                ),
                Gap(12.h),
                Text(
                  '검색 및 카테고리로 원하는 장소를 찾을 수 있어요',
                  style: AppTextStyle.body15R,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Image.asset(AssetPath.onboardingFirst, width: 300.w),
      ],
    );
  }
}
