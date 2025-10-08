// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PushNotificationNotifier)
const pushNotificationNotifierProvider = PushNotificationNotifierProvider._();

final class PushNotificationNotifierProvider
    extends
        $StreamNotifierProvider<PushNotificationNotifier, PushNotification> {
  const PushNotificationNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pushNotificationNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pushNotificationNotifierHash();

  @$internal
  @override
  PushNotificationNotifier create() => PushNotificationNotifier();
}

String _$pushNotificationNotifierHash() =>
    r'2140f46cfdce9af72c908919db105c6b5c753cec';

abstract class _$PushNotificationNotifier
    extends $StreamNotifier<PushNotification> {
  Stream<PushNotification> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<PushNotification>, PushNotification>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PushNotification>, PushNotification>,
              AsyncValue<PushNotification>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
