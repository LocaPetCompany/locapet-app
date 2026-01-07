import 'package:flutter/cupertino.dart';
import 'package:locapet/export/core.dart';

class SwitchBtn extends StatelessWidget {
  final bool value;
  final String title;
  final ValueChanged<bool> onChanged;

  const SwitchBtn({
    super.key,
    required this.value,
    required this.title,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyle.appTextStyle.copyWith()),
        CupertinoSwitch(
          value: value,
          onChanged: onChanged,
          activeTrackColor: AppColor.primaryColor,
        ),
      ],
    );
  }
}
