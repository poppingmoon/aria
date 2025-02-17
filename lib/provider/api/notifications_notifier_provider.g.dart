// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationsNotifierHash() =>
    r'bbb5c5c5543aa8c43168070e7a13f2995b2cc914';

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

abstract class _$NotificationsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<
        PaginationState<INotificationsResponse>> {
  late final Account account;

  FutureOr<PaginationState<INotificationsResponse>> build(
    Account account,
  );
}

/// See also [NotificationsNotifier].
@ProviderFor(NotificationsNotifier)
const notificationsNotifierProvider = NotificationsNotifierFamily();

/// See also [NotificationsNotifier].
class NotificationsNotifierFamily
    extends Family<AsyncValue<PaginationState<INotificationsResponse>>> {
  /// See also [NotificationsNotifier].
  const NotificationsNotifierFamily();

  /// See also [NotificationsNotifier].
  NotificationsNotifierProvider call(
    Account account,
  ) {
    return NotificationsNotifierProvider(
      account,
    );
  }

  @override
  NotificationsNotifierProvider getProviderOverride(
    covariant NotificationsNotifierProvider provider,
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
  String? get name => r'notificationsNotifierProvider';
}

/// See also [NotificationsNotifier].
class NotificationsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<NotificationsNotifier,
        PaginationState<INotificationsResponse>> {
  /// See also [NotificationsNotifier].
  NotificationsNotifierProvider(
    Account account,
  ) : this._internal(
          () => NotificationsNotifier()..account = account,
          from: notificationsNotifierProvider,
          name: r'notificationsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationsNotifierHash,
          dependencies: NotificationsNotifierFamily._dependencies,
          allTransitiveDependencies:
              NotificationsNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  NotificationsNotifierProvider._internal(
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
  FutureOr<PaginationState<INotificationsResponse>> runNotifierBuild(
    covariant NotificationsNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(NotificationsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationsNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<NotificationsNotifier,
      PaginationState<INotificationsResponse>> createElement() {
    return _NotificationsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationsNotifierProvider && other.account == account;
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
mixin NotificationsNotifierRef on AutoDisposeAsyncNotifierProviderRef<
    PaginationState<INotificationsResponse>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _NotificationsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<NotificationsNotifier,
        PaginationState<INotificationsResponse>> with NotificationsNotifierRef {
  _NotificationsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as NotificationsNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
