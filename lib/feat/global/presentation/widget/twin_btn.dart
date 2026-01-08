import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

class TwinBtn extends StatelessWidget {
  final String leftText;
  final VoidCallback leftOnTap;
  final String rightText;
  final VoidCallback rightOnTap;

  const TwinBtn({
    super.key,
    required this.leftText,
    required this.leftOnTap,
    required this.rightText,
    required this.rightOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColor.grayColor700,
              borderRadius: BorderRadius.circular(12),
            ),
            child: GestureDetector(
              onTap: leftOnTap,
              child: SizedBox(
                height: 52,
                child: Center(
                  child: Text(
                    leftText,
                    style: const TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Gap(10),
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColor.primaryColor800,
              borderRadius: BorderRadius.circular(12),
            ),
            child: GestureDetector(
              onTap: rightOnTap,
              child: SizedBox(
                height: 52,
                child: Center(
                  child: Text(
                    rightText,
                    style: const TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
