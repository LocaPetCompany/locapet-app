import 'package:flutter/material.dart';
import 'package:locapet/export/core.dart';

class SubAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const SubAppBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppTextStyle.head18B),
      automaticallyImplyLeading: true,
      centerTitle: true,
      actions: actions,
      backgroundColor: AppColor.whiteColor,
      surfaceTintColor: AppColor.whiteColor,
      foregroundColor: AppColor.blackColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
