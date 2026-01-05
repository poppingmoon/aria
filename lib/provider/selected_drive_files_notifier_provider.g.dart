// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_drive_files_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedDriveFilesNotifier)
final selectedDriveFilesNotifierProvider =
    SelectedDriveFilesNotifierProvider._();

final class SelectedDriveFilesNotifierProvider
    extends $NotifierProvider<SelectedDriveFilesNotifier, List<DriveFile>> {
  SelectedDriveFilesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedDriveFilesNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedDriveFilesNotifierHash();

  @$internal
  @override
  SelectedDriveFilesNotifier create() => SelectedDriveFilesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<DriveFile> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<DriveFile>>(value),
    );
  }
}

String _$selectedDriveFilesNotifierHash() =>
    r'b3bf6a5e8877eec0eb4cc311c3a31d4dad390f21';

abstract class _$SelectedDriveFilesNotifier extends $Notifier<List<DriveFile>> {
  List<DriveFile> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<DriveFile>, List<DriveFile>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<DriveFile>, List<DriveFile>>,
              List<DriveFile>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
