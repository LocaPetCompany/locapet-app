import 'package:locapet/core/theme/app_text_style.dart';
import 'package:locapet/export/package.dart';

class SocialLoginBtn extends StatelessWidget {
  final String assetName;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final VoidCallback onTap;

  const SocialLoginBtn({
    super.key,
    required this.assetName,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: buttonColor,
        ),
        child: SizedBox(
          height: 48.h,
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
                  style: AppTextStyle.appTextStyle.copyWith(
                    fontSize: 16.sp,
                    color: buttonTextColor,
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
