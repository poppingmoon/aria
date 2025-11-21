// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_settings_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AccountSettingsNotifier)
const accountSettingsNotifierProvider = AccountSettingsNotifierFamily._();

final class AccountSettingsNotifierProvider
    extends $NotifierProvider<AccountSettingsNotifier, AccountSettings> {
  const AccountSettingsNotifierProvider._({
    required AccountSettingsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'accountSettingsNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$accountSettingsNotifierHash();

  @override
  String toString() {
    return r'accountSettingsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  AccountSettingsNotifier create() => AccountSettingsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AccountSettings value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AccountSettings>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AccountSettingsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$accountSettingsNotifierHash() =>
    r'f4aafb2d7072ca2ab428674abd69667529b8f178';

final class AccountSettingsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AccountSettingsNotifier,
          AccountSettings,
          AccountSettings,
          AccountSettings,
          Account
        > {
  const AccountSettingsNotifierFamily._()
    : super(
        retry: null,
        name: r'accountSettingsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  AccountSettingsNotifierProvider call(Account account) =>
      AccountSettingsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'accountSettingsNotifierProvider';
}

abstract class _$AccountSettingsNotifier extends $Notifier<AccountSettings> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  AccountSettings build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AccountSettings, AccountSettings>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AccountSettings, AccountSettings>,
              AccountSettings,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
