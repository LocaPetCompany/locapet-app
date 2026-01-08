import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = 'onboarding';
  static const String routePath = '/onboarding';

  /// [OnboardingScreen] 위젯을 생성합니다.
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: StarterAppBar(title: '온보딩'),
      body: Center(child: Text('온보딩 화면', style: TextStyle(fontSize: 24))),
    );
  }
}
