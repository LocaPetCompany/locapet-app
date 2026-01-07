import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

/// `StatefulShellRoute`를 위한 기본 UI 셸(Shell) 위젯입니다.
///
/// 이 위젯은 `Scaffold`를 사용하여 전체적인 레이아웃을 구성하며,
/// `BottomNavigationBar`를 통해 각 내비게이션 탭으로의 이동을 처리합니다.
/// 본문(`body`)에는 `navigationShell`이 표시되어 현재 선택된 탭의 화면을 렌더링합니다.
class BaseScreen extends StatelessWidget {
  static const String routeName = 'base';
  static const String routePath = '/';

  /// `go_router`의 `StatefulShellRoute`에서 제공하는 내비게이션 셸입니다.
  ///
  /// 현재 탭의 인덱스(`currentIndex`)와 탭 간 이동을 위한 `goBranch` 메소드를 포함하고 있어
  /// 탭 상태를 관리하는 데 사용됩니다.
  final StatefulNavigationShell navigationShell;

  /// [BaseScreen] 위젯을 생성합니다.
  ///
  /// [navigationShell]은 필수 파라미터입니다.
  const BaseScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return CommonSafeArea(
      child: Scaffold(
        body: navigationShell,
        bottomNavigationBar: BottomNavigationBarWidget(
          currentIndex: navigationShell.currentIndex,
          onTap: (int index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
        ),
      ),
    );
  }
}
