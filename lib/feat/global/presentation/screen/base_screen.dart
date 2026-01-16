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

  final StatefulNavigationShell navigationShell;

  const BaseScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return CommonSafeArea(
      child: BlocBuilder<NavigationHistoryCubit, NavigationHistoryState>(
        builder: (context, state) {
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) {
              if (didPop) return;

              final cubit = context.read<NavigationHistoryCubit>();
              if (state.history.isNotEmpty) {
                cubit.pop();
                final prevIndex = state.history.last;
                navigationShell.goBranch(prevIndex);
              } else {
                if (navigationShell.currentIndex != 0) {
                  cubit.clear();
                  navigationShell.goBranch(0);
                } else {
                  SystemNavigator.pop();
                }
              }
            },
            child: Scaffold(
              body: navigationShell,
              bottomNavigationBar: BottomNavigationBarWidget(
                currentIndex: navigationShell.currentIndex,
                onTap: (int index) {
                  context.read<NavigationHistoryCubit>().push(
                    navigationShell.currentIndex,
                  );
                  navigationShell.goBranch(
                    index,
                    initialLocation: index == navigationShell.currentIndex,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
