import 'package:aria/model/id.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('aid', () {
    final date = DateTime.now();
    final aid = Id(method: IdGenMethod.aid, date: date).toString();
    final parsed = Id.parse(aid);
    assert(aid.length == 10);
    assert(parsed.method == IdGenMethod.aid);
    assert(parsed.date.millisecondsSinceEpoch == date.millisecondsSinceEpoch);
    assert(parsed.toString() == aid);
  });

  test('aidx', () {
    final date = DateTime.now();
    final aidx = Id(method: IdGenMethod.aidx, date: date).toString();
    final parsed = Id.parse(aidx);
    expect(aidx, hasLength(16));
    expect(parsed.method, equals(IdGenMethod.aidx));
    expect(
      parsed.date.millisecondsSinceEpoch,
      equals(date.millisecondsSinceEpoch),
    );
    expect(parsed.toString(), equals(aidx));
  });

  test('meid', () {
    final date = DateTime.now();
    final meid = Id(method: IdGenMethod.meid, date: date).toString();
    final parsed = Id.parse(meid);
    expect(meid, hasLength(24));
    expect(parsed.method, equals(IdGenMethod.meid));
    expect(
      parsed.date.millisecondsSinceEpoch,
      equals(date.millisecondsSinceEpoch),
    );
    expect(parsed.toString(), equals(meid));
  });

  test('meidg', () {
    final date = DateTime.now();
    final meidg = Id(method: IdGenMethod.meidg, date: date).toString();
    final parsed = Id.parse(meidg);
    expect(meidg, hasLength(24));
    expect(parsed.method, equals(IdGenMethod.meidg));
    expect(
      parsed.date.millisecondsSinceEpoch,
      equals(date.millisecondsSinceEpoch),
    );
    expect(parsed.toString(), equals(meidg));
  });

  test('ulid', () {
    final date = DateTime.now();
    final ulid = Id(method: IdGenMethod.ulid, date: date).toString();
    final parsed = Id.parse(ulid);
    expect(ulid, hasLength(26));
    expect(parsed.method, equals(IdGenMethod.ulid));
    expect(
      parsed.date.millisecondsSinceEpoch,
      equals(date.millisecondsSinceEpoch),
    );
    expect(parsed.toString(), equals(ulid));
  });

  test('objectid', () {
    final date = DateTime.now();
    final objectid = Id(method: IdGenMethod.objectid, date: date).toString();
    final parsed = Id.parse(objectid);
    expect(objectid, hasLength(24));
    expect(parsed.method, equals(IdGenMethod.objectid));
    expect(
      parsed.date.millisecondsSinceEpoch ~/ 1000,
      equals(date.millisecondsSinceEpoch ~/ 1000),
    );
    expect(parsed.toString(), equals(objectid));
  });
}
