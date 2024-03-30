// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pagesNotifierHash() => r'7cfe385db0f8501143bef85276f04078cafe2886';

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

abstract class _$PagesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Page>> {
  late final Account account;

  FutureOr<PaginationState<Page>> build(
    Account account,
  );
}

/// See also [PagesNotifier].
@ProviderFor(PagesNotifier)
const pagesNotifierProvider = PagesNotifierFamily();

/// See also [PagesNotifier].
class PagesNotifierFamily extends Family<AsyncValue<PaginationState<Page>>> {
  /// See also [PagesNotifier].
  const PagesNotifierFamily();

  /// See also [PagesNotifier].
  PagesNotifierProvider call(
    Account account,
  ) {
    return PagesNotifierProvider(
      account,
    );
  }

  @override
  PagesNotifierProvider getProviderOverride(
    covariant PagesNotifierProvider provider,
  ) {
    return call(
      provider.account,
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
  String? get name => r'pagesNotifierProvider';
}

/// See also [PagesNotifier].
class PagesNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    PagesNotifier, PaginationState<Page>> {
  /// See also [PagesNotifier].
  PagesNotifierProvider(
    Account account,
  ) : this._internal(
          () => PagesNotifier()..account = account,
          from: pagesNotifierProvider,
          name: r'pagesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pagesNotifierHash,
          dependencies: PagesNotifierFamily._dependencies,
          allTransitiveDependencies:
              PagesNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  PagesNotifierProvider._internal(
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
  FutureOr<PaginationState<Page>> runNotifierBuild(
    covariant PagesNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(PagesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PagesNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<PagesNotifier, PaginationState<Page>>
      createElement() {
    return _PagesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PagesNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PagesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Page>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _PagesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PagesNotifier,
        PaginationState<Page>> with PagesNotifierRef {
  _PagesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as PagesNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
