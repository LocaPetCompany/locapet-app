import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

class TwinBtn extends StatelessWidget {
  final String leftText;
  final VoidCallback leftOnTap;
  final bool leftIsEnabled;

  final String rightText;
  final VoidCallback rightOnTap;
  final bool rightIsEnabled;

  const TwinBtn({
    super.key,
    required this.leftText,
    required this.leftOnTap,
    required this.leftIsEnabled,
    required this.rightText,
    required this.rightOnTap,
    required this.rightIsEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: _buildButton(
            text: leftText,
            onTap: leftOnTap,
            isEnabled: leftIsEnabled,
          ),
        ),
        Gap(8.w),
        Expanded(
          child: _buildButton(
            text: rightText,
            onTap: rightOnTap,
            isEnabled: rightIsEnabled,
          ),
        ),
      ],
    );
  }

  Widget _buildButton({
    required String text,
    required VoidCallback onTap,
    required bool isEnabled,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        decoration: BoxDecoration(
          color: isEnabled ? AppColor.grayColor50 : AppColor.whiteColor,
          borderRadius: BorderRadius.circular(10.r),
          border: isEnabled
              ? Border.all(color: AppColor.grayColor600, width: 1.w)
              : Border.all(color: AppColor.grayColor300, width: 1.w),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: AppTextStyle.label14M.copyWith(
            color: isEnabled
                ? AppColor.textPrimaryColor
                : AppColor.textTertiaryColor,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}
