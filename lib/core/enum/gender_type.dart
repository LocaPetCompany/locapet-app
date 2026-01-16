enum GenderType {
  /// Male
  male(type: '남자'),

  /// Female
  female(type: '여자');

  /// [GenderType]의 생성자입니다.
  const GenderType({required this.type});

  /// 서버와 통신할 때 사용되는 로그인 타입 문자열입니다.
  /// (예: '남자', '여자')
  final String type;
}
