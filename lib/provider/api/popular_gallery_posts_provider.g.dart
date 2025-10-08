// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_gallery_posts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(popularGalleryPosts)
const popularGalleryPostsProvider = PopularGalleryPostsFamily._();

final class PopularGalleryPostsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<GalleryPost>>,
          List<GalleryPost>,
          FutureOr<List<GalleryPost>>
        >
    with
        $FutureModifier<List<GalleryPost>>,
        $FutureProvider<List<GalleryPost>> {
  const PopularGalleryPostsProvider._({
    required PopularGalleryPostsFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'popularGalleryPostsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$popularGalleryPostsHash();

  @override
  String toString() {
    return r'popularGalleryPostsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<GalleryPost>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<GalleryPost>> create(Ref ref) {
    final argument = this.argument as Account;
    return popularGalleryPosts(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PopularGalleryPostsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$popularGalleryPostsHash() =>
    r'99410ed538dada0f580564609b9821ed78d463b4';

final class PopularGalleryPostsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<GalleryPost>>, Account> {
  const PopularGalleryPostsFamily._()
    : super(
        retry: null,
        name: r'popularGalleryPostsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PopularGalleryPostsProvider call(Account account) =>
      PopularGalleryPostsProvider._(argument: account, from: this);

  @override
  String toString() => r'popularGalleryPostsProvider';
}
