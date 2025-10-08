// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_posts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GalleryPostsNotifier)
const galleryPostsNotifierProvider = GalleryPostsNotifierFamily._();

final class GalleryPostsNotifierProvider
    extends
        $StreamNotifierProvider<
          GalleryPostsNotifier,
          PaginationState<GalleryPost>
        > {
  const GalleryPostsNotifierProvider._({
    required GalleryPostsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'galleryPostsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$galleryPostsNotifierHash();

  @override
  String toString() {
    return r'galleryPostsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GalleryPostsNotifier create() => GalleryPostsNotifier();

  @override
  bool operator ==(Object other) {
    return other is GalleryPostsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$galleryPostsNotifierHash() =>
    r'408fa72e668bda56a2a820c8fa6a7a3fd64061ec';

final class GalleryPostsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          GalleryPostsNotifier,
          AsyncValue<PaginationState<GalleryPost>>,
          PaginationState<GalleryPost>,
          Stream<PaginationState<GalleryPost>>,
          Account
        > {
  const GalleryPostsNotifierFamily._()
    : super(
        retry: null,
        name: r'galleryPostsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GalleryPostsNotifierProvider call(Account account) =>
      GalleryPostsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'galleryPostsNotifierProvider';
}

abstract class _$GalleryPostsNotifier
    extends $StreamNotifier<PaginationState<GalleryPost>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<GalleryPost>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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
    element.handleValue(ref, created);
  }
}
