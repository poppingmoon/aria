// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(role)
const roleProvider = RoleFamily._();

final class RoleProvider
    extends
        $FunctionalProvider<
          AsyncValue<RolesListResponse>,
          RolesListResponse,
          FutureOr<RolesListResponse>
        >
    with
        $FutureModifier<RolesListResponse>,
        $FutureProvider<RolesListResponse> {
  const RoleProvider._({
    required RoleFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'roleProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$roleHash();

  @override
  String toString() {
    return r'roleProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<RolesListResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<RolesListResponse> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return role(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is RoleProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$roleHash() => r'869afb2d1f442e12aca741864e6c27d18d61631f';

final class RoleFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<RolesListResponse>,
          (Account, String)
        > {
  const RoleFamily._()
    : super(
        retry: null,
        name: r'roleProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RoleProvider call(Account account, String roleId) =>
      RoleProvider._(argument: (account, roleId), from: this);

  @override
  String toString() => r'roleProvider';
}
