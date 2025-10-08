// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AccountsNotifier)
const accountsNotifierProvider = AccountsNotifierProvider._();

final class AccountsNotifierProvider
    extends $NotifierProvider<AccountsNotifier, List<Account>> {
  const AccountsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountsNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountsNotifierHash();

  @$internal
  @override
  AccountsNotifier create() => AccountsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Account> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Account>>(value),
    );
  }
}

String _$accountsNotifierHash() => r'9dc83b91685d182b59dc7080ff1f88c98394e3c7';

abstract class _$AccountsNotifier extends $Notifier<List<Account>> {
  List<Account> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Account>, List<Account>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Account>, List<Account>>,
              List<Account>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
