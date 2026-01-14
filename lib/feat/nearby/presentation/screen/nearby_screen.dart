import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class NearbyScreen extends StatelessWidget {
  static const String routeName = 'nearby';
  static const String routePath = '/nearby';

  /// [NearbyScreen] 위젯을 생성합니다.
  const NearbyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SubAppBar(title: '근처'),
      body: Center(child: Text('근처 화면', style: TextStyle(fontSize: 24))),
    );
  }
}
