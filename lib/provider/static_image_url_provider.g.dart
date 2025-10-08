// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'static_image_url_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(staticImageUrl)
const staticImageUrlProvider = StaticImageUrlFamily._();

final class StaticImageUrlProvider extends $FunctionalProvider<Uri?, Uri?, Uri?>
    with $Provider<Uri?> {
  const StaticImageUrlProvider._({
    required StaticImageUrlFamily super.from,
    required (String, String) super.argument,
  }) : super(
         retry: null,
         name: r'staticImageUrlProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$staticImageUrlHash();

  @override
  String toString() {
    return r'staticImageUrlProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<Uri?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Uri? create(Ref ref) {
    final argument = this.argument as (String, String);
    return staticImageUrl(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Uri? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Uri?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StaticImageUrlProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$staticImageUrlHash() => r'ef3c6cb2ff171b6a728dbab9ebd8ecc07e11ac6d';

final class StaticImageUrlFamily extends $Family
    with $FunctionalFamilyOverride<Uri?, (String, String)> {
  const StaticImageUrlFamily._()
    : super(
        retry: null,
        name: r'staticImageUrlProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  StaticImageUrlProvider call(String host, String baseUrl) =>
      StaticImageUrlProvider._(argument: (host, baseUrl), from: this);

  @override
  String toString() => r'staticImageUrlProvider';
}
