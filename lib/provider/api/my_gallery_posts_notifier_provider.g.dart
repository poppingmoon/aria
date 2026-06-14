// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_gallery_posts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MyGalleryPostsNotifier)
final myGalleryPostsNotifierProvider = MyGalleryPostsNotifierFamily._();

final class MyGalleryPostsNotifierProvider
    extends
        $StreamNotifierProvider<
          MyGalleryPostsNotifier,
          PaginationState<GalleryPost>
        > {
  MyGalleryPostsNotifierProvider._({
    required MyGalleryPostsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'myGalleryPostsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$myGalleryPostsNotifierHash();

  @override
  String toString() {
    return r'myGalleryPostsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MyGalleryPostsNotifier create() => MyGalleryPostsNotifier();

  @override
  bool operator ==(Object other) {
    return other is MyGalleryPostsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$myGalleryPostsNotifierHash() =>
    r'0a6251ce39518db2154a2a8d327bb157e686a060';

final class MyGalleryPostsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          MyGalleryPostsNotifier,
          AsyncValue<PaginationState<GalleryPost>>,
          PaginationState<GalleryPost>,
          Stream<PaginationState<GalleryPost>>,
          Account
        > {
  MyGalleryPostsNotifierFamily._()
    : super(
        retry: null,
        name: r'myGalleryPostsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MyGalleryPostsNotifierProvider call(Account account) =>
      MyGalleryPostsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'myGalleryPostsNotifierProvider';
}

abstract class _$MyGalleryPostsNotifier
    extends $StreamNotifier<PaginationState<GalleryPost>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<GalleryPost>> build(Account account);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
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
    return element.handleCreate(ref, () => build(_$args));
  }
}
