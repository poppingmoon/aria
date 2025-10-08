// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_followers_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserFollowersNotifier)
const userFollowersNotifierProvider = UserFollowersNotifierFamily._();

final class UserFollowersNotifierProvider
    extends
        $StreamNotifierProvider<
          UserFollowersNotifier,
          PaginationState<Following>
        > {
  const UserFollowersNotifierProvider._({
    required UserFollowersNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'userFollowersNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userFollowersNotifierHash();

  @override
  String toString() {
    return r'userFollowersNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  UserFollowersNotifier create() => UserFollowersNotifier();

  @override
  bool operator ==(Object other) {
    return other is UserFollowersNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userFollowersNotifierHash() =>
    r'77b51c21ae542161c58df737fbd378e071bd84c2';

final class UserFollowersNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          UserFollowersNotifier,
          AsyncValue<PaginationState<Following>>,
          PaginationState<Following>,
          Stream<PaginationState<Following>>,
          (Account, String)
        > {
  const UserFollowersNotifierFamily._()
    : super(
        retry: null,
        name: r'userFollowersNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserFollowersNotifierProvider call(Account account, String userId) =>
      UserFollowersNotifierProvider._(argument: (account, userId), from: this);

  @override
  String toString() => r'userFollowersNotifierProvider';
}

abstract class _$UserFollowersNotifier
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
