import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageClass {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  containsTheKey() async {
    await storage.containsKey(key: 'pass');
  }

  writeSecureData(String key, String value) async {
    await storage.write(key: key, value: value);
    print('Write data function closed');
  }

  readSecureData(String key) async {
    String? value = await storage.read(key: key);
    print('Data read from secure storage: $value');
    return value;
  }

  deleteSecureData(String key) async {
    await storage.delete(key: key);
    print('Data from $key deleted......');
  }
}
