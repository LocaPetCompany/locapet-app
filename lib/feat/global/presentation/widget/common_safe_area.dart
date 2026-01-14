import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class CommonSafeArea extends StatelessWidget {
  final Widget child;

  const CommonSafeArea({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: CommonDecoratedBox(
        decoration: const BoxDecoration(color: AppColor.whiteColor),
        child: SafeArea(child: child),
      ),
    );
  }
}
