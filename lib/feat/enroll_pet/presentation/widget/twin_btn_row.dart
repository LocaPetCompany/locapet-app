import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class TwinBtnRow extends StatelessWidget {
  final String label;
  final String leftText;
  final VoidCallback leftOnTap;
  final bool leftIsEnabled;
  final String rightText;
  final VoidCallback rightOnTap;
  final bool rightIsEnabled;

  const TwinBtnRow({
    super.key,
    required this.label,
    required this.leftText,
    required this.leftOnTap,
    required this.leftIsEnabled,
    required this.rightText,
    required this.rightOnTap,
    required this.rightIsEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            child: Text(
              label,
              style: AppTextStyle.label14M.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColor.textTertiaryColor,
              ),
            ),
          ),
          Expanded(
            child: TwinBtn(
              leftText: leftText,
              leftOnTap: leftOnTap,
              leftIsEnabled: leftIsEnabled,
              rightText: rightText,
              rightOnTap: rightOnTap,
              rightIsEnabled: rightIsEnabled,
            ),
          ),
        ],
      ),
    );
  }
}
