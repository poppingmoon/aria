// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(roles)
const rolesProvider = RolesFamily._();

final class RolesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<RolesListResponse>>,
          List<RolesListResponse>,
          FutureOr<List<RolesListResponse>>
        >
    with
        $FutureModifier<List<RolesListResponse>>,
        $FutureProvider<List<RolesListResponse>> {
  const RolesProvider._({
    required RolesFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'rolesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$rolesHash();

  @override
  String toString() {
    return r'rolesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<RolesListResponse>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<RolesListResponse>> create(Ref ref) {
    final argument = this.argument as Account;
    return roles(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is RolesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$rolesHash() => r'b77ac0db60487ecb1aca2e43d7d1e61d6f2bd1bf';

final class RolesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<RolesListResponse>>, Account> {
  const RolesFamily._()
    : super(
        retry: null,
        name: r'rolesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RolesProvider call(Account account) =>
      RolesProvider._(argument: account, from: this);

  @override
  String toString() => r'rolesProvider';
}
