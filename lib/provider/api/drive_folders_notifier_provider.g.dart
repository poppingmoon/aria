// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_folders_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DriveFoldersNotifier)
const driveFoldersNotifierProvider = DriveFoldersNotifierFamily._();

final class DriveFoldersNotifierProvider
    extends
        $StreamNotifierProvider<
          DriveFoldersNotifier,
          PaginationState<DriveFolder>
        > {
  const DriveFoldersNotifierProvider._({
    required DriveFoldersNotifierFamily super.from,
    required (Account, String?) super.argument,
  }) : super(
         retry: null,
         name: r'driveFoldersNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$driveFoldersNotifierHash();

  @override
  String toString() {
    return r'driveFoldersNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  DriveFoldersNotifier create() => DriveFoldersNotifier();

  @override
  bool operator ==(Object other) {
    return other is DriveFoldersNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$driveFoldersNotifierHash() =>
    r'13b29c450726dca832f1c95f1ab3afc5b52cf934';

final class DriveFoldersNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          DriveFoldersNotifier,
          AsyncValue<PaginationState<DriveFolder>>,
          PaginationState<DriveFolder>,
          Stream<PaginationState<DriveFolder>>,
          (Account, String?)
        > {
  const DriveFoldersNotifierFamily._()
    : super(
        retry: null,
        name: r'driveFoldersNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DriveFoldersNotifierProvider call(Account account, String? folderId) =>
      DriveFoldersNotifierProvider._(argument: (account, folderId), from: this);

  @override
  String toString() => r'driveFoldersNotifierProvider';
}

abstract class _$DriveFoldersNotifier
    extends $StreamNotifier<PaginationState<DriveFolder>> {
  late final _$args = ref.$arg as (Account, String?);
  Account get account => _$args.$1;
  String? get folderId => _$args.$2;

  Stream<PaginationState<DriveFolder>> build(Account account, String? folderId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<DriveFolder>>,
              PaginationState<DriveFolder>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<DriveFolder>>,
                PaginationState<DriveFolder>
              >,
              AsyncValue<PaginationState<DriveFolder>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
