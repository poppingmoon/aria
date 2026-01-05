// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PushNotificationNotifier)
final pushNotificationNotifierProvider = PushNotificationNotifierProvider._();

final class PushNotificationNotifierProvider
    extends
        $StreamNotifierProvider<PushNotificationNotifier, PushNotification> {
  PushNotificationNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pushNotificationNotifierProvider',
        isAutoDispose: false,
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
    r'17c894cd2ee72bc7d0a4c9f58308903f64bf71cf';

abstract class _$PushNotificationNotifier
    extends $StreamNotifier<PushNotification> {
  Stream<PushNotification> build();
  @$mustCallSuper
  @override
  void runBuild() {
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
    element.handleCreate(ref, build);
  }
}
