// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_gallery_posts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LikedGalleryPostsNotifier)
final likedGalleryPostsNotifierProvider = LikedGalleryPostsNotifierFamily._();

final class LikedGalleryPostsNotifierProvider
    extends
        $StreamNotifierProvider<
          LikedGalleryPostsNotifier,
          PaginationState<IGalleryLikesResponse>
        > {
  LikedGalleryPostsNotifierProvider._({
    required LikedGalleryPostsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'likedGalleryPostsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$likedGalleryPostsNotifierHash();

  @override
  String toString() {
    return r'likedGalleryPostsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  LikedGalleryPostsNotifier create() => LikedGalleryPostsNotifier();

  @override
  bool operator ==(Object other) {
    return other is LikedGalleryPostsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$likedGalleryPostsNotifierHash() =>
    r'5eb19e2815f88ae1f236b80cf2d68d732f934f67';

final class LikedGalleryPostsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          LikedGalleryPostsNotifier,
          AsyncValue<PaginationState<IGalleryLikesResponse>>,
          PaginationState<IGalleryLikesResponse>,
          Stream<PaginationState<IGalleryLikesResponse>>,
          Account
        > {
  LikedGalleryPostsNotifierFamily._()
    : super(
        retry: null,
        name: r'likedGalleryPostsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LikedGalleryPostsNotifierProvider call(Account account) =>
      LikedGalleryPostsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'likedGalleryPostsNotifierProvider';
}

abstract class _$LikedGalleryPostsNotifier
    extends $StreamNotifier<PaginationState<IGalleryLikesResponse>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<IGalleryLikesResponse>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<IGalleryLikesResponse>>,
              PaginationState<IGalleryLikesResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<IGalleryLikesResponse>>,
                PaginationState<IGalleryLikesResponse>
              >,
              AsyncValue<PaginationState<IGalleryLikesResponse>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
