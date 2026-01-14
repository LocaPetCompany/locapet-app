import 'package:locapet/export/core.dart';
import 'package:locapet/export/package.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await firebaseMessageInit();

  // await dotenv.load();

  // await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);

  // await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(
  //   !kDebugMode,
  // );

  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  await configureDependencies();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColor.whiteColor,
      systemNavigationBarColor: AppColor.whiteColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  // await NaverLoginSDK.initialize(
  //   urlScheme: dotenv.env['NAVER_URL_SCHEME'],
  //   clientId: dotenv.env['NAVER_CLIENT_ID']!,
  //   clientSecret: dotenv.env['NAVER_CLIENT_SECRET']!,
  //   //TODO: 이거 이름 바꾸기
  //   clientName: 'Carl',
  // );

  // KakaoSdk.init(nativeAppKey: dotenv.env['YOUR_NATIVE_APP_KEY']);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter starter kit',
          theme: ThemeData(
            scaffoldBackgroundColor: AppColor.whiteColor,
            splashColor: Colors.transparent,
          ),
          routerConfig: getIt<AppRouter>().router,
        );
      },
    );
  }
}
