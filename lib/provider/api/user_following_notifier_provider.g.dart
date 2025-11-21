// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_following_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserFollowingNotifier)
const userFollowingNotifierProvider = UserFollowingNotifierFamily._();

final class UserFollowingNotifierProvider
    extends
        $StreamNotifierProvider<
          UserFollowingNotifier,
          PaginationState<Following>
        > {
  const UserFollowingNotifierProvider._({
    required UserFollowingNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'userFollowingNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userFollowingNotifierHash();

  @override
  String toString() {
    return r'userFollowingNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  UserFollowingNotifier create() => UserFollowingNotifier();

  @override
  bool operator ==(Object other) {
    return other is UserFollowingNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userFollowingNotifierHash() =>
    r'1f86e6794ca06aff0637cd3c44c27245c2e533c5';

final class UserFollowingNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          UserFollowingNotifier,
          AsyncValue<PaginationState<Following>>,
          PaginationState<Following>,
          Stream<PaginationState<Following>>,
          (Account, String)
        > {
  const UserFollowingNotifierFamily._()
    : super(
        retry: null,
        name: r'userFollowingNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserFollowingNotifierProvider call(Account account, String userId) =>
      UserFollowingNotifierProvider._(argument: (account, userId), from: this);

  @override
  String toString() => r'userFollowingNotifierProvider';
}

abstract class _$UserFollowingNotifier
    extends $StreamNotifier<PaginationState<Following>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get userId => _$args.$2;

  Stream<PaginationState<Following>> build(Account account, String userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<Following>>,
              PaginationState<Following>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<Following>>,
                PaginationState<Following>
              >,
              AsyncValue<PaginationState<Following>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
