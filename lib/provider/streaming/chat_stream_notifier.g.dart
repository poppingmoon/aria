// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_stream_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatStreamNotifier)
const chatStreamNotifierProvider = ChatStreamNotifierFamily._();

final class ChatStreamNotifierProvider
    extends $StreamNotifierProvider<ChatStreamNotifier, ChatEvent> {
  const ChatStreamNotifierProvider._({
    required ChatStreamNotifierFamily super.from,
    required (Account, {String? userId, String? roomId}) super.argument,
  }) : super(
         retry: null,
         name: r'chatStreamNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatStreamNotifierHash();

  @override
  String toString() {
    return r'chatStreamNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ChatStreamNotifier create() => ChatStreamNotifier();

  @override
  bool operator ==(Object other) {
    return other is ChatStreamNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatStreamNotifierHash() =>
    r'a1b1214abde950ca1a28861c7bc01faa4af4fd45';

final class ChatStreamNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChatStreamNotifier,
          AsyncValue<ChatEvent>,
          ChatEvent,
          Stream<ChatEvent>,
          (Account, {String? userId, String? roomId})
        > {
  const ChatStreamNotifierFamily._()
    : super(
        retry: null,
        name: r'chatStreamNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatStreamNotifierProvider call(
    Account account, {
    String? userId,
    String? roomId,
  }) => ChatStreamNotifierProvider._(
    argument: (account, userId: userId, roomId: roomId),
    from: this,
  );

  @override
  String toString() => r'chatStreamNotifierProvider';
}

abstract class _$ChatStreamNotifier extends $StreamNotifier<ChatEvent> {
  late final _$args = ref.$arg as (Account, {String? userId, String? roomId});
  Account get account => _$args.$1;
  String? get userId => _$args.userId;
  String? get roomId => _$args.roomId;

  Stream<ChatEvent> build(Account account, {String? userId, String? roomId});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      _$args.$1,
      userId: _$args.userId,
      roomId: _$args.roomId,
    );
    final ref = this.ref as $Ref<AsyncValue<ChatEvent>, ChatEvent>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ChatEvent>, ChatEvent>,
              AsyncValue<ChatEvent>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
