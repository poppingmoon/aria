// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tokenRepository)
const tokenRepositoryProvider = TokenRepositoryProvider._();

final class TokenRepositoryProvider
    extends
        $FunctionalProvider<TokenRepository, TokenRepository, TokenRepository>
    with $Provider<TokenRepository> {
  const TokenRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tokenRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tokenRepositoryHash();

  @$internal
  @override
  $ProviderElement<TokenRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TokenRepository create(Ref ref) {
    return tokenRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TokenRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TokenRepository>(value),
    );
  }
}

String _$tokenRepositoryHash() => r'9a2bc79396194648b96d2abc288c6d6ae29d71ff';
