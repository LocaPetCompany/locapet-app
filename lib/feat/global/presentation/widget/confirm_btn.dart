import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

class ConfirmBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isActive;

  const ConfirmBtn({
    super.key,
    required this.text,
    required this.onTap,
    this.isActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isActive ? AppColor.primaryColor500 : AppColor.grayColor700,
          borderRadius: BorderRadius.circular(12),
        ),
        child: SizedBox(
          height: 52,
          width: double.infinity,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: AppColor.whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
