// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_lists_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userLists)
const userListsProvider = UserListsFamily._();

final class UserListsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<UsersList>>,
          List<UsersList>,
          FutureOr<List<UsersList>>
        >
    with $FutureModifier<List<UsersList>>, $FutureProvider<List<UsersList>> {
  const UserListsProvider._({
    required UserListsFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'userListsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userListsHash();

  @override
  String toString() {
    return r'userListsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<UsersList>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<UsersList>> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return userLists(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is UserListsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userListsHash() => r'b377b530088f03cf69ee7236d9826c7e86f7ba57';

final class UserListsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<UsersList>>,
          (Account, String)
        > {
  const UserListsFamily._()
    : super(
        retry: null,
        name: r'userListsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserListsProvider call(Account account, String userId) =>
      UserListsProvider._(argument: (account, userId), from: this);

  @override
  String toString() => r'userListsProvider';
}
