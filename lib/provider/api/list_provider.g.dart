// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(list)
const listProvider = ListFamily._();

final class ListProvider
    extends
        $FunctionalProvider<
          AsyncValue<UsersListsShowResponse>,
          UsersListsShowResponse,
          FutureOr<UsersListsShowResponse>
        >
    with
        $FutureModifier<UsersListsShowResponse>,
        $FutureProvider<UsersListsShowResponse> {
  const ListProvider._({
    required ListFamily super.from,
    required (Account, String, {bool? forPublic}) super.argument,
  }) : super(
         retry: null,
         name: r'listProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$listHash();

  @override
  String toString() {
    return r'listProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<UsersListsShowResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UsersListsShowResponse> create(Ref ref) {
    final argument = this.argument as (Account, String, {bool? forPublic});
    return list(ref, argument.$1, argument.$2, forPublic: argument.forPublic);
  }

  @override
  bool operator ==(Object other) {
    return other is ListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$listHash() => r'3910a35c760267b2eab411d34d4ecac7896c5bbe';

final class ListFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<UsersListsShowResponse>,
          (Account, String, {bool? forPublic})
        > {
  const ListFamily._()
    : super(
        retry: null,
        name: r'listProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ListProvider call(Account account, String listId, {bool? forPublic}) =>
      ListProvider._(
        argument: (account, listId, forPublic: forPublic),
        from: this,
      );

  @override
  String toString() => r'listProvider';
}
