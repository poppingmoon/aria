// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_users_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchUsersNotifier)
final searchUsersNotifierProvider = SearchUsersNotifierFamily._();

final class SearchUsersNotifierProvider
    extends
        $StreamNotifierProvider<
          SearchUsersNotifier,
          PaginationState<UserDetailed>
        > {
  SearchUsersNotifierProvider._({
    required SearchUsersNotifierFamily super.from,
    required (Account, String, {Origin? userOrigin}) super.argument,
  }) : super(
         retry: null,
         name: r'searchUsersNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchUsersNotifierHash();

  @override
  String toString() {
    return r'searchUsersNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  SearchUsersNotifier create() => SearchUsersNotifier();

  @override
  bool operator ==(Object other) {
    return other is SearchUsersNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchUsersNotifierHash() =>
    r'0189374919488391d778aabf120ae5fd83f598aa';

final class SearchUsersNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          SearchUsersNotifier,
          AsyncValue<PaginationState<UserDetailed>>,
          PaginationState<UserDetailed>,
          Stream<PaginationState<UserDetailed>>,
          (Account, String, {Origin? userOrigin})
        > {
  SearchUsersNotifierFamily._()
    : super(
        retry: null,
        name: r'searchUsersNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchUsersNotifierProvider call(
    Account account,
    String query, {
    Origin? userOrigin,
  }) => SearchUsersNotifierProvider._(
    argument: (account, query, userOrigin: userOrigin),
    from: this,
  );

  @override
  String toString() => r'searchUsersNotifierProvider';
}

abstract class _$SearchUsersNotifier
    extends $StreamNotifier<PaginationState<UserDetailed>> {
  late final _$args = ref.$arg as (Account, String, {Origin? userOrigin});
  Account get account => _$args.$1;
  String get query => _$args.$2;
  Origin? get userOrigin => _$args.userOrigin;

  Stream<PaginationState<UserDetailed>> build(
    Account account,
    String query, {
    Origin? userOrigin,
  });
  @$mustCallSuper
  @override
  void runBuild() {
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
    element.handleCreate(
      ref,
      () => build(_$args.$1, _$args.$2, userOrigin: _$args.userOrigin),
    );
  }
}
