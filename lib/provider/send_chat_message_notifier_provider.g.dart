// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_chat_message_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SendChatMessageNotifier)
const sendChatMessageNotifierProvider = SendChatMessageNotifierFamily._();

final class SendChatMessageNotifierProvider
    extends $NotifierProvider<SendChatMessageNotifier, String?> {
  const SendChatMessageNotifierProvider._({
    required SendChatMessageNotifierFamily super.from,
    required (Account, {String? userId, String? roomId}) super.argument,
  }) : super(
         retry: null,
         name: r'sendChatMessageNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$sendChatMessageNotifierHash();

  @override
  String toString() {
    return r'sendChatMessageNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  SendChatMessageNotifier create() => SendChatMessageNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SendChatMessageNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$sendChatMessageNotifierHash() =>
    r'c61f0225635795f271f2284f7929627b791653bd';

final class SendChatMessageNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          SendChatMessageNotifier,
          String?,
          String?,
          String?,
          (Account, {String? userId, String? roomId})
        > {
  const SendChatMessageNotifierFamily._()
    : super(
        retry: null,
        name: r'sendChatMessageNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SendChatMessageNotifierProvider call(
    Account account, {
    String? userId,
    String? roomId,
  }) => SendChatMessageNotifierProvider._(
    argument: (account, userId: userId, roomId: roomId),
    from: this,
  );

  @override
  String toString() => r'sendChatMessageNotifierProvider';
}

abstract class _$SendChatMessageNotifier extends $Notifier<String?> {
  late final _$args = ref.$arg as (Account, {String? userId, String? roomId});
  Account get account => _$args.$1;
  String? get userId => _$args.userId;
  String? get roomId => _$args.roomId;

  String? build(Account account, {String? userId, String? roomId});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      _$args.$1,
      userId: _$args.userId,
      roomId: _$args.roomId,
    );
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
