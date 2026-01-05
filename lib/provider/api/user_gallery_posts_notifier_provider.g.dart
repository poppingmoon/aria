// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_gallery_posts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserGalleryPostsNotifier)
final userGalleryPostsNotifierProvider = UserGalleryPostsNotifierFamily._();

final class UserGalleryPostsNotifierProvider
    extends
        $StreamNotifierProvider<
          UserGalleryPostsNotifier,
          PaginationState<GalleryPost>
        > {
  UserGalleryPostsNotifierProvider._({
    required UserGalleryPostsNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'userGalleryPostsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userGalleryPostsNotifierHash();

  @override
  String toString() {
    return r'userGalleryPostsNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  UserGalleryPostsNotifier create() => UserGalleryPostsNotifier();

  @override
  bool operator ==(Object other) {
    return other is UserGalleryPostsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userGalleryPostsNotifierHash() =>
    r'bcf7bf502da1c69df8cff655bc58894fb3515f54';

final class UserGalleryPostsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          UserGalleryPostsNotifier,
          AsyncValue<PaginationState<GalleryPost>>,
          PaginationState<GalleryPost>,
          Stream<PaginationState<GalleryPost>>,
          (Account, String)
        > {
  UserGalleryPostsNotifierFamily._()
    : super(
        retry: null,
        name: r'userGalleryPostsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserGalleryPostsNotifierProvider call(Account account, String userId) =>
      UserGalleryPostsNotifierProvider._(
        argument: (account, userId),
        from: this,
      );

  @override
  String toString() => r'userGalleryPostsNotifierProvider';
}

abstract class _$UserGalleryPostsNotifier
    extends $StreamNotifier<PaginationState<GalleryPost>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get userId => _$args.$2;

  Stream<PaginationState<GalleryPost>> build(Account account, String userId);
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
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
