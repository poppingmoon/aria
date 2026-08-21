import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
abstract class const Account._() with _$Account {
  const factory({required String host, String? username}) = _Account;

  factory fromJson(Map<String, Object?> json) => _$AccountFromJson(json);

  factory fromString(String input) {
    final l = input.substring(1).split('@');
    if (l.length == 2) {
      return Account(host: l[1], username: l[0]);
    } else {
      return Account(host: input);
    }
  }

  factory dummy() => const Account(host: '');

  @override
  String toString() {
    return username != null ? '@$username@$host' : host;
  }

  bool get isGuest => username == null;
}
