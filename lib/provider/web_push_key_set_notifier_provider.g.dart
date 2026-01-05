// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_push_key_set_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WebPushKeySetNotifier)
final webPushKeySetNotifierProvider = WebPushKeySetNotifierFamily._();

final class WebPushKeySetNotifierProvider
    extends $AsyncNotifierProvider<WebPushKeySetNotifier, WebPushKeySet?> {
  WebPushKeySetNotifierProvider._({
    required WebPushKeySetNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'webPushKeySetNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$webPushKeySetNotifierHash();

  @override
  String toString() {
    return r'webPushKeySetNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  WebPushKeySetNotifier create() => WebPushKeySetNotifier();

  @override
  bool operator ==(Object other) {
    return other is WebPushKeySetNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$webPushKeySetNotifierHash() =>
    r'd1740faccd1248acc40b5045ef15f1dbcb215252';

final class WebPushKeySetNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          WebPushKeySetNotifier,
          AsyncValue<WebPushKeySet?>,
          WebPushKeySet?,
          FutureOr<WebPushKeySet?>,
          Account
        > {
  WebPushKeySetNotifierFamily._()
    : super(
        retry: null,
        name: r'webPushKeySetNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  WebPushKeySetNotifierProvider call(Account account) =>
      WebPushKeySetNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'webPushKeySetNotifierProvider';
}

abstract class _$WebPushKeySetNotifier extends $AsyncNotifier<WebPushKeySet?> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  FutureOr<WebPushKeySet?> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<WebPushKeySet?>, WebPushKeySet?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<WebPushKeySet?>, WebPushKeySet?>,
              AsyncValue<WebPushKeySet?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
