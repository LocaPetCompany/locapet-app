import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class MyScreen extends StatelessWidget {
  static const String routeName = 'my';
  static const String routePath = '/my';

  /// [MyScreen] 위젯을 생성합니다.
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SubAppBar(title: '마이'),
      body: Center(child: Text('마이 화면', style: TextStyle(fontSize: 24))),
    );
  }
}
