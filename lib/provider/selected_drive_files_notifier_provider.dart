import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_drive_files_notifier_provider.g.dart';

@riverpod
class SelectedDriveFilesNotifier extends _$SelectedDriveFilesNotifier {
  @override
  List<DriveFile> build() {
    return [];
  }

  void add(DriveFile file) {
    state = [...state, if (state.every((f) => f.id != file.id)) file];
  }

  void addAll(Iterable<DriveFile> files) {
    state = [
      ...state,
      ...files.where((file) => state.every((f) => f.id != file.id)),
    ];
  }

  void remove(String fileId) {
    state = state.where((file) => file.id != fileId).toList();
  }

  void removeAll() {
    state = [];
  }
}
