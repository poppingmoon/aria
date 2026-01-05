// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_reactions_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserReactionsNotifier)
final userReactionsNotifierProvider = UserReactionsNotifierFamily._();

final class UserReactionsNotifierProvider
    extends
        $StreamNotifierProvider<
          UserReactionsNotifier,
          PaginationState<UsersReactionsResponse>
        > {
  UserReactionsNotifierProvider._({
    required UserReactionsNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'userReactionsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userReactionsNotifierHash();

  @override
  String toString() {
    return r'userReactionsNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  UserReactionsNotifier create() => UserReactionsNotifier();

  @override
  bool operator ==(Object other) {
    return other is UserReactionsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userReactionsNotifierHash() =>
    r'2849f3191c86222924d004ca3b25dc3c0c7776ca';

final class UserReactionsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          UserReactionsNotifier,
          AsyncValue<PaginationState<UsersReactionsResponse>>,
          PaginationState<UsersReactionsResponse>,
          Stream<PaginationState<UsersReactionsResponse>>,
          (Account, String)
        > {
  UserReactionsNotifierFamily._()
    : super(
        retry: null,
        name: r'userReactionsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserReactionsNotifierProvider call(Account account, String userId) =>
      UserReactionsNotifierProvider._(argument: (account, userId), from: this);

  @override
  String toString() => r'userReactionsNotifierProvider';
}

abstract class _$UserReactionsNotifier
    extends $StreamNotifier<PaginationState<UsersReactionsResponse>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get userId => _$args.$2;

  Stream<PaginationState<UsersReactionsResponse>> build(
    Account account,
    String userId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<UsersReactionsResponse>>,
              PaginationState<UsersReactionsResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<UsersReactionsResponse>>,
                PaginationState<UsersReactionsResponse>
              >,
              AsyncValue<PaginationState<UsersReactionsResponse>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
