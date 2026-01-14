import 'package:locapet/core/theme/app_text_style.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class SocialLoginBtn extends StatelessWidget {
  final String assetName;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final Color borderColor;
  final VoidCallback onTap;

  const SocialLoginBtn({
    super.key,
    required this.assetName,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
    required this.borderColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CommonDecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(width: 1.0.w, color: borderColor),
          color: buttonColor,
        ),
        height: 52.h,
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: SvgPicture.asset(assetName),
              ),
            ),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                buttonText,
                style: AppTextStyle.head16SB.copyWith(color: buttonTextColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
