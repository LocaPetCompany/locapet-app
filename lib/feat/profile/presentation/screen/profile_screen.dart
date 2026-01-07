import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = 'profile';
  static const String routePath = '/profile';

  /// [ProfileScreen] 위젯을 생성합니다.
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: StarterAppBar(title: '프로필'),
      body: Center(child: Text('프로필 화면', style: TextStyle(fontSize: 24))),
    );
  }
}
