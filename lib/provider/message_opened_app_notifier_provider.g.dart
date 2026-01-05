// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_opened_app_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MessageOpenedAppNotifier)
final messageOpenedAppNotifierProvider = MessageOpenedAppNotifierProvider._();

final class MessageOpenedAppNotifierProvider
    extends $NotifierProvider<MessageOpenedAppNotifier, bool> {
  MessageOpenedAppNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'messageOpenedAppNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$messageOpenedAppNotifierHash();

  @$internal
  @override
  MessageOpenedAppNotifier create() => MessageOpenedAppNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$messageOpenedAppNotifierHash() =>
    r'd0392e9ceef2a4428e28f2195666c71cfb742e6d';

abstract class _$MessageOpenedAppNotifier extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
