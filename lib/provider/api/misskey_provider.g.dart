// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misskey_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(misskey)
const misskeyProvider = MisskeyFamily._();

final class MisskeyProvider
    extends $FunctionalProvider<Misskey, Misskey, Misskey>
    with $Provider<Misskey> {
  const MisskeyProvider._({
    required MisskeyFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'misskeyProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$misskeyHash();

  @override
  String toString() {
    return r'misskeyProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<Misskey> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Misskey create(Ref ref) {
    final argument = this.argument as Account;
    return misskey(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Misskey value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Misskey>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MisskeyProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$misskeyHash() => r'4d0958c3df375c44bb5495b631c952133ecaafcd';

final class MisskeyFamily extends $Family
    with $FunctionalFamilyOverride<Misskey, Account> {
  const MisskeyFamily._()
    : super(
        retry: null,
        name: r'misskeyProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  MisskeyProvider call(Account account) =>
      MisskeyProvider._(argument: account, from: this);

  @override
  String toString() => r'misskeyProvider';
}
