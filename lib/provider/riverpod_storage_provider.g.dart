// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod_storage_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(riverpodStorage)
const riverpodStorageProvider = RiverpodStorageProvider._();

final class RiverpodStorageProvider
    extends
        $FunctionalProvider<
          AsyncValue<Storage<String, String>>,
          Storage<String, String>,
          FutureOr<Storage<String, String>>
        >
    with
        $FutureModifier<Storage<String, String>>,
        $FutureProvider<Storage<String, String>> {
  const RiverpodStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riverpodStorageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riverpodStorageHash();

  @$internal
  @override
  $FutureProviderElement<Storage<String, String>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Storage<String, String>> create(Ref ref) {
    return riverpodStorage(ref);
  }
}

String _$riverpodStorageHash() => r'2cd4f25a8c97a3de02c057bbf5ad8130800ab263';
