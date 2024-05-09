import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/data_saver.dart';
import 'connectivity_provider.dart';
import 'general_settings_notifier_provider.dart';

part 'data_saver_provider.g.dart';

@riverpod
DataSaver dataSaver(DataSaverRef ref) {
  final dataSaver = ref.watch(
    generalSettingsNotifierProvider.select(
      (settings) => DataSaver(
        media: settings.dataSaverMedia,
        avatar: settings.dataSaverAvatar,
        urlPreview: settings.dataSaverUrlPreview,
      ),
    ),
  );
  final disableDataSaverWhenOnWifi = ref.watch(
    generalSettingsNotifierProvider
        .select((settings) => settings.disableDataSaverWhenOnWifi),
  );
  if ((dataSaver.media || dataSaver.avatar || dataSaver.urlPreview) &&
      disableDataSaverWhenOnWifi) {
    final isOnWifi = ref
            .watch(connectivityProvider)
            .valueOrNull
            ?.contains(ConnectivityResult.wifi) ??
        false;
    if (isOnWifi) {
      return const DataSaver(
        media: false,
        avatar: false,
        urlPreview: false,
      );
    }
  }
  return dataSaver;
}
