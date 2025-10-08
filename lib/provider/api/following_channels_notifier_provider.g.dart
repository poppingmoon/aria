// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'following_channels_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FollowingChannelsNotifier)
const followingChannelsNotifierProvider = FollowingChannelsNotifierFamily._();

final class FollowingChannelsNotifierProvider
    extends
        $StreamNotifierProvider<
          FollowingChannelsNotifier,
          PaginationState<CommunityChannel>
        > {
  const FollowingChannelsNotifierProvider._({
    required FollowingChannelsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'followingChannelsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$followingChannelsNotifierHash();

  @override
  String toString() {
    return r'followingChannelsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FollowingChannelsNotifier create() => FollowingChannelsNotifier();

  @override
  bool operator ==(Object other) {
    return other is FollowingChannelsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$followingChannelsNotifierHash() =>
    r'c88a531402bb859e0d9eebf98f25a57ff45f17fc';

final class FollowingChannelsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          FollowingChannelsNotifier,
          AsyncValue<PaginationState<CommunityChannel>>,
          PaginationState<CommunityChannel>,
          Stream<PaginationState<CommunityChannel>>,
          Account
        > {
  const FollowingChannelsNotifierFamily._()
    : super(
        retry: null,
        name: r'followingChannelsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FollowingChannelsNotifierProvider call(Account account) =>
      FollowingChannelsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'followingChannelsNotifierProvider';
}

abstract class _$FollowingChannelsNotifier
    extends $StreamNotifier<PaginationState<CommunityChannel>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<CommunityChannel>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<CommunityChannel>>,
              PaginationState<CommunityChannel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<CommunityChannel>>,
                PaginationState<CommunityChannel>
              >,
              AsyncValue<PaginationState<CommunityChannel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
