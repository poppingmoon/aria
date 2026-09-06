import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@Freezed(fromJson: false, toJson: false)
@JsonSerializable()
class const Account({required final String host, final String? username})
    with _$Account {
  const new _() : this(host: '');

  factory fromJson(Map<String, Object?> json) => _$AccountFromJson(json);

  Map<String, Object?> toJson() => _$AccountToJson(this);

  factory fromString(String input) {
    final l = input.substring(1).split('@');
    if (l.length == 2) {
      return Account(host: l[1], username: l[0]);
    } else {
      return Account(host: input);
    }
  }

  const new dummy() : this(host: '');

  @override
  String toString() {
    return username != null ? '@$username@$host' : host;
  }

  bool get isGuest => username == null;
}
