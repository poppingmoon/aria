// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod_storage_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(riverpodStorage)
final riverpodStorageProvider = RiverpodStorageProvider._();

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
  RiverpodStorageProvider._()
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

String _$riverpodStorageHash() => r'f5c1b682e494f93d2910f6f8db981d8869722687';
