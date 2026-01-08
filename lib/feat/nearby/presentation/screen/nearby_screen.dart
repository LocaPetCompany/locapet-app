import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class NearbyScreen extends StatelessWidget {
  static const String routeName = 'my';
  static const String routePath = '/my';

  /// [NearbyScreen] 위젯을 생성합니다.
  const NearbyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: StarterAppBar(title: '근처'),
      body: Center(child: Text('근처 화면', style: TextStyle(fontSize: 24))),
    );
  }
}
