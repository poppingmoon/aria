// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proxied_image_url_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(proxiedImageUrl)
final proxiedImageUrlProvider = ProxiedImageUrlFamily._();

final class ProxiedImageUrlProvider
    extends $FunctionalProvider<Uri?, Uri?, Uri?>
    with $Provider<Uri?> {
  ProxiedImageUrlProvider._({
    required ProxiedImageUrlFamily super.from,
    required (String, Uri, {bool emoji, bool preview, bool static})
    super.argument,
  }) : super(
         retry: null,
         name: r'proxiedImageUrlProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$proxiedImageUrlHash();

  @override
  String toString() {
    return r'proxiedImageUrlProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<Uri?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Uri? create(Ref ref) {
    final argument =
        this.argument as (String, Uri, {bool emoji, bool preview, bool static});
    return proxiedImageUrl(
      ref,
      argument.$1,
      argument.$2,
      emoji: argument.emoji,
      preview: argument.preview,
      static: argument.static,
    );
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
    return other is ProxiedImageUrlProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$proxiedImageUrlHash() => r'54a1464bce27fa409227d69bdb92efbe53aee764';

final class ProxiedImageUrlFamily extends $Family
    with
        $FunctionalFamilyOverride<
          Uri?,
          (String, Uri, {bool emoji, bool preview, bool static})
        > {
  ProxiedImageUrlFamily._()
    : super(
        retry: null,
        name: r'proxiedImageUrlProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProxiedImageUrlProvider call(
    String host,
    Uri baseUrl, {
    bool emoji = false,
    bool preview = false,
    bool static = false,
  }) => ProxiedImageUrlProvider._(
    argument: (host, baseUrl, emoji: emoji, preview: preview, static: static),
    from: this,
  );

  @override
  String toString() => r'proxiedImageUrlProvider';
}
