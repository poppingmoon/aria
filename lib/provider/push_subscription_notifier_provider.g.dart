// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_subscription_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PushSubscriptionNotifier)
final pushSubscriptionNotifierProvider = PushSubscriptionNotifierFamily._();

final class PushSubscriptionNotifierProvider
    extends $NotifierProvider<PushSubscriptionNotifier, String?> {
  PushSubscriptionNotifierProvider._({
    required PushSubscriptionNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'pushSubscriptionNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pushSubscriptionNotifierHash();

  @override
  String toString() {
    return r'pushSubscriptionNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PushSubscriptionNotifier create() => PushSubscriptionNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PushSubscriptionNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pushSubscriptionNotifierHash() =>
    r'f5c3380f0dfbf57b9723b4551e8ee46882588d76';

final class PushSubscriptionNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          PushSubscriptionNotifier,
          String?,
          String?,
          String?,
          Account
        > {
  PushSubscriptionNotifierFamily._()
    : super(
        retry: null,
        name: r'pushSubscriptionNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PushSubscriptionNotifierProvider call(Account account) =>
      PushSubscriptionNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'pushSubscriptionNotifierProvider';
}

abstract class _$PushSubscriptionNotifier extends $Notifier<String?> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  String? build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
