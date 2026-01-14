import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

class BottomContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const BottomContainer({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
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
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: GestureDetector(
            onTap: onTap,
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
                    text,
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
    );
  }
}
