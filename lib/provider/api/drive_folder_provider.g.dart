// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_folder_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(driveFolder)
final driveFolderProvider = DriveFolderFamily._();

final class DriveFolderProvider
    extends
        $FunctionalProvider<
          AsyncValue<DriveFolder>,
          DriveFolder,
          FutureOr<DriveFolder>
        >
    with $FutureModifier<DriveFolder>, $FutureProvider<DriveFolder> {
  DriveFolderProvider._({
    required DriveFolderFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'driveFolderProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$driveFolderHash();

  @override
  String toString() {
    return r'driveFolderProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<DriveFolder> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DriveFolder> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return driveFolder(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is DriveFolderProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$driveFolderHash() => r'26b085d970a50384fd0e10933616d48d4365391b';

final class DriveFolderFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DriveFolder>, (Account, String)> {
  DriveFolderFamily._()
    : super(
        retry: null,
        name: r'driveFolderProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DriveFolderProvider call(Account account, String folderId) =>
      DriveFolderProvider._(argument: (account, folderId), from: this);

  @override
  String toString() => r'driveFolderProvider';
}
