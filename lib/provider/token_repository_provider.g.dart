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
        isAutoDispose: false,
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

String _$tokenRepositoryHash() => r'bdb0718a3f9cc60f931be7c9f7361d59f9a22c02';
