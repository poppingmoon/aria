// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UsersNotifier)
const usersNotifierProvider = UsersNotifierFamily._();

final class UsersNotifierProvider
    extends
        $StreamNotifierProvider<UsersNotifier, PaginationState<UserDetailed>> {
  const UsersNotifierProvider._({
    required UsersNotifierFamily super.from,
    required (Account, {UsersSortType? sort, Origin? userOrigin, String? host})
    super.argument,
  }) : super(
         retry: null,
         name: r'usersNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$usersNotifierHash();

  @override
  String toString() {
    return r'usersNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  UsersNotifier create() => UsersNotifier();

  @override
  bool operator ==(Object other) {
    return other is UsersNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$usersNotifierHash() => r'79b1679e7b54bcc0d143c5bdde0bc6053213dfc5';

final class UsersNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          UsersNotifier,
          AsyncValue<PaginationState<UserDetailed>>,
          PaginationState<UserDetailed>,
          Stream<PaginationState<UserDetailed>>,
          (Account, {UsersSortType? sort, Origin? userOrigin, String? host})
        > {
  const UsersNotifierFamily._()
    : super(
        retry: null,
        name: r'usersNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UsersNotifierProvider call(
    Account account, {
    UsersSortType? sort,
    Origin? userOrigin,
    String? host,
  }) => UsersNotifierProvider._(
    argument: (account, sort: sort, userOrigin: userOrigin, host: host),
    from: this,
  );

  @override
  String toString() => r'usersNotifierProvider';
}

abstract class _$UsersNotifier
    extends $StreamNotifier<PaginationState<UserDetailed>> {
  late final _$args =
      ref.$arg
          as (Account, {UsersSortType? sort, Origin? userOrigin, String? host});
  Account get account => _$args.$1;
  UsersSortType? get sort => _$args.sort;
  Origin? get userOrigin => _$args.userOrigin;
  String? get host => _$args.host;

  Stream<PaginationState<UserDetailed>> build(
    Account account, {
    UsersSortType? sort,
    Origin? userOrigin,
    String? host,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      _$args.$1,
      sort: _$args.sort,
      userOrigin: _$args.userOrigin,
      host: _$args.host,
    );
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<UserDetailed>>,
              PaginationState<UserDetailed>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<UserDetailed>>,
                PaginationState<UserDetailed>
              >,
              AsyncValue<PaginationState<UserDetailed>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
