/// 📦 `AppText`
///
/// 앱 전역에서 사용되는 텍스트 상수를 관리하는 클래스입니다.
///
/// 이 클래스는 인스턴스화할 수 없으며, 모든 텍스트 상수는 `static const`로 정의해야 합니다.
/// 매직 스트링(magic string)을 방지하고 텍스트 리소스의 중앙 관리를 통해
/// 유지보수성과 일관성을 높이는 것을 목표로 합니다.
///
/// ## 사용 예시
///
/// ```dart
/// // 1. AppText 클래스에 상수 추가
/// class AppText {
///   AppText._();
///
///   static const String appTitle = 'Flutter Starter Kit';
///   static const String loginButton = '로그인';
/// }
///
/// // 2. 위젯에서 상수 사용
/// Text(AppText.appTitle);
/// ElevatedButton(onPressed: () {}, child: Text(AppText.loginButton));
/// ```
class AppText {
  AppText._();
}
