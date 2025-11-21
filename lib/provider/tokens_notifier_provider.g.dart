// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TokensNotifier)
const tokensNotifierProvider = TokensNotifierProvider._();

final class TokensNotifierProvider
    extends $NotifierProvider<TokensNotifier, Map<Account, String>> {
  const TokensNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tokensNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tokensNotifierHash();

  @$internal
  @override
  TokensNotifier create() => TokensNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<Account, String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<Account, String>>(value),
    );
  }
}

String _$tokensNotifierHash() => r'b94cc5de2722129b63cdf90baad29b4bef290abf';

abstract class _$TokensNotifier extends $Notifier<Map<Account, String>> {
  Map<Account, String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Map<Account, String>, Map<Account, String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<Account, String>, Map<Account, String>>,
              Map<Account, String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
