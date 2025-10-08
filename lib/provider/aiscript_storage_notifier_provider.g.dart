// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiscript_storage_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AiscriptStorageNotifier)
const aiscriptStorageNotifierProvider = AiscriptStorageNotifierFamily._();

final class AiscriptStorageNotifierProvider
    extends $NotifierProvider<AiscriptStorageNotifier, Map<String, String>> {
  const AiscriptStorageNotifierProvider._({
    required AiscriptStorageNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'aiscriptStorageNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$aiscriptStorageNotifierHash();

  @override
  String toString() {
    return r'aiscriptStorageNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  AiscriptStorageNotifier create() => AiscriptStorageNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, String>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AiscriptStorageNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$aiscriptStorageNotifierHash() =>
    r'7db948673c9ab7cf747cd8327aae2e4367192053';

final class AiscriptStorageNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AiscriptStorageNotifier,
          Map<String, String>,
          Map<String, String>,
          Map<String, String>,
          Account
        > {
  const AiscriptStorageNotifierFamily._()
    : super(
        retry: null,
        name: r'aiscriptStorageNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AiscriptStorageNotifierProvider call(Account account) =>
      AiscriptStorageNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'aiscriptStorageNotifierProvider';
}

abstract class _$AiscriptStorageNotifier
    extends $Notifier<Map<String, String>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Map<String, String> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<Map<String, String>, Map<String, String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, String>, Map<String, String>>,
              Map<String, String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
