// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_post_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GalleryPostNotifier)
const galleryPostNotifierProvider = GalleryPostNotifierFamily._();

final class GalleryPostNotifierProvider
    extends $AsyncNotifierProvider<GalleryPostNotifier, GalleryPost> {
  const GalleryPostNotifierProvider._({
    required GalleryPostNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'galleryPostNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$galleryPostNotifierHash();

  @override
  String toString() {
    return r'galleryPostNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  GalleryPostNotifier create() => GalleryPostNotifier();

  @override
  bool operator ==(Object other) {
    return other is GalleryPostNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$galleryPostNotifierHash() =>
    r'e7995c7a6f2e239b0fe0d96fb7f0e02909d499f3';

final class GalleryPostNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          GalleryPostNotifier,
          AsyncValue<GalleryPost>,
          GalleryPost,
          FutureOr<GalleryPost>,
          (Account, String)
        > {
  const GalleryPostNotifierFamily._()
    : super(
        retry: null,
        name: r'galleryPostNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GalleryPostNotifierProvider call(Account account, String postId) =>
      GalleryPostNotifierProvider._(argument: (account, postId), from: this);

  @override
  String toString() => r'galleryPostNotifierProvider';
}

abstract class _$GalleryPostNotifier extends $AsyncNotifier<GalleryPost> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get postId => _$args.$2;

  FutureOr<GalleryPost> build(Account account, String postId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2);
    final ref = this.ref as $Ref<AsyncValue<GalleryPost>, GalleryPost>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<GalleryPost>, GalleryPost>,
              AsyncValue<GalleryPost>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
