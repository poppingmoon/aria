// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_file_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DriveFileNotifier)
final driveFileNotifierProvider = DriveFileNotifierFamily._();

final class DriveFileNotifierProvider
    extends $AsyncNotifierProvider<DriveFileNotifier, DriveFile> {
  DriveFileNotifierProvider._({
    required DriveFileNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'driveFileNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$driveFileNotifierHash();

  @override
  String toString() {
    return r'driveFileNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  DriveFileNotifier create() => DriveFileNotifier();

  @override
  bool operator ==(Object other) {
    return other is DriveFileNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$driveFileNotifierHash() => r'923aef0869e9fbd7933cfdda4b1aae9d2e2f79e5';

final class DriveFileNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          DriveFileNotifier,
          AsyncValue<DriveFile>,
          DriveFile,
          FutureOr<DriveFile>,
          (Account, String)
        > {
  DriveFileNotifierFamily._()
    : super(
        retry: null,
        name: r'driveFileNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DriveFileNotifierProvider call(Account account, String fileId) =>
      DriveFileNotifierProvider._(argument: (account, fileId), from: this);

  @override
  String toString() => r'driveFileNotifierProvider';
}

abstract class _$DriveFileNotifier extends $AsyncNotifier<DriveFile> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get fileId => _$args.$2;

  FutureOr<DriveFile> build(Account account, String fileId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<DriveFile>, DriveFile>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<DriveFile>, DriveFile>,
              AsyncValue<DriveFile>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
