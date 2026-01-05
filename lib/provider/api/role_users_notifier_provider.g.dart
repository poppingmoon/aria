// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_users_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RoleUsersNotifier)
final roleUsersNotifierProvider = RoleUsersNotifierFamily._();

final class RoleUsersNotifierProvider
    extends
        $StreamNotifierProvider<
          RoleUsersNotifier,
          PaginationState<RolesUsersResponse>
        > {
  RoleUsersNotifierProvider._({
    required RoleUsersNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'roleUsersNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$roleUsersNotifierHash();

  @override
  String toString() {
    return r'roleUsersNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  RoleUsersNotifier create() => RoleUsersNotifier();

  @override
  bool operator ==(Object other) {
    return other is RoleUsersNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$roleUsersNotifierHash() => r'22616a56e85834765b55410a38565e98dd768368';

final class RoleUsersNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          RoleUsersNotifier,
          AsyncValue<PaginationState<RolesUsersResponse>>,
          PaginationState<RolesUsersResponse>,
          Stream<PaginationState<RolesUsersResponse>>,
          (Account, String)
        > {
  RoleUsersNotifierFamily._()
    : super(
        retry: null,
        name: r'roleUsersNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RoleUsersNotifierProvider call(Account account, String roleId) =>
      RoleUsersNotifierProvider._(argument: (account, roleId), from: this);

  @override
  String toString() => r'roleUsersNotifierProvider';
}

abstract class _$RoleUsersNotifier
    extends $StreamNotifier<PaginationState<RolesUsersResponse>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get roleId => _$args.$2;

  Stream<PaginationState<RolesUsersResponse>> build(
    Account account,
    String roleId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<RolesUsersResponse>>,
              PaginationState<RolesUsersResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<RolesUsersResponse>>,
                PaginationState<RolesUsersResponse>
              >,
              AsyncValue<PaginationState<RolesUsersResponse>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
