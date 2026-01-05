// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_manager_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cacheManager)
final cacheManagerProvider = CacheManagerProvider._();

final class CacheManagerProvider
    extends
        $FunctionalProvider<
          ImageCacheManager,
          ImageCacheManager,
          ImageCacheManager
        >
    with $Provider<ImageCacheManager> {
  CacheManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cacheManagerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cacheManagerHash();

  @$internal
  @override
  $ProviderElement<ImageCacheManager> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ImageCacheManager create(Ref ref) {
    return cacheManager(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ImageCacheManager value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ImageCacheManager>(value),
    );
  }
}

String _$cacheManagerHash() => r'a532851d179703511355bf609f0ab32a8d418e85';
