// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_system_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fileSystem)
const fileSystemProvider = FileSystemProvider._();

final class FileSystemProvider
    extends $FunctionalProvider<FileSystem, FileSystem, FileSystem>
    with $Provider<FileSystem> {
  const FileSystemProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fileSystemProvider',
        isAutoDispose: true,
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

String _$fileSystemHash() => r'96ac0dac8d12939aa3ce95bfd916a656d76cfa5e';
