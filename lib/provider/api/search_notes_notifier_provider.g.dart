// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchNotesNotifierHash() =>
    r'ddd7266f5de1fd8f5945f36018c18cb9fc87de32';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SearchNotesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Note>> {
  late final Account account;
  late final String query;
  late final String? userId;
  late final String? channelId;
  late final bool? localOnly;
  late final String? untilId;

  FutureOr<PaginationState<Note>> build(
    Account account,
    String query, {
    String? userId,
    String? channelId,
    bool? localOnly,
    String? untilId,
  });
}

/// See also [SearchNotesNotifier].
@ProviderFor(SearchNotesNotifier)
const searchNotesNotifierProvider = SearchNotesNotifierFamily();

/// See also [SearchNotesNotifier].
class SearchNotesNotifierFamily
    extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [SearchNotesNotifier].
  const SearchNotesNotifierFamily();

  /// See also [SearchNotesNotifier].
  SearchNotesNotifierProvider call(
    Account account,
    String query, {
    String? userId,
    String? channelId,
    bool? localOnly,
    String? untilId,
  }) {
    return SearchNotesNotifierProvider(
      account,
      query,
      userId: userId,
      channelId: channelId,
      localOnly: localOnly,
      untilId: untilId,
    );
  }

  @override
  SearchNotesNotifierProvider getProviderOverride(
    covariant SearchNotesNotifierProvider provider,
  ) {
    return call(
      provider.account,
      provider.query,
      userId: provider.userId,
      channelId: provider.channelId,
      localOnly: provider.localOnly,
      untilId: provider.untilId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchNotesNotifierProvider';
}

/// See also [SearchNotesNotifier].
class SearchNotesNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    SearchNotesNotifier, PaginationState<Note>> {
  /// See also [SearchNotesNotifier].
  SearchNotesNotifierProvider(
    Account account,
    String query, {
    String? userId,
    String? channelId,
    bool? localOnly,
    String? untilId,
  }) : this._internal(
          () => SearchNotesNotifier()
            ..account = account
            ..query = query
            ..userId = userId
            ..channelId = channelId
            ..localOnly = localOnly
            ..untilId = untilId,
          from: searchNotesNotifierProvider,
          name: r'searchNotesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchNotesNotifierHash,
          dependencies: SearchNotesNotifierFamily._dependencies,
          allTransitiveDependencies:
              SearchNotesNotifierFamily._allTransitiveDependencies,
          account: account,
          query: query,
          userId: userId,
          channelId: channelId,
          localOnly: localOnly,
          untilId: untilId,
        );

  SearchNotesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.query,
    required this.userId,
    required this.channelId,
    required this.localOnly,
    required this.untilId,
  }) : super.internal();

  final Account account;
  final String query;
  final String? userId;
  final String? channelId;
  final bool? localOnly;
  final String? untilId;

  @override
  FutureOr<PaginationState<Note>> runNotifierBuild(
    covariant SearchNotesNotifier notifier,
  ) {
    return notifier.build(
      account,
      query,
      userId: userId,
      channelId: channelId,
      localOnly: localOnly,
      untilId: untilId,
    );
  }

  @override
  Override overrideWith(SearchNotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchNotesNotifierProvider._internal(
        () => create()
          ..account = account
          ..query = query
          ..userId = userId
          ..channelId = channelId
          ..localOnly = localOnly
          ..untilId = untilId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        query: query,
        userId: userId,
        channelId: channelId,
        localOnly: localOnly,
        untilId: untilId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SearchNotesNotifier,
      PaginationState<Note>> createElement() {
    return _SearchNotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchNotesNotifierProvider &&
        other.account == account &&
        other.query == query &&
        other.userId == userId &&
        other.channelId == channelId &&
        other.localOnly == localOnly &&
        other.untilId == untilId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, channelId.hashCode);
    hash = _SystemHash.combine(hash, localOnly.hashCode);
    hash = _SystemHash.combine(hash, untilId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchNotesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `userId` of this provider.
  String? get userId;

  /// The parameter `channelId` of this provider.
  String? get channelId;

  /// The parameter `localOnly` of this provider.
  bool? get localOnly;

  /// The parameter `untilId` of this provider.
  String? get untilId;
}

class _SearchNotesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SearchNotesNotifier,
        PaginationState<Note>> with SearchNotesNotifierRef {
  _SearchNotesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as SearchNotesNotifierProvider).account;
  @override
  String get query => (origin as SearchNotesNotifierProvider).query;
  @override
  String? get userId => (origin as SearchNotesNotifierProvider).userId;
  @override
  String? get channelId => (origin as SearchNotesNotifierProvider).channelId;
  @override
  bool? get localOnly => (origin as SearchNotesNotifierProvider).localOnly;
  @override
  String? get untilId => (origin as SearchNotesNotifierProvider).untilId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
