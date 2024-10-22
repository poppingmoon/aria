import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'antenna_provider.g.dart';

@riverpod
FutureOr<Antenna> antenna(Ref ref, Account account, String antennaId) {
  return ref
      .read(misskeyProvider(account))
      .antennas
      .show(AntennasShowRequest(antennaId: antennaId));
}
