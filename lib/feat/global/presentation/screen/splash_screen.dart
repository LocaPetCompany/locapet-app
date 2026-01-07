import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';
  static const String routePath = '/splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        context.goNamed(HomeScreen.routeName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
