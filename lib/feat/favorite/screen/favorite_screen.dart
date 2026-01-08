import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class FavoriteScreen extends StatelessWidget {
  static const String routeName = 'my';
  static const String routePath = '/my';

  /// [FavoriteScreen] 위젯을 생성합니다.
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: StarterAppBar(title: '찜'),
      body: Center(child: Text('찜 화면', style: TextStyle(fontSize: 24))),
    );
  }
}
