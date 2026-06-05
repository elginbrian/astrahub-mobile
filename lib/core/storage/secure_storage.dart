import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../constants/app_constants.dart';

abstract class SecureStorage {
  Future<void> saveAccessToken(String token);
  Future<String?> getAccessToken();
  Future<void> saveRefreshToken(String token);
  Future<String?> getRefreshToken();
  Future<void> clearAll();
  void saveSessionToken(String token);
  String? getSessionToken();
}

class SecureStorageImpl implements SecureStorage {
  String? _sessionToken;

  SecureStorageImpl()
      : _storage = const FlutterSecureStorage(
          aOptions: AndroidOptions(encryptedSharedPreferences: true),
          iOptions: IOSOptions(
            accessibility: KeychainAccessibility.first_unlock,
          ),
          mOptions: MacOsOptions(
            accessibility: KeychainAccessibility.first_unlock,
          ),
          webOptions: WebOptions(
            dbName: 'astrahub_db',
            publicKey: 'astrahub_pub_key',
          ),
        );

  final FlutterSecureStorage _storage;

  @override
  Future<void> saveAccessToken(String token) async =>
      _storage.write(key: AppConstants.accessTokenKey, value: token);

  @override
  Future<String?> getAccessToken() async =>
      _storage.read(key: AppConstants.accessTokenKey);

  @override
  Future<void> saveRefreshToken(String token) async =>
      _storage.write(key: AppConstants.refreshTokenKey, value: token);

  @override
  Future<String?> getRefreshToken() async =>
      _storage.read(key: AppConstants.refreshTokenKey);

  @override
  Future<void> clearAll() async {
    _sessionToken = null;
    await _storage.deleteAll();
  }

  @override
  void saveSessionToken(String token) => _sessionToken = token;

  @override
  String? getSessionToken() => _sessionToken;
}
