// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:locapet/core/di/app_logger.dart' as _i260;
import 'package:locapet/core/di/auth_interceptor.dart' as _i876;
import 'package:locapet/core/di/register_module.dart' as _i187;
import 'package:locapet/core/router/app_router.dart' as _i802;
import 'package:locapet/core/services/analytics_service.dart' as _i438;
import 'package:locapet/core/services/crashlytics_service.dart' as _i885;
import 'package:locapet/export/core.dart' as _i687;
import 'package:locapet/export/feat.dart' as _i404;
import 'package:locapet/export/package.dart' as _i234;
import 'package:locapet/feat/global/data/data_source/local/app_local_storage.dart'
    as _i156;
import 'package:locapet/feat/global/data/repository/server_check_repository_impl.dart'
    as _i694;
import 'package:locapet/feat/global/domain/usecase/post_current_server_version_usecase.dart'
    as _i1046;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i260.AppLogger>(() => _i260.AppLogger());
    await gh.lazySingletonAsync<_i234.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i234.FlutterSecureStorage>(
      () => registerModule.secureStorage,
    );
    gh.lazySingleton<_i156.AppLocalStorage>(
      () => _i156.AppLocalStorage(
        gh<_i234.SharedPreferences>(),
        gh<_i234.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i802.AppRouter>(
      () => _i802.AppRouter(gh<_i687.AppLogger>()),
    );
    gh.lazySingleton<_i885.CrashlyticsService>(
      () => _i885.CrashlyticsService(gh<_i234.FirebaseCrashlytics>()),
    );
    gh.lazySingleton<_i438.AnalyticsService>(
      () => _i438.AnalyticsService(gh<_i234.FirebaseAnalytics>()),
    );
    gh.lazySingleton<_i876.AuthInterceptor>(
      () => _i876.AuthInterceptor(
        gh<_i687.AppLogger>(),
        gh<_i404.AppLocalStorage>(),
        gh<_i687.AppRouter>(),
      ),
    );
    gh.lazySingleton<_i234.Dio>(
      () => registerModule.dio(
        gh<_i687.AuthInterceptor>(),
        gh<_i687.AppLogger>(),
      ),
    );
    gh.lazySingleton<_i404.ServerCheckApi>(
      () => registerModule.serverCheckApi(gh<_i234.Dio>()),
    );
    gh.lazySingleton<_i404.ServerCheckRepository>(
      () => _i694.ServerCheckRepositoryImpl(gh<_i404.ServerCheckApi>()),
    );
    gh.lazySingleton<_i1046.PostCurrentServerVersionUsecase>(
      () => _i1046.PostCurrentServerVersionUsecase(
        gh<_i404.ServerCheckRepository>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i187.RegisterModule {}
