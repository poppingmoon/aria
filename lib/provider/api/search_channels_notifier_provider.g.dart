// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_channels_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchChannelsNotifier)
const searchChannelsNotifierProvider = SearchChannelsNotifierFamily._();

final class SearchChannelsNotifierProvider
    extends
        $StreamNotifierProvider<
          SearchChannelsNotifier,
          PaginationState<CommunityChannel>
        > {
  const SearchChannelsNotifierProvider._({
    required SearchChannelsNotifierFamily super.from,
    required (Account, String, {bool includeDescription}) super.argument,
  }) : super(
         retry: null,
         name: r'searchChannelsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchChannelsNotifierHash();

  @override
  String toString() {
    return r'searchChannelsNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  SearchChannelsNotifier create() => SearchChannelsNotifier();

  @override
  bool operator ==(Object other) {
    return other is SearchChannelsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchChannelsNotifierHash() =>
    r'58c97152232e15d73b7495ee90b7663e8c685afb';

final class SearchChannelsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          SearchChannelsNotifier,
          AsyncValue<PaginationState<CommunityChannel>>,
          PaginationState<CommunityChannel>,
          Stream<PaginationState<CommunityChannel>>,
          (Account, String, {bool includeDescription})
        > {
  const SearchChannelsNotifierFamily._()
    : super(
        retry: null,
        name: r'searchChannelsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchChannelsNotifierProvider call(
    Account account,
    String query, {
    bool includeDescription = true,
  }) => SearchChannelsNotifierProvider._(
    argument: (account, query, includeDescription: includeDescription),
    from: this,
  );

  @override
  String toString() => r'searchChannelsNotifierProvider';
}

abstract class _$SearchChannelsNotifier
    extends $StreamNotifier<PaginationState<CommunityChannel>> {
  late final _$args = ref.$arg as (Account, String, {bool includeDescription});
  Account get account => _$args.$1;
  String get query => _$args.$2;
  bool get includeDescription => _$args.includeDescription;

  Stream<PaginationState<CommunityChannel>> build(
    Account account,
    String query, {
    bool includeDescription = true,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      _$args.$1,
      _$args.$2,
      includeDescription: _$args.includeDescription,
    );
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<CommunityChannel>>,
              PaginationState<CommunityChannel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<CommunityChannel>>,
                PaginationState<CommunityChannel>
              >,
              AsyncValue<PaginationState<CommunityChannel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
