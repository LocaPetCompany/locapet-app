import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class EnrollPetScreen extends StatelessWidget {
  static const String routeName = 'enroll_pet';
  static const String routePath = '/enroll_pet';

  /// [EnrollPetScreen] 위젯을 생성합니다.
  const EnrollPetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: StarterAppBar(title: '반려동물 등록하기'),
      body: Center(child: Text('반려동물 등록하기 화면', style: TextStyle(fontSize: 24))),
    );
  }
}
