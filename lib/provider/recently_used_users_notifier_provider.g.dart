// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_used_users_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RecentlyUsedUsersNotifier)
final recentlyUsedUsersNotifierProvider = RecentlyUsedUsersNotifierFamily._();

final class RecentlyUsedUsersNotifierProvider
    extends
        $AsyncNotifierProvider<RecentlyUsedUsersNotifier, List<UserDetailed>> {
  RecentlyUsedUsersNotifierProvider._({
    required RecentlyUsedUsersNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'recentlyUsedUsersNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$recentlyUsedUsersNotifierHash();

  @override
  String toString() {
    return r'recentlyUsedUsersNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RecentlyUsedUsersNotifier create() => RecentlyUsedUsersNotifier();

  @override
  bool operator ==(Object other) {
    return other is RecentlyUsedUsersNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$recentlyUsedUsersNotifierHash() =>
    r'7da06ffb726fbc574f9e49cb47ca6ebea06d7495';

final class RecentlyUsedUsersNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          RecentlyUsedUsersNotifier,
          AsyncValue<List<UserDetailed>>,
          List<UserDetailed>,
          FutureOr<List<UserDetailed>>,
          Account
        > {
  RecentlyUsedUsersNotifierFamily._()
    : super(
        retry: null,
        name: r'recentlyUsedUsersNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  RecentlyUsedUsersNotifierProvider call(Account account) =>
      RecentlyUsedUsersNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'recentlyUsedUsersNotifierProvider';
}

abstract class _$RecentlyUsedUsersNotifier
    extends $AsyncNotifier<List<UserDetailed>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  FutureOr<List<UserDetailed>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<UserDetailed>>, List<UserDetailed>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<UserDetailed>>, List<UserDetailed>>,
              AsyncValue<List<UserDetailed>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
