import 'package:injectable/injectable.dart';
import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

/// 앱 전역에서 사용될 서비스 로케이터(Service Locator) 인스턴스입니다.
///
/// `get_it` 패키지를 통해 의존성 주입(Dependency Injection)을 관리합니다.
/// 앱의 어느 곳에서든 `getIt<YourRegisteredClass>()` 형태로 등록된 객체를 가져올 수 있습니다.
final GetIt getIt = GetIt.instance;

/// `injectable` 패키지를 사용하여 의존성을 초기화하고 등록합니다.
///
/// 이 함수는 앱이 시작될 때 `main()` 함수 내에서 한 번 호출되어야 합니다.
/// `@InjectableInit` 어노테이션은 `build_runner`가 `get_it_dependancy.config.dart` 파일을 생성하도록 지시하며,
/// 이 파일에는 모든 의존성을 `getIt`에 등록하는 코드가 포함됩니다.
@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
