// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_push_public_key_set_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WebPushPublicKeySetNotifier)
final webPushPublicKeySetNotifierProvider =
    WebPushPublicKeySetNotifierFamily._();

final class WebPushPublicKeySetNotifierProvider
    extends
        $AsyncNotifierProvider<
          WebPushPublicKeySetNotifier,
          ({String auth, String publicKey})?
        > {
  WebPushPublicKeySetNotifierProvider._({
    required WebPushPublicKeySetNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'webPushPublicKeySetNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$webPushPublicKeySetNotifierHash();

  @override
  String toString() {
    return r'webPushPublicKeySetNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  WebPushPublicKeySetNotifier create() => WebPushPublicKeySetNotifier();

  @override
  bool operator ==(Object other) {
    return other is WebPushPublicKeySetNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$webPushPublicKeySetNotifierHash() =>
    r'3d02886233610b35ee2fad24c02ecfb4fbb5eff6';

final class WebPushPublicKeySetNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          WebPushPublicKeySetNotifier,
          AsyncValue<({String auth, String publicKey})?>,
          ({String auth, String publicKey})?,
          FutureOr<({String auth, String publicKey})?>,
          Account
        > {
  WebPushPublicKeySetNotifierFamily._()
    : super(
        retry: null,
        name: r'webPushPublicKeySetNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  WebPushPublicKeySetNotifierProvider call(Account account) =>
      WebPushPublicKeySetNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'webPushPublicKeySetNotifierProvider';
}

abstract class _$WebPushPublicKeySetNotifier
    extends $AsyncNotifier<({String auth, String publicKey})?> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  FutureOr<({String auth, String publicKey})?> build(Account account);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<({String auth, String publicKey})?>,
              ({String auth, String publicKey})?
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<({String auth, String publicKey})?>,
                ({String auth, String publicKey})?
              >,
              AsyncValue<({String auth, String publicKey})?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
