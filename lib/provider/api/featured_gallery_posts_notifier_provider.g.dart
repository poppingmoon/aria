// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_gallery_posts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FeaturedGalleryPostsNotifier)
final featuredGalleryPostsNotifierProvider =
    FeaturedGalleryPostsNotifierFamily._();

final class FeaturedGalleryPostsNotifierProvider
    extends
        $StreamNotifierProvider<
          FeaturedGalleryPostsNotifier,
          PaginationState<GalleryPost>
        > {
  FeaturedGalleryPostsNotifierProvider._({
    required FeaturedGalleryPostsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'featuredGalleryPostsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$featuredGalleryPostsNotifierHash();

  @override
  String toString() {
    return r'featuredGalleryPostsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FeaturedGalleryPostsNotifier create() => FeaturedGalleryPostsNotifier();

  @override
  bool operator ==(Object other) {
    return other is FeaturedGalleryPostsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$featuredGalleryPostsNotifierHash() =>
    r'89f504bdc619eaef3b7e203a1327af571dc629fc';

final class FeaturedGalleryPostsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          FeaturedGalleryPostsNotifier,
          AsyncValue<PaginationState<GalleryPost>>,
          PaginationState<GalleryPost>,
          Stream<PaginationState<GalleryPost>>,
          Account
        > {
  FeaturedGalleryPostsNotifierFamily._()
    : super(
        retry: null,
        name: r'featuredGalleryPostsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FeaturedGalleryPostsNotifierProvider call(Account account) =>
      FeaturedGalleryPostsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'featuredGalleryPostsNotifierProvider';
}

abstract class _$FeaturedGalleryPostsNotifier
    extends $StreamNotifier<PaginationState<GalleryPost>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<GalleryPost>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<GalleryPost>>,
              PaginationState<GalleryPost>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<GalleryPost>>,
                PaginationState<GalleryPost>
              >,
              AsyncValue<PaginationState<GalleryPost>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
