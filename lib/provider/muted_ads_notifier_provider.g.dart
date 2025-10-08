// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muted_ads_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MutedAdsNotifier)
const mutedAdsNotifierProvider = MutedAdsNotifierFamily._();

final class MutedAdsNotifierProvider
    extends $NotifierProvider<MutedAdsNotifier, List<String>> {
  const MutedAdsNotifierProvider._({
    required MutedAdsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'mutedAdsNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$mutedAdsNotifierHash();

  @override
  String toString() {
    return r'mutedAdsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MutedAdsNotifier create() => MutedAdsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MutedAdsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mutedAdsNotifierHash() => r'0bb501756e6c19ce365a1e3ff636799c7ff3ddf7';

final class MutedAdsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          MutedAdsNotifier,
          List<String>,
          List<String>,
          List<String>,
          Account
        > {
  const MutedAdsNotifierFamily._()
    : super(
        retry: null,
        name: r'mutedAdsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  MutedAdsNotifierProvider call(Account account) =>
      MutedAdsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'mutedAdsNotifierProvider';
}

abstract class _$MutedAdsNotifier extends $Notifier<List<String>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  List<String> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<List<String>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<String>, List<String>>,
              List<String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
