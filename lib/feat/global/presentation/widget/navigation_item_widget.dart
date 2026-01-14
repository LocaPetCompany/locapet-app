import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class NavigationItemWidget extends StatelessWidget {
  final String label;
  final bool isActive;
  final IconData icon;
  final VoidCallback onTap;

  const NavigationItemWidget({
    super.key,
    required this.label,
    required this.isActive,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onTap,
        child: CommonDecoratedBox(
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF000000).withValues(alpha: 0.08),
                offset: const Offset(0, -1),
                blurRadius: 0.6,
                spreadRadius: -1,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isActive
                    ? AppColor.primaryColor500
                    : AppColor.grayColor700,
              ),
              const Gap(4),
              Text(label, style: AppTextStyle.label12M),
            ],
          ),
        ),
      ),
    );
  }
}
