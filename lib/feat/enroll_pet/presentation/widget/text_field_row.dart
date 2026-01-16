import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class TextFieldRow extends StatelessWidget {
  final TextEditingController textFieldController;
  final String label;
  final String hintText;
  final TextInputType keyboardType;

  const TextFieldRow({
    super.key,
    required this.textFieldController,
    required this.label,
    required this.hintText,
    required this.keyboardType,
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
            child: CommonTextField(
              controller: textFieldController,
              hintText: hintText,
              keyboardType: keyboardType,
            ),
          ),
        ],
      ),
    );
  }
}
