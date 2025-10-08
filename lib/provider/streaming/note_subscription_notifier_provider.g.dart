// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_subscription_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NoteSubscriptionNotifier)
const noteSubscriptionNotifierProvider = NoteSubscriptionNotifierFamily._();

final class NoteSubscriptionNotifierProvider
    extends $NotifierProvider<NoteSubscriptionNotifier, Map<String, int>> {
  const NoteSubscriptionNotifierProvider._({
    required NoteSubscriptionNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'noteSubscriptionNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$noteSubscriptionNotifierHash();

  @override
  String toString() {
    return r'noteSubscriptionNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  NoteSubscriptionNotifier create() => NoteSubscriptionNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, int>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is NoteSubscriptionNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$noteSubscriptionNotifierHash() =>
    r'd16216637a218914ecd35664cca30a24c3d544ac';

final class NoteSubscriptionNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          NoteSubscriptionNotifier,
          Map<String, int>,
          Map<String, int>,
          Map<String, int>,
          Account
        > {
  const NoteSubscriptionNotifierFamily._()
    : super(
        retry: null,
        name: r'noteSubscriptionNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  NoteSubscriptionNotifierProvider call(Account account) =>
      NoteSubscriptionNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'noteSubscriptionNotifierProvider';
}

abstract class _$NoteSubscriptionNotifier extends $Notifier<Map<String, int>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Map<String, int> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<Map<String, int>, Map<String, int>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, int>, Map<String, int>>,
              Map<String, int>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
