// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_system_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fileSystem)
final fileSystemProvider = FileSystemProvider._();

final class FileSystemProvider
    extends $FunctionalProvider<FileSystem, FileSystem, FileSystem>
    with $Provider<FileSystem> {
  FileSystemProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fileSystemProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fileSystemHash();

  @$internal
  @override
  $ProviderElement<FileSystem> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FileSystem create(Ref ref) {
    return fileSystem(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FileSystem value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FileSystem>(value),
    );
  }
}

String _$fileSystemHash() => r'13ebfaafe11a745ba261f5fc7ee19c47c18f12f7';
