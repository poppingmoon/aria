// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_settings_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountSettingsNotifierHash() =>
    r'a4ff6aa1549f0f649c9c29259dde1f27576437c8';

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

abstract class _$AccountSettingsNotifier
    extends BuildlessNotifier<AccountSettings> {
  late final Account account;

  AccountSettings build(
    Account account,
  );
}

/// See also [AccountSettingsNotifier].
@ProviderFor(AccountSettingsNotifier)
const accountSettingsNotifierProvider = AccountSettingsNotifierFamily();

/// See also [AccountSettingsNotifier].
class AccountSettingsNotifierFamily extends Family<AccountSettings> {
  /// See also [AccountSettingsNotifier].
  const AccountSettingsNotifierFamily();

  /// See also [AccountSettingsNotifier].
  AccountSettingsNotifierProvider call(
    Account account,
  ) {
    return AccountSettingsNotifierProvider(
      account,
    );
  }

  @override
  AccountSettingsNotifierProvider getProviderOverride(
    covariant AccountSettingsNotifierProvider provider,
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
  String? get name => r'accountSettingsNotifierProvider';
}

/// See also [AccountSettingsNotifier].
class AccountSettingsNotifierProvider
    extends NotifierProviderImpl<AccountSettingsNotifier, AccountSettings> {
  /// See also [AccountSettingsNotifier].
  AccountSettingsNotifierProvider(
    Account account,
  ) : this._internal(
          () => AccountSettingsNotifier()..account = account,
          from: accountSettingsNotifierProvider,
          name: r'accountSettingsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountSettingsNotifierHash,
          dependencies: AccountSettingsNotifierFamily._dependencies,
          allTransitiveDependencies:
              AccountSettingsNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  AccountSettingsNotifierProvider._internal(
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
  AccountSettings runNotifierBuild(
    covariant AccountSettingsNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(AccountSettingsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AccountSettingsNotifierProvider._internal(
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
  NotifierProviderElement<AccountSettingsNotifier, AccountSettings>
      createElement() {
    return _AccountSettingsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountSettingsNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AccountSettingsNotifierRef on NotifierProviderRef<AccountSettings> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _AccountSettingsNotifierProviderElement
    extends NotifierProviderElement<AccountSettingsNotifier, AccountSettings>
    with AccountSettingsNotifierRef {
  _AccountSettingsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as AccountSettingsNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
