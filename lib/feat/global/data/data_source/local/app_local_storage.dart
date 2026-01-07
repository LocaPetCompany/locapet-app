import 'package:injectable/injectable.dart';
import 'package:locapet/export/package.dart';

/// 로컬 저장소에 사용될 키들을 관리하는 클래스입니다.
///
/// 매직 스트링을 방지하고 키의 중앙 관리를 위해 사용됩니다.
abstract class _StorageKeys {
  static const provider = 'provider';
  static const accessToken = 'accessToken';
  static const refreshToken = 'refreshToken';
  static const idToken = 'idToken';
}

/// 앱의 로컬 데이터 저장을 관리하는 클래스입니다.
///
/// [SharedPreferences]를 사용하여 일반 데이터를 저장하고,
/// [FlutterSecureStorage]를 사용하여 인증 토큰과 같은 민감한 정보를 안전하게 저장합니다.
@lazySingleton
class AppLocalStorage {
  final SharedPreferences _prefs;
  final FlutterSecureStorage _secureStorage;

  /// [AppLocalStorage]의 인스턴스를 생성합니다.
  ///
  /// [injectable]에 의해 의존성이 주입됩니다.
  AppLocalStorage(this._prefs, this._secureStorage);

  /// 로그인 제공자(provider) 정보를 [SharedPreferences]에 저장합니다.
  Future<void> saveProvider({required String provider}) async {
    await _prefs.setString(_StorageKeys.provider, provider);
  }

  /// [SharedPreferences]에서 로그인 제공자 정보를 가져옵니다.
  String? getProvider() {
    return _prefs.getString(_StorageKeys.provider);
  }

  /// 액세스 토큰을 [FlutterSecureStorage]에 안전하게 저장합니다.
  Future<void> saveAccessToken({required String accessToken}) async {
    await _secureStorage.write(
      key: _StorageKeys.accessToken,
      value: accessToken,
    );
  }

  /// 리프레시 토큰을 [FlutterSecureStorage]에 안전하게 저장합니다.
  Future<void> saveRefreshToken({required String refreshToken}) async {
    await _secureStorage.write(
      key: _StorageKeys.refreshToken,
      value: refreshToken,
    );
  }

  /// 소셜로그인 ID 토큰을 [FlutterSecureStorage]에 안전하게 저장합니다.
  Future<void> saveIdToken({required String idToken}) async {
    await _secureStorage.write(key: _StorageKeys.idToken, value: idToken);
  }

  /// [FlutterSecureStorage]에서 저장된 액세스 토큰을 가져옵니다.
  Future<String?> getAccessToken() async {
    return await _secureStorage.read(key: _StorageKeys.accessToken);
  }

  /// [FlutterSecureStorage]에서 저장된 리프레시 토큰을 가져옵니다.
  Future<String?> getRefreshToken() async {
    return await _secureStorage.read(key: _StorageKeys.refreshToken);
  }

  /// [FlutterSecureStorage]에서 저장된 리프레시 토큰을 가져옵니다.
  Future<String?> getIdToken() async {
    return await _secureStorage.read(key: _StorageKeys.idToken);
  }

  /// 저장된 모든 로컬 데이터를 삭제합니다.
  ///
  /// 로그아웃 시 사용되며, [SharedPreferences]와 [FlutterSecureStorage]의 모든 데이터를 지웁니다.
  Future<void> clearAll() async {
    await _prefs.clear();
    await _secureStorage.deleteAll();
  }
}
