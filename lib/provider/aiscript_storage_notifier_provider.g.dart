// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiscript_storage_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AiscriptStorageNotifier)
final aiscriptStorageNotifierProvider = AiscriptStorageNotifierFamily._();

final class AiscriptStorageNotifierProvider
    extends $NotifierProvider<AiscriptStorageNotifier, void> {
  AiscriptStorageNotifierProvider._({
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
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
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
    r'9bcb8955da14eb2eef77369f462f7f58fa69714e';

final class AiscriptStorageNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AiscriptStorageNotifier,
          void,
          void,
          void,
          Account
        > {
  AiscriptStorageNotifierFamily._()
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

abstract class _$AiscriptStorageNotifier extends $Notifier<void> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  void build(Account account);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
