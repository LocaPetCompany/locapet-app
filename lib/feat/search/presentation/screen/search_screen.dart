import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = 'search';
  static const String routePath = '/search';

  /// [SearchScreen] 위젯을 생성합니다.
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: StarterAppBar(title: '검색'),
      body: Center(child: Text('검색 화면', style: TextStyle(fontSize: 24))),
    );
  }
}
