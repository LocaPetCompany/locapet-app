enum PetType {
  /// Dog
  dog(type: '강아지'),

  /// Cat
  cat(type: '고양이');

  /// [PetType]의 생성자입니다.
  const PetType({required this.type});

  /// 서버와 통신할 때 사용되는 로그인 타입 문자열입니다.
  /// (예: '강아지', '고양이')
  final String type;
}
