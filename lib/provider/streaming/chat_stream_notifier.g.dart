// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_stream_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(_chatStreamConnection)
const _chatStreamConnectionProvider = _ChatStreamConnectionFamily._();

final class _ChatStreamConnectionProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const _ChatStreamConnectionProvider._({
    required _ChatStreamConnectionFamily super.from,
    required (Account, {String? userId, String? roomId}) super.argument,
  }) : super(
         retry: null,
         name: r'_chatStreamConnectionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$_chatStreamConnectionHash();

  @override
  String toString() {
    return r'_chatStreamConnectionProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    final argument =
        this.argument as (Account, {String? userId, String? roomId});
    return _chatStreamConnection(
      ref,
      argument.$1,
      userId: argument.userId,
      roomId: argument.roomId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _ChatStreamConnectionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$_chatStreamConnectionHash() =>
    r'717c8fe5a1c2e69504e7a3b5f8962b522dd8d4fd';

final class _ChatStreamConnectionFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<String>,
          (Account, {String? userId, String? roomId})
        > {
  const _ChatStreamConnectionFamily._()
    : super(
        retry: null,
        name: r'_chatStreamConnectionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  _ChatStreamConnectionProvider call(
    Account account, {
    String? userId,
    String? roomId,
  }) => _ChatStreamConnectionProvider._(
    argument: (account, userId: userId, roomId: roomId),
    from: this,
  );

  @override
  String toString() => r'_chatStreamConnectionProvider';
}

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
    r'3d8704ed210852b397c1b4e319f0f83fa1079829';

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
