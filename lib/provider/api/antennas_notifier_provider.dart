import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'antennas_notifier_provider.g.dart';

@riverpod
class AntennasNotifier extends _$AntennasNotifier {
  @override
  FutureOr<List<Antenna>> build(Account account) async {
    final response = await _misskey.antennas.list();
    return response.toList();
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<void> create({
    required String name,
    AntennaSource? src,
    List<List<String>>? keywords,
    List<List<String>>? excludeKeywords,
    List<String>? users,
    bool? caseSensitive,
    bool? withReplies,
    bool? withFile,
  }) async {
    final antenna = await _misskey.antennas.create(
      AntennasCreateRequest(
        name: name,
        src: src ?? AntennaSource.all,
        keywords: keywords ?? [],
        excludeKeywords: excludeKeywords ?? [],
        users: users ?? [],
        caseSensitive: caseSensitive ?? false,
        withReplies: withReplies ?? false,
        withFile: withFile ?? false,
        notify: false,
      ),
    );
    state = AsyncValue.data([
      antenna,
      ...?state.valueOrNull,
    ]);
  }

  Future<void> updateAntenna(
    Antenna antenna, {
    String? name,
    AntennaSource? src,
    List<List<String>>? keywords,
    List<List<String>>? excludeKeywords,
    List<String>? users,
    bool? caseSensitive,
    bool? withReplies,
    bool? withFile,
  }) async {
    await _misskey.antennas.update(
      AntennasUpdateRequest(
        antennaId: antenna.id,
        name: name ?? antenna.name,
        src: src ?? antenna.src ?? AntennaSource.all,
        keywords: keywords ?? antenna.keywords,
        excludeKeywords: excludeKeywords ?? antenna.excludeKeywords,
        users: users ?? antenna.users,
        caseSensitive: caseSensitive ?? antenna.caseSensitive,
        withReplies: withReplies ?? antenna.withReplies,
        withFile: withFile ?? antenna.withFile,
        notify: antenna.notify,
      ),
    );
    state = AsyncValue.data([
      ...?state.valueOrNull?.map(
        (e) => e.id == antenna.id
            ? e.copyWith(
                name: name ?? antenna.name,
                src: src ?? antenna.src ?? AntennaSource.all,
                keywords: keywords ?? antenna.keywords,
                excludeKeywords: excludeKeywords ?? antenna.excludeKeywords,
                users: users ?? antenna.users,
                caseSensitive: caseSensitive ?? antenna.caseSensitive,
                withReplies: withReplies ?? antenna.withReplies,
                withFile: withFile ?? antenna.withFile,
              )
            : e,
      ),
    ]);
  }

  Future<void> delete(String antennaId) async {
    await _misskey.antennas.delete(AntennasDeleteRequest(antennaId: antennaId));
    state = AsyncValue.data([
      ...?state.valueOrNull?.where((antenna) => antenna.id != antennaId),
    ]);
  }

  Future<void> addUser(Antenna antenna, String acct) async {
    final antennaId = antenna.id;
    final users = [...antenna.users, acct];
    await _misskey.antennas.update(
      AntennasUpdateRequest(
        antennaId: antennaId,
        name: antenna.name,
        src: antenna.src ?? AntennaSource.users,
        keywords: antenna.keywords,
        excludeKeywords: antenna.excludeKeywords,
        users: users,
        caseSensitive: antenna.caseSensitive,
        withReplies: antenna.withReplies,
        withFile: antenna.withFile,
        notify: antenna.notify,
      ),
    );
    state = AsyncValue.data([
      ...?state.valueOrNull?.map(
        (antenna) =>
            antenna.id == antennaId ? antenna.copyWith(users: users) : antenna,
      ),
    ]);
  }

  Future<void> removeUser(Antenna antenna, String acct) async {
    final antennaId = antenna.id;
    final users = antenna.users.where((user) => user != acct).toList();
    await _misskey.antennas.update(
      AntennasUpdateRequest(
        antennaId: antennaId,
        name: antenna.name,
        src: antenna.src ?? AntennaSource.users,
        keywords: antenna.keywords,
        excludeKeywords: antenna.excludeKeywords,
        users: users,
        caseSensitive: antenna.caseSensitive,
        withReplies: antenna.withReplies,
        withFile: antenna.withFile,
        notify: antenna.notify,
      ),
    );
    state = AsyncValue.data([
      ...?state.valueOrNull?.map(
        (antenna) =>
            antenna.id == antennaId ? antenna.copyWith(users: users) : antenna,
      ),
    ]);
  }
}
