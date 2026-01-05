// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatRoomNotifier)
final chatRoomNotifierProvider = ChatRoomNotifierFamily._();

final class ChatRoomNotifierProvider
    extends $AsyncNotifierProvider<ChatRoomNotifier, ChatRoom> {
  ChatRoomNotifierProvider._({
    required ChatRoomNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'chatRoomNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatRoomNotifierHash();

  @override
  String toString() {
    return r'chatRoomNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ChatRoomNotifier create() => ChatRoomNotifier();

  @override
  bool operator ==(Object other) {
    return other is ChatRoomNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatRoomNotifierHash() => r'dc16e6160397ba8558fd5f4939b2d8d7a36ac41f';

final class ChatRoomNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChatRoomNotifier,
          AsyncValue<ChatRoom>,
          ChatRoom,
          FutureOr<ChatRoom>,
          (Account, String)
        > {
  ChatRoomNotifierFamily._()
    : super(
        retry: null,
        name: r'chatRoomNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatRoomNotifierProvider call(Account account, String roomId) =>
      ChatRoomNotifierProvider._(argument: (account, roomId), from: this);

  @override
  String toString() => r'chatRoomNotifierProvider';
}

abstract class _$ChatRoomNotifier extends $AsyncNotifier<ChatRoom> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get roomId => _$args.$2;

  FutureOr<ChatRoom> build(Account account, String roomId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ChatRoom>, ChatRoom>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ChatRoom>, ChatRoom>,
              AsyncValue<ChatRoom>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
