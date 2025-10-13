// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_files_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DriveFilesNotifier)
const driveFilesNotifierProvider = DriveFilesNotifierFamily._();

final class DriveFilesNotifierProvider
    extends
        $StreamNotifierProvider<
          DriveFilesNotifier,
          PaginationState<DriveFile>
        > {
  const DriveFilesNotifierProvider._({
    required DriveFilesNotifierFamily super.from,
    required (Account, String?) super.argument,
  }) : super(
         retry: null,
         name: r'driveFilesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$driveFilesNotifierHash();

  @override
  String toString() {
    return r'driveFilesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  DriveFilesNotifier create() => DriveFilesNotifier();

  @override
  bool operator ==(Object other) {
    return other is DriveFilesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$driveFilesNotifierHash() =>
    r'25f14394f1613b4797d429719051b968d8c52428';

final class DriveFilesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          DriveFilesNotifier,
          AsyncValue<PaginationState<DriveFile>>,
          PaginationState<DriveFile>,
          Stream<PaginationState<DriveFile>>,
          (Account, String?)
        > {
  const DriveFilesNotifierFamily._()
    : super(
        retry: null,
        name: r'driveFilesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DriveFilesNotifierProvider call(Account account, String? folderId) =>
      DriveFilesNotifierProvider._(argument: (account, folderId), from: this);

  @override
  String toString() => r'driveFilesNotifierProvider';
}

abstract class _$DriveFilesNotifier
    extends $StreamNotifier<PaginationState<DriveFile>> {
  late final _$args = ref.$arg as (Account, String?);
  Account get account => _$args.$1;
  String? get folderId => _$args.$2;

  Stream<PaginationState<DriveFile>> build(Account account, String? folderId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<DriveFile>>,
              PaginationState<DriveFile>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<DriveFile>>,
                PaginationState<DriveFile>
              >,
              AsyncValue<PaginationState<DriveFile>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
