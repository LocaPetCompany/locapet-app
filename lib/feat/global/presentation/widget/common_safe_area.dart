import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

class CommonSafeArea extends StatelessWidget {
  final Widget child;

  const CommonSafeArea({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: DecoratedBox(
        decoration: const BoxDecoration(color: AppColor.whiteColor),
        child: SizedBox(child: SafeArea(child: child)),
      ),
    );
  }
}
