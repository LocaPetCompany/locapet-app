import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(thickness: 6, color: AppColor.grayColor100);
  }
}
