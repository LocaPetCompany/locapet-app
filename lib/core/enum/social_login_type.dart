/// 소셜 로그인 유형을 정의하는 열거형입니다.
///
/// 각 소셜 로그인 플랫폼을 식별하고, 서버와 통신할 때
/// 일관된 타입 문자열을 사용하기 위해 사용됩니다.
///
/// ## 사용 예시
///
/// ```dart
/// void handleLogin(SocialLoginType loginType) {
///   // 서버로 전송할 로그인 타입 문자열
///   final typeString = loginType.type; // 'GOOGLE', 'KAKAO', ...
///
///   switch (loginType) {
///     case SocialLoginType.google:
///       // Google 로그인 로직 실행
///       break;
///     case SocialLoginType.kakao:
///       // Kakao 로그인 로직 실행
///       break;
///     // ...
///   }
/// }
///
/// handleLogin(SocialLoginType.kakao);
/// ```
enum SocialLoginType {
  /// Google 로그인
  google(type: 'GOOGLE'),

  /// Apple 로그인
  apple(type: 'APPLE'),

  /// Kakao 로그인
  kakao(type: 'KAKAO'),

  /// Naver 로그인
  naver(type: 'NAVER');

  /// [SocialLoginType]의 생성자입니다.
  const SocialLoginType({required this.type});

  /// 서버와 통신할 때 사용되는 로그인 타입 문자열입니다.
  /// (예: 'GOOGLE', 'KAKAO')
  final String type;
}
