import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = 'onboarding';
  static const String routePath = '/onboarding';

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onNext() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void onSkip() {
    _pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void onComplete(BuildContext context) {
    context.goNamed(AuthScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return CommonSafeArea(
          child: Scaffold(
            body: Column(
              children: [
                SizedBox(
                  height: 56.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Visibility(
                          visible: true,
                          child: Text(
                            '건너뛰기',
                            style: AppTextStyle.label13M.copyWith(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                        Row(
                          children: List.generate(3, (index) {
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: index < 2
                                  ? EdgeInsets.only(right: 8.w)
                                  : EdgeInsets.zero,
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                color: state.pageIndex == index
                                    ? AppColor.primaryColor400
                                    : AppColor.grayColor300,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                            );
                          }),
                        ),
                        Visibility(
                          visible: state.pageIndex < 2,
                          maintainSize: true,
                          maintainAnimation: true,
                          maintainState: true,
                          child: GestureDetector(
                            onTap: onSkip,
                            child: Text(
                              '건너뛰기',
                              style: AppTextStyle.label13M.copyWith(
                                color: AppColor.textTertiaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      context.read<OnboardingCubit>().setPage(index);
                    },
                    children: const [
                      OnboardingFirstWidget(),
                      OnboardingSecondWidget(),
                      OnboardingThirdWidget(),
                    ],
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.w, -2.h),
                        blurRadius: 12,
                        spreadRadius: 0,
                        color: AppColor.blackColor.withValues(alpha: 0.05),
                      ),
                    ],
                  ),
                  child: SizedBox(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                        vertical: 12.h,
                      ),
                      child: GestureDetector(
                        onTap: state.pageIndex == 2
                            ? () => onComplete(context)
                            : onNext,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor400,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            height: 44.h,

                            child: Center(
                              child: Text(
                                state.pageIndex == 2 ? '완료' : '다음',
                                style: AppTextStyle.label16B.copyWith(
                                  color: AppColor.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
