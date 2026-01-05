// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(token)
final tokenProvider = TokenFamily._();

final class TokenProvider extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  TokenProvider._({
    required TokenFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'tokenProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$tokenHash();

  @override
  String toString() {
    return r'tokenProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    final argument = this.argument as Account;
    return token(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TokenProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tokenHash() => r'd0cf5e964101cd703c8341205f649f0793dd2261';

final class TokenFamily extends $Family
    with $FunctionalFamilyOverride<String?, Account> {
  TokenFamily._()
    : super(
        retry: null,
        name: r'tokenProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  TokenProvider call(Account account) =>
      TokenProvider._(argument: account, from: this);

  @override
  String toString() => r'tokenProvider';
}
