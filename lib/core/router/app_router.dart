import 'package:injectable/injectable.dart';
import 'package:locapet/export/core.dart';
import 'package:locapet/export/feat.dart';
import 'package:locapet/export/package.dart';

@lazySingleton
class AppRouter {
  final AppLogger _logger;
  late GoRouter router;

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
              path: OnboardingScreen.routePath,
              name: OnboardingScreen.routeName,
              builder: (context, state) {
                _logger.i('${state.uri}으로 이동!!!');
                return const OnboardingScreen();
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
            GoRoute(
              path: EnrollPetScreen.routePath,
              name: EnrollPetScreen.routeName,
              parentNavigatorKey: rootNavigatorKey,
              builder: (context, state) {
                _logger.i('${state.uri}으로 이동!!!');
                return const EnrollPetScreen();
              },
            ),
            StatefulShellRoute.indexedStack(
              builder: (context, state, navigationShell) {
                return BaseScreen(navigationShell: navigationShell);
              },
              branches: [
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
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: NearbyScreen.routePath,
                      name: NearbyScreen.routeName,
                      builder: (context, state) {
                        _logger.i('${state.uri}으로 이동!!!');
                        return const NearbyScreen();
                      },
                    ),
                  ],
                ),
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: FavoriteScreen.routePath,
                      name: FavoriteScreen.routeName,
                      builder: (context, state) {
                        _logger.i('${state.uri}으로 이동!!!');
                        return const FavoriteScreen();
                      },
                    ),
                  ],
                ),
                StatefulShellBranch(
                  routes: [
                    GoRoute(
                      path: MyScreen.routePath,
                      name: MyScreen.routeName,
                      builder: (context, state) {
                        _logger.i('${state.uri}으로 이동!!!');
                        return const MyScreen();
                      },
                    ),
                  ],
                ),
              ],
            ),
            GoRoute(
              path: SearchScreen.routePath,
              name: SearchScreen.routeName,
              parentNavigatorKey: rootNavigatorKey,
              builder: (context, state) {
                _logger.i('${state.uri}으로 이동!!!');
                return const SearchScreen();
              },
            ),
          ],
        ),
      ],
    );
  }
}
