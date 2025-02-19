// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tokensNotifierHash() => r'b1337d2c48e7762430a75b2f175bf7d89718b996';

/// See also [TokensNotifier].
@ProviderFor(TokensNotifier)
final tokensNotifierProvider =
    NotifierProvider<TokensNotifier, Map<Account, String>>.internal(
      TokensNotifier.new,
      name: r'tokensNotifierProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$tokensNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$TokensNotifier = Notifier<Map<Account, String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
