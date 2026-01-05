// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatMessagesNotifier)
final chatMessagesNotifierProvider = ChatMessagesNotifierFamily._();

final class ChatMessagesNotifierProvider
    extends
        $StreamNotifierProvider<
          ChatMessagesNotifier,
          PaginationState<ChatMessage>
        > {
  ChatMessagesNotifierProvider._({
    required ChatMessagesNotifierFamily super.from,
    required (Account, {String? userId, String? roomId}) super.argument,
  }) : super(
         retry: null,
         name: r'chatMessagesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatMessagesNotifierHash();

  @override
  String toString() {
    return r'chatMessagesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ChatMessagesNotifier create() => ChatMessagesNotifier();

  @override
  bool operator ==(Object other) {
    return other is ChatMessagesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatMessagesNotifierHash() =>
    r'964b7f41e18ce6ad7ba8e26a8b9c524714ecae96';

final class ChatMessagesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChatMessagesNotifier,
          AsyncValue<PaginationState<ChatMessage>>,
          PaginationState<ChatMessage>,
          Stream<PaginationState<ChatMessage>>,
          (Account, {String? userId, String? roomId})
        > {
  ChatMessagesNotifierFamily._()
    : super(
        retry: null,
        name: r'chatMessagesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatMessagesNotifierProvider call(
    Account account, {
    String? userId,
    String? roomId,
  }) => ChatMessagesNotifierProvider._(
    argument: (account, userId: userId, roomId: roomId),
    from: this,
  );

  @override
  String toString() => r'chatMessagesNotifierProvider';
}

abstract class _$ChatMessagesNotifier
    extends $StreamNotifier<PaginationState<ChatMessage>> {
  late final _$args = ref.$arg as (Account, {String? userId, String? roomId});
  Account get account => _$args.$1;
  String? get userId => _$args.userId;
  String? get roomId => _$args.roomId;

  Stream<PaginationState<ChatMessage>> build(
    Account account, {
    String? userId,
    String? roomId,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<ChatMessage>>,
              PaginationState<ChatMessage>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<ChatMessage>>,
                PaginationState<ChatMessage>
              >,
              AsyncValue<PaginationState<ChatMessage>>,
              Object?,
              Object?
            >;
    element.handleCreate(
      ref,
      () => build(_$args.$1, userId: _$args.userId, roomId: _$args.roomId),
    );
  }
}
