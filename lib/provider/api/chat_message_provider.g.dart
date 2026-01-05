// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(chatMessage)
final chatMessageProvider = ChatMessageFamily._();

final class ChatMessageProvider
    extends
        $FunctionalProvider<
          AsyncValue<ChatMessage>,
          ChatMessage,
          FutureOr<ChatMessage>
        >
    with $FutureModifier<ChatMessage>, $FutureProvider<ChatMessage> {
  ChatMessageProvider._({
    required ChatMessageFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'chatMessageProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatMessageHash();

  @override
  String toString() {
    return r'chatMessageProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<ChatMessage> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ChatMessage> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return chatMessage(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatMessageProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatMessageHash() => r'0885033843a9fd874b39669bd1e8a0f033e75aaa';

final class ChatMessageFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ChatMessage>, (Account, String)> {
  ChatMessageFamily._()
    : super(
        retry: null,
        name: r'chatMessageProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatMessageProvider call(Account account, String messageId) =>
      ChatMessageProvider._(argument: (account, messageId), from: this);

  @override
  String toString() => r'chatMessageProvider';
}
