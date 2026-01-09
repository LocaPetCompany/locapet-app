import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

class OnboardingSecondWidget extends StatelessWidget {
  const OnboardingSecondWidget({super.key});

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
                  '필터 선택으로\n딱 맞는 장소를 찾을 수 있어요',
                  style: AppTextStyle.head20B,
                  textAlign: TextAlign.center,
                ),
                Gap(12.h),
                Text(
                  '필터 저장으로 더 빠른 검색이 가능해요',
                  style: AppTextStyle.body15R,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Image.asset(AssetPath.onboardingSecond, width: 300.w),
      ],
    );
  }
}
