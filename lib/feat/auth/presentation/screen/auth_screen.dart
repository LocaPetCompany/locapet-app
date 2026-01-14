import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';
import 'package:locapet/export/util.dart';

class AuthScreen extends StatelessWidget {
  static const String routeName = 'auth';
  static const String routePath = '/auth';

  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonSafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(
                height: 375.h,
                width: double.infinity,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(AssetPath.logo, width: 120.w),
                      Gap(12.h),
                      Text(
                        '내 반려동물과 함께하는 모든 곳, 로카펫',
                        style: AppTextStyle.head18B
                            .copyWith(
                              height: 1.4,
                              color: AppColor.primaryColor500,
                            )
                            .withFigmaSpacing(percentage: -2.5),
                      ),
                    ],
                  ),
                ),
              ),
              SocialLoginBtn(
                assetName: AssetPath.google,
                buttonText: 'Google로 계속하기',
                buttonColor: AppColor.whiteColor,
                buttonTextColor: AppColor.textPrimaryColor,
                borderColor: AppColor.grayColor300,
                onTap: () {
                  context.push(CreateProfileScreen.routePath);
                },
              ),
              Gap(8.h),
              SocialLoginBtn(
                assetName: AssetPath.apple,
                buttonText: 'Apple로 계속하기',
                buttonColor: AppColor.blackColor,
                buttonTextColor: AppColor.textOnPrimaryColor,
                borderColor: AppColor.blackColor,
                onTap: () {
                  context.push(CreateProfileScreen.routePath);
                },
              ),
              Gap(8.h),
              GestureDetector(
                onTap: () {
                  context.push(CreateProfileScreen.routePath);
                },
                child: SizedBox(
                  height: 56.h,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      '둘러보기',
                      style: AppTextStyle.label13M.copyWith(
                        color: AppColor.textTertiaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
