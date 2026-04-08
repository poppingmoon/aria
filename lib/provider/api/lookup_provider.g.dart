// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lookup_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(lookup)
final lookupProvider = LookupFamily._();

final class LookupProvider
    extends $FunctionalProvider<AsyncValue<Lookup>, Lookup, FutureOr<Lookup>>
    with $FutureModifier<Lookup>, $FutureProvider<Lookup> {
  LookupProvider._({
    required LookupFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'lookupProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$lookupHash();

  @override
  String toString() {
    return r'lookupProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<Lookup> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Lookup> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return lookup(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is LookupProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$lookupHash() => r'58ebd7169e38498dd6d119c24fc67d351eafbef5';

final class LookupFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Lookup>, (Account, String)> {
  LookupFamily._()
    : super(
        retry: null,
        name: r'lookupProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LookupProvider call(Account account, String url) =>
      LookupProvider._(argument: (account, url), from: this);

  @override
  String toString() => r'lookupProvider';
}
