import 'package:locapet/export/package.dart';

Future<String?> firebaseMessageInit() async {
  await Firebase.initializeApp(
    // TODO: 파베 추가후 살리기
    // options: DefaultFirebaseOptions.currentPlatform
  );

  // FCM 메시지 핸들러 등록
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  // 권한 요청 (iOS 및 Android 13+)
  await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  // IOS 포그라운드 알림 설정 (선택 사항)
  await messaging.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  // 포그라운드 알림 리스너
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    debugPrint('포그라운드 메시지 수신:');
    debugPrint('메시지 데이터: ${message.data}');

    if (message.notification != null) {
      debugPrint('메시지에 알림 포함: ${message.notification!.title}');
    }
  });

  // 백그라운드 알림 클릭 리스너
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    debugPrint('알림 클릭: ${message.data}');
  });

  // FCM 토큰 가져오기(추후 서버로 보내야함)
  final fcmToken = await messaging.getToken();
  debugPrint('FCM 토큰: $fcmToken');

  messaging.onTokenRefresh.listen((fcmToken) {
    debugPrint('새 FCM 토큰: $fcmToken');
  });

  return fcmToken;
}
