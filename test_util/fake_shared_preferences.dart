import 'package:shared_preferences/shared_preferences.dart';

class FakeSharedPreferences implements SharedPreferencesWithCache {
  const FakeSharedPreferences(this.map);

  final Map<String, dynamic> map;

  @override
  Future<void> reloadCache() async {}

  @override
  bool containsKey(String key) => map.containsKey(key);

  @override
  Set<String> get keys => map.keys.toSet();

  @override
  Object? get(String key) => map[key];

  @override
  bool? getBool(String key) => map[key] as bool?;

  @override
  int? getInt(String key) => map[key] as int?;

  @override
  double? getDouble(String key) => map[key] as double?;

  @override
  String? getString(String key) => map[key] as String?;

  @override
  List<String>? getStringList(String key) => map[key] as List<String>?;

  @override
  Future<bool> setBool(String key, bool value) async {
    map[key] = value;
    return true;
  }

  @override
  Future<bool> setInt(String key, int value) async {
    map[key] = value;
    return true;
  }

  @override
  Future<bool> setDouble(String key, double value) async {
    map[key] = value;
    return true;
  }

  @override
  Future<bool> setString(String key, String value) async {
    map[key] = value;
    return true;
  }

  @override
  Future<bool> setStringList(String key, List<String>? value) async {
    map[key] = value;
    return true;
  }

  @override
  Future<bool> remove(String key) async {
    map.remove(key);
    return true;
  }

  @override
  Future<bool> clear() async => true;
}
