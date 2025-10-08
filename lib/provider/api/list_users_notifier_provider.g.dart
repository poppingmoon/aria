// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_users_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListUsersNotifier)
const listUsersNotifierProvider = ListUsersNotifierFamily._();

final class ListUsersNotifierProvider
    extends $AsyncNotifierProvider<ListUsersNotifier, List<UserDetailed>> {
  const ListUsersNotifierProvider._({
    required ListUsersNotifierFamily super.from,
    required (Account, String, {bool? forPublic}) super.argument,
  }) : super(
         retry: null,
         name: r'listUsersNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$listUsersNotifierHash();

  @override
  String toString() {
    return r'listUsersNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ListUsersNotifier create() => ListUsersNotifier();

  @override
  bool operator ==(Object other) {
    return other is ListUsersNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$listUsersNotifierHash() => r'd9b6a6c3137c8117dc4c856a4130377b599a8923';

final class ListUsersNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ListUsersNotifier,
          AsyncValue<List<UserDetailed>>,
          List<UserDetailed>,
          FutureOr<List<UserDetailed>>,
          (Account, String, {bool? forPublic})
        > {
  const ListUsersNotifierFamily._()
    : super(
        retry: null,
        name: r'listUsersNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ListUsersNotifierProvider call(
    Account account,
    String listId, {
    bool? forPublic,
  }) => ListUsersNotifierProvider._(
    argument: (account, listId, forPublic: forPublic),
    from: this,
  );

  @override
  String toString() => r'listUsersNotifierProvider';
}

abstract class _$ListUsersNotifier extends $AsyncNotifier<List<UserDetailed>> {
  late final _$args = ref.$arg as (Account, String, {bool? forPublic});
  Account get account => _$args.$1;
  String get listId => _$args.$2;
  bool? get forPublic => _$args.forPublic;

  FutureOr<List<UserDetailed>> build(
    Account account,
    String listId, {
    bool? forPublic,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2, forPublic: _$args.forPublic);
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
    element.handleValue(ref, created);
  }
}
