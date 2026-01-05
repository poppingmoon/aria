// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_pages_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LikedPagesNotifier)
final likedPagesNotifierProvider = LikedPagesNotifierFamily._();

final class LikedPagesNotifierProvider
    extends
        $StreamNotifierProvider<
          LikedPagesNotifier,
          PaginationState<IPageLikesResponse>
        > {
  LikedPagesNotifierProvider._({
    required LikedPagesNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'likedPagesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$likedPagesNotifierHash();

  @override
  String toString() {
    return r'likedPagesNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  LikedPagesNotifier create() => LikedPagesNotifier();

  @override
  bool operator ==(Object other) {
    return other is LikedPagesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$likedPagesNotifierHash() =>
    r'd2141ec1e5e2791912a38c33c70638e4043caff1';

final class LikedPagesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          LikedPagesNotifier,
          AsyncValue<PaginationState<IPageLikesResponse>>,
          PaginationState<IPageLikesResponse>,
          Stream<PaginationState<IPageLikesResponse>>,
          Account
        > {
  LikedPagesNotifierFamily._()
    : super(
        retry: null,
        name: r'likedPagesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LikedPagesNotifierProvider call(Account account) =>
      LikedPagesNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'likedPagesNotifierProvider';
}

abstract class _$LikedPagesNotifier
    extends $StreamNotifier<PaginationState<IPageLikesResponse>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<IPageLikesResponse>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<IPageLikesResponse>>,
              PaginationState<IPageLikesResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<IPageLikesResponse>>,
                PaginationState<IPageLikesResponse>
              >,
              AsyncValue<PaginationState<IPageLikesResponse>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
