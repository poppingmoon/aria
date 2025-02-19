// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listsNotifierHash() => r'2930e11f6d4772ecfd8240337f3f843c7c24cb20';

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

abstract class _$ListsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<UsersList>> {
  late final Account account;

  FutureOr<List<UsersList>> build(Account account);
}

/// See also [ListsNotifier].
@ProviderFor(ListsNotifier)
const listsNotifierProvider = ListsNotifierFamily();

/// See also [ListsNotifier].
class ListsNotifierFamily extends Family<AsyncValue<List<UsersList>>> {
  /// See also [ListsNotifier].
  const ListsNotifierFamily();

  /// See also [ListsNotifier].
  ListsNotifierProvider call(Account account) {
    return ListsNotifierProvider(account);
  }

  @override
  ListsNotifierProvider getProviderOverride(
    covariant ListsNotifierProvider provider,
  ) {
    return call(provider.account);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'listsNotifierProvider';
}

/// See also [ListsNotifier].
class ListsNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<ListsNotifier, List<UsersList>> {
  /// See also [ListsNotifier].
  ListsNotifierProvider(Account account)
    : this._internal(
        () => ListsNotifier()..account = account,
        from: listsNotifierProvider,
        name: r'listsNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$listsNotifierHash,
        dependencies: ListsNotifierFamily._dependencies,
        allTransitiveDependencies:
            ListsNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  ListsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
  }) : super.internal();

  final Account account;

  @override
  FutureOr<List<UsersList>> runNotifierBuild(covariant ListsNotifier notifier) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(ListsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ListsNotifierProvider._internal(
        () => create()..account = account,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ListsNotifier, List<UsersList>>
  createElement() {
    return _ListsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ListsNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ListsNotifierRef on AutoDisposeAsyncNotifierProviderRef<List<UsersList>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _ListsNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<ListsNotifier, List<UsersList>>
    with ListsNotifierRef {
  _ListsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ListsNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
