import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../model/account.dart';

class TokenRepository {
  const TokenRepository();

  static const storage = FlutterSecureStorage();

  Future<void> writeToken(Account account, String token) async {
    await storage.write(key: account.toString(), value: token);
  }

  Future<String?> readToken(Account account) {
    return storage.read(key: account.toString());
  }

  Future<void> deleteToken(Account account) async {
    await storage.delete(key: account.toString());
  }
}
