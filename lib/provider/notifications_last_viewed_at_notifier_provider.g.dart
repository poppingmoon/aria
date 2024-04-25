// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_last_viewed_at_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationsLastViewedAtNotifierHash() =>
    r'902f2fb6eab8cf2699b3e90b9685979b4e224bc8';

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

abstract class _$NotificationsLastViewedAtNotifier
    extends BuildlessAutoDisposeNotifier<DateTime?> {
  late final Account account;

  DateTime? build(
    Account account,
  );
}

/// See also [NotificationsLastViewedAtNotifier].
@ProviderFor(NotificationsLastViewedAtNotifier)
const notificationsLastViewedAtNotifierProvider =
    NotificationsLastViewedAtNotifierFamily();

/// See also [NotificationsLastViewedAtNotifier].
class NotificationsLastViewedAtNotifierFamily extends Family<DateTime?> {
  /// See also [NotificationsLastViewedAtNotifier].
  const NotificationsLastViewedAtNotifierFamily();

  /// See also [NotificationsLastViewedAtNotifier].
  NotificationsLastViewedAtNotifierProvider call(
    Account account,
  ) {
    return NotificationsLastViewedAtNotifierProvider(
      account,
    );
  }

  @override
  NotificationsLastViewedAtNotifierProvider getProviderOverride(
    covariant NotificationsLastViewedAtNotifierProvider provider,
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
  String? get name => r'notificationsLastViewedAtNotifierProvider';
}

/// See also [NotificationsLastViewedAtNotifier].
class NotificationsLastViewedAtNotifierProvider
    extends AutoDisposeNotifierProviderImpl<NotificationsLastViewedAtNotifier,
        DateTime?> {
  /// See also [NotificationsLastViewedAtNotifier].
  NotificationsLastViewedAtNotifierProvider(
    Account account,
  ) : this._internal(
          () => NotificationsLastViewedAtNotifier()..account = account,
          from: notificationsLastViewedAtNotifierProvider,
          name: r'notificationsLastViewedAtNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationsLastViewedAtNotifierHash,
          dependencies: NotificationsLastViewedAtNotifierFamily._dependencies,
          allTransitiveDependencies: NotificationsLastViewedAtNotifierFamily
              ._allTransitiveDependencies,
          account: account,
        );

  NotificationsLastViewedAtNotifierProvider._internal(
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
  DateTime? runNotifierBuild(
    covariant NotificationsLastViewedAtNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(NotificationsLastViewedAtNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationsLastViewedAtNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<NotificationsLastViewedAtNotifier,
      DateTime?> createElement() {
    return _NotificationsLastViewedAtNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationsLastViewedAtNotifierProvider &&
        other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NotificationsLastViewedAtNotifierRef
    on AutoDisposeNotifierProviderRef<DateTime?> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _NotificationsLastViewedAtNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<
        NotificationsLastViewedAtNotifier,
        DateTime?> with NotificationsLastViewedAtNotifierRef {
  _NotificationsLastViewedAtNotifierProviderElement(super.provider);

  @override
  Account get account =>
      (origin as NotificationsLastViewedAtNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
