// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_plays_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LikedPlaysNotifier)
const likedPlaysNotifierProvider = LikedPlaysNotifierFamily._();

final class LikedPlaysNotifierProvider
    extends
        $StreamNotifierProvider<
          LikedPlaysNotifier,
          PaginationState<FlashMyLikesResponse>
        > {
  const LikedPlaysNotifierProvider._({
    required LikedPlaysNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'likedPlaysNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$likedPlaysNotifierHash();

  @override
  String toString() {
    return r'likedPlaysNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  LikedPlaysNotifier create() => LikedPlaysNotifier();

  @override
  bool operator ==(Object other) {
    return other is LikedPlaysNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$likedPlaysNotifierHash() =>
    r'eb38fa8f4da77685b3e4e8bd58bcd24394a6b606';

final class LikedPlaysNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          LikedPlaysNotifier,
          AsyncValue<PaginationState<FlashMyLikesResponse>>,
          PaginationState<FlashMyLikesResponse>,
          Stream<PaginationState<FlashMyLikesResponse>>,
          Account
        > {
  const LikedPlaysNotifierFamily._()
    : super(
        retry: null,
        name: r'likedPlaysNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LikedPlaysNotifierProvider call(Account account) =>
      LikedPlaysNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'likedPlaysNotifierProvider';
}

abstract class _$LikedPlaysNotifier
    extends $StreamNotifier<PaginationState<FlashMyLikesResponse>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<FlashMyLikesResponse>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<FlashMyLikesResponse>>,
              PaginationState<FlashMyLikesResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<FlashMyLikesResponse>>,
                PaginationState<FlashMyLikesResponse>
              >,
              AsyncValue<PaginationState<FlashMyLikesResponse>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
