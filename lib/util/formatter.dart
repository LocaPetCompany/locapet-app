import 'package:intl/intl.dart';

/// 숫자를 세 자리마다 쉼표(,)로 구분하는 포맷터입니다.
final _f = NumberFormat('#,###');

/// `int` 타입에 숫자 포맷팅 관련 기능을 추가하는 확장입니다.
extension NumberFormatting on int {
  /// 숫자를 세 자리마다 쉼표가 있는 문자열로 변환합니다. (예: 1000 -> "1,000")
  String numberFormat() => _f.format(this);

  /// 숫자를 포맷하고 "포인트" 단위를 붙입니다.
  ///
  /// [positive]가 `false`이면 앞에 음수(-) 기호를 붙입니다.
  String numberFormatWithP({bool positive = true}) =>
      (positive) ? '${_f.format(this)}포인트' : '-${_f.format(this)}포인트';

  /// 숫자를 포맷하고 "원" 단위를 붙입니다.
  ///
  /// [positive]가 `true`이면 앞에 양수(+) 기호를,
  /// [negative]가 `true`이면 앞에 음수(-) 기호를 붙입니다.
  String numberFormatWithMoney({
    bool positive = false,
    bool negative = false,
  }) => (positive)
      ? '+${_f.format(this)}원'
      : (negative)
      ? '-${_f.format(this)}원'
      : '${_f.format(this)}원';

  /// 숫자를 포맷하고 지정된 [unit] 단위를 붙입니다.
  ///
  /// [positive]가 `true`이면 앞에 양수(+) 기호를 붙입니다.
  String numberFormatWithUnit(String unit, {bool positive = false}) =>
      (positive) ? '+${_f.format(this)}$unit' : '${_f.format(this)}$unit';

  /// 숫자 뒤에 퍼센트(%) 기호를 붙입니다.
  String get disPercentage => '$this%';

  /// 할인율([per])을 적용하여 할인 금액을 계산하고, 지정된 형식의 문자열로 반환합니다.
  ///
  /// 계산 로직: `(금액 / 할인율 / 10)`의 정수 부분을 10의 단위로 내림합니다.
  /// [limit]을 설정하여 최대 할인 금액을 제한할 수 있습니다.
  String discountedPrice(int per, {int limit = 99999999}) {
    int price = ((this ~/ per / 10).floor() * 10).toInt();
    price = limit == 0
        ? price
        : price > limit
        ? limit
        : price;
    return '${price.numberFormatWithMoney()} 할인';
  }
}

/// `String` 타입에 정규식을 이용한 유효성 검사 및 형식 변환 기능을 추가하는 확장입니다.
extension RegexString on String {
  /// 문자열에서 숫자가 아닌 모든 문자를 제거하고 `int`로 변환합니다.
  int toInt() => int.parse(replaceAll(RegExp(r'\D'), ''));

  /// 휴대폰 번호 형식(010으로 시작하는 11자리 숫자)인지 확인합니다.
  bool isPhone() =>
      RegExp(r'^010\d{8}$') // RegExp(r'^010\d{4}\d{4}$')
          .hasMatch(this);

  /// 휴대폰 번호 형식(010으로 시작하는 11자리 숫자)인지 확인합니다.
  bool isPhoneOnlyNumber() => RegExp(r'^(010)\d{4}\d{4}$').hasMatch(this);

  /// 휴대폰 번호 형식의 문자열에 하이픈(-)을 추가합니다. (예: "01012345678" -> "010-1234-5678")
  String phoneWithSeparator() => split(
    '',
  ).reduce((v, e) => (v.length == 3 || v.length == 8) ? '$v-$e' : '$v$e');

  /// 주민등록번호 앞자리(YYMMDD) 형식인지 확인합니다.
  bool isPid() => RegExp(
    r'^(\d\d)(0[1-9]|1[0-2])(0[0-9]|1[0-9]|2[0-9]|3[0-1])$',
  ).hasMatch(this);

  /// 주민등록번호 뒷자리의 첫 번째 숫자(1, 2, 3, 4) 형식인지 확인합니다.
  bool isPidBack() => RegExp(r'^[1|2|3|4]$').hasMatch(this);

  /// 6자리 숫자(인증번호 등) 형식인지 확인합니다.
  bool messageCheck() => RegExp(r'^[\d]{6}$').hasMatch(this);

  /// 이메일 형식인지 확인합니다.
  bool emailCheck() =>
      RegExp(r'^[\w-_\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);

  /// 닉네임 형식(2~10자, 한글/영문/숫자/밑줄)인지 확인합니다.
  bool nicknameCheck() => RegExp(r'^[\w가-힣]{2,10}$').hasMatch(this);

  /// 비밀번호 형식(8~20자, 특수문자 1개 이상 포함)인지 확인합니다.
  bool passwordCheck() =>
      RegExp(r'^(?=.*[#?!@$%^&*-])[\w#?!@$%^&*-]{8,20}$').hasMatch(this);

  /// 이름 형식(2~5자, 한글/영문)인지 확인합니다.
  bool isName() => RegExp(r'^[가-힣a-zA-Z]{2,5}$').hasMatch(this);

  /// 특정 주문 ID 형식(22자리 문자 + '==')인지 확인합니다.
  bool isOrder() => RegExp(r'^.{22}==$').hasMatch(this);

  /// 하이퍼링크(URL) 형식인지 확인합니다.
  bool isHyperlink() => RegExp(
    r'^(http[s]?|ftp):\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}|^www\.[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}',
    caseSensitive: false,
  ).hasMatch(this);

  /// 문자열에서 URL을 추출합니다.
  ///
  /// 만약 추출된 URL이 'www.'로 시작하고 'http' 프로토콜이 없다면 'https://'를 추가하여 반환합니다.
  String? extractUrl() {
    final match = RegExp(
      r'(http[s]?|ftp):\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}|www\.[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}',
      caseSensitive: false,
    ).firstMatch(this)?.group(0);

    if (match != null) {
      // 'www.'로 시작하는데 'http' 또는 'ftp'가 없으면 'https://'를 추가합니다.
      if (!match.startsWith(RegExp(r'http[s]?://|ftp://'))) {
        return 'https://$match';
      }
    }

    return match;
  }
}

/// `List` 타입에 유틸리티 기능을 추가하는 확장입니다.
extension ListUtils<T> on List<T> {
  /// 리스트의 첫 번째 또는 마지막 요소를 제거한 새로운 리스트를 반환합니다.
  /// [first]가 `true`이면 첫 번째 요소를, 아니면 마지막 요소를 제거합니다.
  List<T> pop({bool first = false}) =>
      where((l) => l != ((first) ? this.first : last)).toList();

  /// 리스트의 길이를 [num] 이하로 줄입니다. 초과하는 요소는 뒤에서부터 제거됩니다.
  List<T> mySlice(int num) {
    while (true) {
      if (length <= num) break;
      removeLast();
    }
    return this;
  }
}

/// nullable `int` 타입에 유틸리티 기능을 추가하는 확장입니다.
extension IntUtils on int? {
  /// 주어진 [key]와 현재 값(null이면 0)으로 구성된 맵을 반환합니다.
  Map<String, int> simpleMap(String key) => {key: (this ?? 0)};

  /// 값이 null이면 0을, 아니면 해당 값을 반환합니다.
  int isNumberOrZero() => this == null ? 0 : this!;

  /// 초(seconds) 단위의 숫자를 '분:초' (MM:SS) 형식의 문자열로 변환합니다.
  String intToMinutes() {
    if (this != null) {
      final f = NumberFormat('00');
      return '${f.format(this! ~/ 60)}:${f.format(this! % 60)}';
    } else {
      return '00:00';
    }
  }

  /// 숫자를 두 자리로 포맷팅합니다. (예: 7 -> "07")
  String get paddingTime {
    if (this != null) {
      final f = NumberFormat('00');
      return f.format(this);
    } else {
      return '00';
    }
  }

  /// 초(seconds) 단위의 숫자를 '분:초' (MM:SS) 형식의 문자열로 변환합니다.
  String get toTime {
    if (this == null) return '';
    final minutes = this! ~/ 60;
    final seconds = this! % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  /// 주어진 숫자 [a]와 비교하여 더 큰 값을 반환합니다.
  int getBigger(int a) => (this! > a) ? this! : a;

  /// 주어진 숫자 [other]와 비교하여 더 작은 값을 반환합니다.
  int getSmaller(int other) => (this! > other) ? other : this!;

  /// 주어진 숫자 [other]와 같으면 0을 반환하고, 아니면 자신의 값을 반환합니다.
  /// [zero]가 `true`이면 같아도 자신의 값을 반환합니다.
  int sameOrIt(int other, {bool zero = false}) =>
      (this! == other && !zero) ? 0 : this!;
}

/// `String` 타입에 유틸리티 기능을 추가하는 확장입니다.
extension StringUtils on String {
  /// 주어진 [key]와 현재 문자열 값으로 구성된 맵을 반환합니다.
  Map<String, String> simpleMap(String key) => {key: this};

  /// 문자열이 비어있지 않으면 자기 자신을, 비어있으면 null을 반환합니다.
  String? isNotEmptyOrNull() => isNotEmpty ? this : null;

  /// GoRouter의 경로 파라미터에서 콜론(:)을 제거합니다.
  String get paramName => replaceAll(':', '');

  /// URL 문자열에 쿼리 파라미터를 추가합니다.
  ///
  /// [queryParams] 맵을 `key=value&key2=value2` 형식의 쿼리 문자열로 변환하여 URL에 붙입니다.
  String withQueryParams(Map<String, String> queryParams) {
    if (queryParams.isEmpty) return this;

    final queryString = queryParams.entries
        .map((e) => '${e.key}=${Uri.encodeComponent(e.value)}')
        .join('&');

    return '$this?$queryString';
  }
}

/// nullable `bool` 타입에 유틸리티 기능을 추가하는 확장입니다.
extension BooleanUtils on bool? {
  /// 값이 `true`이면 `true`를, `false`이거나 `null`이면 `false`를 반환합니다.
  bool isTrueOrNotNull() => (this == null) ? false : this!;
}

/// nullable `double` 타입에 유틸리티 기능을 추가하는 확장입니다.
extension DoubleUtils on double? {
  /// 소수점 이하 값을 0.x 형식의 double로 변환합니다. (사용처 확인 필요)
  double get points => double.tryParse('0.${toString().split('.')[0]}') ?? 0.0;

  /// 소수점 이하를 버리고 정수 부분에 '%'를 붙인 문자열을 반환합니다.
  String get withPercent => '${this!.toStringAsFixed(0)}%';

  /// 주어진 [other] 값과 비교하여 더 큰 값을 반환합니다.
  double getBigger(double other) => (this! > other) ? this! : other;

  /// 주어진 [other] 값과 비교하여 더 작은 값을 반환합니다.
  double getSmaller(double other) => (this! > other) ? other : this!;

  /// 초(seconds) 단위의 숫자를 '분:초' (MM:SS) 형식의 문자열로 변환합니다.
  String get toTime {
    if (this == null) return '';
    final minutes = this! ~/ 60;
    final seconds = this! % 60;
    return '${minutes.toStringAsFixed(0).padLeft(2, '0')}:${seconds.toStringAsFixed(0).padLeft(2, '0')}';
  }
}

/// 'yyyy.MM.dd HH:mm:ss' 형식의 날짜 포맷터입니다.
final format = DateFormat('yyyy.MM.dd HH:mm:ss');

/// 'yyyy-MM-dd HH:mm:ss' 형식의 날짜 포맷터입니다.
final dashedFormat = DateFormat('yyyy-MM-dd HH:mm:ss');

/// 'yyyy-MM-ddTHH:mm:ss' (ISO 8601) 형식의 날짜 포맷터입니다.
final webFormat = DateFormat('yyyy-MM-ddTHH:mm:ss');

/// 'yyyy-MM-dd' 형식의 날짜 포맷터입니다.
final chatFormat = DateFormat('yyyy-MM-dd');

/// 'yyyy년 MM월 dd일' 형식의 날짜 포맷터입니다.
final dateFormat = DateFormat('yyyy년 MM월 dd일');

/// 'HH:mm' 형식의 시간 포맷터입니다.
final timeFormat = DateFormat('HH:mm');

/// `String` 타입에 날짜/시간 관련 변환 및 계산 기능을 추가하는 확장입니다.
extension DateFormatting on String {
  /// 웹 형식(ISO 8601)의 문자열을 `DateTime` 객체로 변환합니다. 파싱 실패 시 현재 시간을 반환합니다.
  DateTime get toDateTime => webFormat.tryParse(this) ?? DateTime.now();

  /// 'yyyy-MM-dd' 형식의 문자열을 `DateTime` 객체로 변환합니다. 파싱 실패 시 현재 시간을 반환합니다.
  DateTime get toDate => chatFormat.tryParse(this) ?? DateTime.now();

  /// 'HH:mm' 형식의 문자열을 `DateTime` 객체로 변환합니다. 파싱 실패 시 현재 시간을 반환합니다.
  DateTime get toTime => timeFormat.tryParse(this) ?? DateTime.now();

  /// 'yyyy.MM.dd' 형식의 날짜 문자열이 최근 7일 이내인지 확인합니다.
  bool inSevenDays() {
    DateTime now = DateTime.now().subtract(const Duration(days: 6));
    final ymd = DateFormat('yyyy.MM.dd').format(now);
    return ymd.compareTo(this) < 0;
  }

  /// 주어진 날짜/시간 문자열이 현재로부터 24시간 이후인지 확인합니다.
  /// [df]를 통해 비교할 문자열의 포맷을 지정할 수 있습니다. (기본값: `webFormat`)
  bool in24H({DateFormat? df}) {
    df = df ?? webFormat;
    DateTime now = DateTime.now().add(const Duration(hours: 24));
    final ymdHM = df.format(now);
    return ymdHM.compareTo(this) < 0;
  }

  /// 'HH:mm' 형식의 시간 문자열을 '오전/오후' 형식으로 변환합니다. (예: "14:30" -> "오후 2:30")
  String get chatTime {
    if (toTime.hour < 12) {
      return '오전 $this';
    } else {
      final hour = toTime.hour == 12 ? 12 : toTime.hour - 12;
      final minute = toTime.minute.toString().padLeft(2, '0');
      return '오후 $hour:$minute';
    }
  }

  /// 'yyyy-MM-dd...' 형식의 날짜 문자열을 'yyyy년 MM월 dd일' 형식으로 변환합니다.
  String get dashedDateConverterYMD {
    try {
      if (isEmpty) return '';
      final s = split(' ')[0].split('T')[0].split('-');
      return '${s[0]}년 ${s[1].removeFirstZero()}월 ${s[2].removeFirstZero()}일';
    } catch (e) {
      return this;
    }
  }

  /// 'yyyy-MM-dd...' 형식의 날짜 문자열을 'MM월 dd일' 형식으로 변환합니다.
  String get dashedDateConverterMD {
    if (isEmpty) return '';
    final s = split(' ')[0].split('T')[0].split('-');
    return '${s[1].removeFirstZero()}월 ${s[2].removeFirstZero()}일';
  }

  /// '...T...' 형식의 날짜 문자열에서 날짜 부분만 추출하고, 하이픈(-)을 점(.)으로 바꿉니다.
  String get dashedDateConverterDotYMD => split('T')[0].replaceAll('-', '.');

  /// '...T...' 형식의 날짜 문자열을 'yyyy.MM.dd HH:mm' 형식으로 변환합니다.
  String get dashedDateConverterDotYMDHHMM =>
      '${split('T')[0].replaceAll('-', '.')} ${split('T')[1].substring(0, 5)}';

  /// '...T...' 형식의 날짜 문자열에서 날짜 부분만 추출하고, 하이픈(-)을 점(.)으로 바꿉니다. (YMD와 동일)
  String get dashedDateConverterDotMD => split('T')[0].replaceAll('-', '.');

  /// 'yyyy.MM.dd' 형식의 날짜 문자열에서 점(.)을 하이픈(-)으로 바꿉니다.
  String get dashedDateConverterDashYMD =>
      split('T')[0].split(' ')[0].replaceAll('.', '-');

  /// 월 또는 일에서 앞에 붙는 0을 제거합니다. (예: "07" -> "7")
  String removeFirstZero() => replaceAll(RegExp(r'^0+(?=.)'), '');
}

/// `DateTime` 객체에 유틸리티 기능을 추가하는 확장입니다.
extension DateTimeUtils on DateTime {
  /// 시간을 'HH:mm' 형식의 문자열로 반환합니다.
  String get getHHmm => '${hour.paddingTime}:${minute.paddingTime}';
}
