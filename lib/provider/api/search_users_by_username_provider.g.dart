// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_users_by_username_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(searchUsersByUsername)
const searchUsersByUsernameProvider = SearchUsersByUsernameFamily._();

final class SearchUsersByUsernameProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<UserDetailed>>,
          List<UserDetailed>,
          FutureOr<List<UserDetailed>>
        >
    with
        $FutureModifier<List<UserDetailed>>,
        $FutureProvider<List<UserDetailed>> {
  const SearchUsersByUsernameProvider._({
    required SearchUsersByUsernameFamily super.from,
    required (Account, String?, String?, {int? limit}) super.argument,
  }) : super(
         retry: null,
         name: r'searchUsersByUsernameProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchUsersByUsernameHash();

  @override
  String toString() {
    return r'searchUsersByUsernameProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<UserDetailed>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<UserDetailed>> create(Ref ref) {
    final argument = this.argument as (Account, String?, String?, {int? limit});
    return searchUsersByUsername(
      ref,
      argument.$1,
      argument.$2,
      argument.$3,
      limit: argument.limit,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SearchUsersByUsernameProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchUsersByUsernameHash() =>
    r'20df0d6393dc73c844f80984ba13916c3be7fa77';

final class SearchUsersByUsernameFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<UserDetailed>>,
          (Account, String?, String?, {int? limit})
        > {
  const SearchUsersByUsernameFamily._()
    : super(
        retry: null,
        name: r'searchUsersByUsernameProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchUsersByUsernameProvider call(
    Account account,
    String? username,
    String? host, {
    int? limit,
  }) => SearchUsersByUsernameProvider._(
    argument: (account, username, host, limit: limit),
    from: this,
  );

  @override
  String toString() => r'searchUsersByUsernameProvider';
}
