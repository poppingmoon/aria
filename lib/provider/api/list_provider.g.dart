// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listHash() => r'3910a35c760267b2eab411d34d4ecac7896c5bbe';

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

/// See also [list].
@ProviderFor(list)
const listProvider = ListFamily();

/// See also [list].
class ListFamily extends Family<AsyncValue<UsersListsShowResponse>> {
  /// See also [list].
  const ListFamily();

  /// See also [list].
  ListProvider call(Account account, String listId, {bool? forPublic}) {
    return ListProvider(account, listId, forPublic: forPublic);
  }

  @override
  ListProvider getProviderOverride(covariant ListProvider provider) {
    return call(
      provider.account,
      provider.listId,
      forPublic: provider.forPublic,
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
  String? get name => r'listProvider';
}

/// See also [list].
class ListProvider extends AutoDisposeFutureProvider<UsersListsShowResponse> {
  /// See also [list].
  ListProvider(Account account, String listId, {bool? forPublic})
    : this._internal(
        (ref) => list(ref as ListRef, account, listId, forPublic: forPublic),
        from: listProvider,
        name: r'listProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$listHash,
        dependencies: ListFamily._dependencies,
        allTransitiveDependencies: ListFamily._allTransitiveDependencies,
        account: account,
        listId: listId,
        forPublic: forPublic,
      );

  ListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.listId,
    required this.forPublic,
  }) : super.internal();

  final Account account;
  final String listId;
  final bool? forPublic;

  @override
  Override overrideWith(
    FutureOr<UsersListsShowResponse> Function(ListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ListProvider._internal(
        (ref) => create(ref as ListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        listId: listId,
        forPublic: forPublic,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UsersListsShowResponse> createElement() {
    return _ListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListProvider &&
        other.account == account &&
        other.listId == listId &&
        other.forPublic == forPublic;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, listId.hashCode);
    hash = _SystemHash.combine(hash, forPublic.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ListRef on AutoDisposeFutureProviderRef<UsersListsShowResponse> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `listId` of this provider.
  String get listId;

  /// The parameter `forPublic` of this provider.
  bool? get forPublic;
}

class _ListProviderElement
    extends AutoDisposeFutureProviderElement<UsersListsShowResponse>
    with ListRef {
  _ListProviderElement(super.provider);

  @override
  Account get account => (origin as ListProvider).account;
  @override
  String get listId => (origin as ListProvider).listId;
  @override
  bool? get forPublic => (origin as ListProvider).forPublic;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
