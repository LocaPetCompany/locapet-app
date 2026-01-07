import 'package:injectable/injectable.dart';
import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

/// `go_router`를 사용한 애플리케이션 라우터입니다.
///
/// 이 클래스는 전체 애플리케이션의 내비게이션 경로를 정의하고 관리하는 역할을 합니다.
/// 지연된 싱글톤(lazy singleton)으로 등록되어 앱의 생명주기 동안 단일 인스턴스가 사용됩니다.
@lazySingleton
class AppRouter {
  /// 내비게이션 이벤트 및 기타 라우터 관련 정보를 기록하기 위한 로거입니다.
  final AppLogger _logger;

  /// 설정이 완료된 [GoRouter] 인스턴스입니다.
  ///
  /// 이 라우터는 [MaterialApp.router]에 의해 내비게이션을 처리하는 데 사용됩니다.
  late GoRouter router;

  /// [AppRouter]의 인스턴스를 생성하고 [GoRouter]를 초기화합니다.
  ///
  /// 라우터는 [StatefulShellRoute]를 사용하여 각 탭의 상태를 유지하는
  /// 하단 내비게이션 바 구조를 생성하도록 설정됩니다.
  AppRouter(this._logger) {
    final rootNavigatorKey = GlobalKey<NavigatorState>();

    router = GoRouter(
      initialLocation: SplashScreen.routePath,
      navigatorKey: rootNavigatorKey,
      routes: [
        ShellRoute(
          builder: (context, state, child) {
            return BlocProvider(
              create: (context) => NetworkCheckCubit(),
              child: NetworkErrorWrapper(child: child),
            );
          },
          routes: [
            GoRoute(
              path: NetworkErrorScreen.routePath,
              name: NetworkErrorScreen.routeName,
              builder: (context, state) {
                _logger.i('${state.uri}으로 이동!!!');
                return const NetworkErrorScreen();
              },
            ),
            GoRoute(
              path: SplashScreen.routePath,
              name: SplashScreen.routeName,
              builder: (context, state) {
                _logger.i('${state.uri}으로 이동!!!');
                return const SplashScreen();
              },
            ),
            GoRoute(
              path: AuthScreen.routePath,
              name: AuthScreen.routeName,
              builder: (context, state) {
                _logger.i('${state.uri}으로 이동!!!');
                return const AuthScreen();
              },
            ),
            StatefulShellRoute.indexedStack(
              builder: (context, state, navigationShell) {
                return BaseScreen(navigationShell: navigationShell);
              },
              branches: [
                /// 홈 탭에 대한 내비게이션 브랜치입니다.
                /// 경로는 `/home`이며 [HomeScreen]을 렌더링합니다.
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: HomeScreen.routePath,
                      name: HomeScreen.routeName,
                      builder: (context, state) {
                        _logger.i('${state.uri}으로 이동!!!');
                        return const HomeScreen();
                      },
                    ),
                  ],
                ),

                /// 검색 탭에 대한 내비게이션 브랜치입니다.
                /// 경로는 `/search`이며 [SearchScreen]을 렌더링합니다.
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: SearchScreen.routePath,
                      name: SearchScreen.routeName,
                      builder: (context, state) {
                        _logger.i('${state.uri}으로 이동!!!');
                        return const SearchScreen();
                      },
                    ),
                  ],
                ),

                /// 프로필 탭에 대한 내비게이션 브랜치입니다.
                /// 경로는 `/profile`이며 [ProfileScreen]을 렌더링합니다.
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: ProfileScreen.routePath,
                      name: ProfileScreen.routeName,
                      builder: (context, state) {
                        _logger.i('${state.uri}으로 이동!!!');
                        return const ProfileScreen();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
