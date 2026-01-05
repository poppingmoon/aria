// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatHistoryNotifier)
final chatHistoryNotifierProvider = ChatHistoryNotifierFamily._();

final class ChatHistoryNotifierProvider
    extends $AsyncNotifierProvider<ChatHistoryNotifier, List<ChatMessage>> {
  ChatHistoryNotifierProvider._({
    required ChatHistoryNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'chatHistoryNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatHistoryNotifierHash();

  @override
  String toString() {
    return r'chatHistoryNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ChatHistoryNotifier create() => ChatHistoryNotifier();

  @override
  bool operator ==(Object other) {
    return other is ChatHistoryNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatHistoryNotifierHash() =>
    r'5ac6c87c76b25e45c5cdb50c597d26c14d77f525';

final class ChatHistoryNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChatHistoryNotifier,
          AsyncValue<List<ChatMessage>>,
          List<ChatMessage>,
          FutureOr<List<ChatMessage>>,
          Account
        > {
  ChatHistoryNotifierFamily._()
    : super(
        retry: null,
        name: r'chatHistoryNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatHistoryNotifierProvider call(Account account) =>
      ChatHistoryNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'chatHistoryNotifierProvider';
}

abstract class _$ChatHistoryNotifier extends $AsyncNotifier<List<ChatMessage>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  FutureOr<List<ChatMessage>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<ChatMessage>>, List<ChatMessage>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ChatMessage>>, List<ChatMessage>>,
              AsyncValue<List<ChatMessage>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
