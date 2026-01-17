import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

class SlideToggleBtn extends StatelessWidget {
  final String leftText;
  final String rightText;
  final bool isLeftSelected;
  final VoidCallback onTapLeft;
  final VoidCallback onTapRight;

  const SlideToggleBtn({
    super.key,
    required this.leftText,
    required this.rightText,
    required this.isLeftSelected,
    required this.onTapLeft,
    required this.onTapRight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 178.w,
      height: 36.h,
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: AppColor.grayColor200,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final buttonWidth = constraints.maxWidth / 2;
          return Stack(
            children: [
              AnimatedAlign(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                alignment: isLeftSelected
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: Container(
                  width: buttonWidth,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.secondaryColor50,
                    borderRadius: BorderRadius.circular(40.r),
                    border: Border.all(
                      color: AppColor.secondaryColor200,
                      width: 1.w,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: onTapLeft,
                      behavior: HitTestBehavior.translucent,
                      child: Center(
                        child: Text(
                          leftText,
                          style: AppTextStyle.body14SB.copyWith(
                            color: isLeftSelected
                                ? AppColor.textPrimaryColor
                                : AppColor.textTertiaryColor,
                            fontWeight: isLeftSelected
                                ? FontWeight.w600
                                : FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: onTapRight,
                      behavior: HitTestBehavior.translucent,
                      child: Center(
                        child: Text(
                          rightText,
                          style: AppTextStyle.body14SB.copyWith(
                            color: !isLeftSelected
                                ? AppColor.textPrimaryColor
                                : AppColor.textTertiaryColor,
                            fontWeight: !isLeftSelected
                                ? FontWeight.w600
                                : FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
