import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class HomeScreen extends StatelessWidget {
  static const String routePath = '/home';
  static const String routeName = 'home';

  /// [HomeScreen] 위젯을 생성합니다.
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StarterAppBar(title: '홈'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [ConfirmBtn(text: '확인', onTap: () {})],
        ),
      ),
    );
  }
}
