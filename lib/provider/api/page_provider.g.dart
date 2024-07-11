// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pageNotifierHash() => r'4de4105411c45ac9e0219999e05152a2f85069ef';

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

abstract class _$PageNotifier extends BuildlessAutoDisposeAsyncNotifier<Page> {
  late final Account account;
  late final String? pageId;
  late final String? pageName;
  late final String? username;

  FutureOr<Page> build(
    Account account, {
    String? pageId,
    String? pageName,
    String? username,
  });
}

/// See also [PageNotifier].
@ProviderFor(PageNotifier)
const pageNotifierProvider = PageNotifierFamily();

/// See also [PageNotifier].
class PageNotifierFamily extends Family<AsyncValue<Page>> {
  /// See also [PageNotifier].
  const PageNotifierFamily();

  /// See also [PageNotifier].
  PageNotifierProvider call(
    Account account, {
    String? pageId,
    String? pageName,
    String? username,
  }) {
    return PageNotifierProvider(
      account,
      pageId: pageId,
      pageName: pageName,
      username: username,
    );
  }

  @override
  PageNotifierProvider getProviderOverride(
    covariant PageNotifierProvider provider,
  ) {
    return call(
      provider.account,
      pageId: provider.pageId,
      pageName: provider.pageName,
      username: provider.username,
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
  String? get name => r'pageNotifierProvider';
}

/// See also [PageNotifier].
class PageNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PageNotifier, Page> {
  /// See also [PageNotifier].
  PageNotifierProvider(
    Account account, {
    String? pageId,
    String? pageName,
    String? username,
  }) : this._internal(
          () => PageNotifier()
            ..account = account
            ..pageId = pageId
            ..pageName = pageName
            ..username = username,
          from: pageNotifierProvider,
          name: r'pageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pageNotifierHash,
          dependencies: PageNotifierFamily._dependencies,
          allTransitiveDependencies:
              PageNotifierFamily._allTransitiveDependencies,
          account: account,
          pageId: pageId,
          pageName: pageName,
          username: username,
        );

  PageNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.pageId,
    required this.pageName,
    required this.username,
  }) : super.internal();

  final Account account;
  final String? pageId;
  final String? pageName;
  final String? username;

  @override
  FutureOr<Page> runNotifierBuild(
    covariant PageNotifier notifier,
  ) {
    return notifier.build(
      account,
      pageId: pageId,
      pageName: pageName,
      username: username,
    );
  }

  @override
  Override overrideWith(PageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PageNotifierProvider._internal(
        () => create()
          ..account = account
          ..pageId = pageId
          ..pageName = pageName
          ..username = username,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        pageId: pageId,
        pageName: pageName,
        username: username,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PageNotifier, Page> createElement() {
    return _PageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PageNotifierProvider &&
        other.account == account &&
        other.pageId == pageId &&
        other.pageName == pageName &&
        other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, pageId.hashCode);
    hash = _SystemHash.combine(hash, pageName.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PageNotifierRef on AutoDisposeAsyncNotifierProviderRef<Page> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `pageId` of this provider.
  String? get pageId;

  /// The parameter `pageName` of this provider.
  String? get pageName;

  /// The parameter `username` of this provider.
  String? get username;
}

class _PageNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PageNotifier, Page>
    with PageNotifierRef {
  _PageNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as PageNotifierProvider).account;
  @override
  String? get pageId => (origin as PageNotifierProvider).pageId;
  @override
  String? get pageName => (origin as PageNotifierProvider).pageName;
  @override
  String? get username => (origin as PageNotifierProvider).username;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
