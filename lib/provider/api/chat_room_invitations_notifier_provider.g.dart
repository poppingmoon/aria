// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_invitations_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatRoomInvitationsNotifier)
const chatRoomInvitationsNotifierProvider =
    ChatRoomInvitationsNotifierFamily._();

final class ChatRoomInvitationsNotifierProvider
    extends
        $StreamNotifierProvider<
          ChatRoomInvitationsNotifier,
          PaginationState<ChatJoining>
        > {
  const ChatRoomInvitationsNotifierProvider._({
    required ChatRoomInvitationsNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'chatRoomInvitationsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatRoomInvitationsNotifierHash();

  @override
  String toString() {
    return r'chatRoomInvitationsNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ChatRoomInvitationsNotifier create() => ChatRoomInvitationsNotifier();

  @override
  bool operator ==(Object other) {
    return other is ChatRoomInvitationsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatRoomInvitationsNotifierHash() =>
    r'a0ae4c31a559478bcec07ac19b6c2605a350527e';

final class ChatRoomInvitationsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChatRoomInvitationsNotifier,
          AsyncValue<PaginationState<ChatJoining>>,
          PaginationState<ChatJoining>,
          Stream<PaginationState<ChatJoining>>,
          (Account, String)
        > {
  const ChatRoomInvitationsNotifierFamily._()
    : super(
        retry: null,
        name: r'chatRoomInvitationsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatRoomInvitationsNotifierProvider call(Account account, String roomId) =>
      ChatRoomInvitationsNotifierProvider._(
        argument: (account, roomId),
        from: this,
      );

  @override
  String toString() => r'chatRoomInvitationsNotifierProvider';
}

abstract class _$ChatRoomInvitationsNotifier
    extends $StreamNotifier<PaginationState<ChatJoining>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get roomId => _$args.$2;

  Stream<PaginationState<ChatJoining>> build(Account account, String roomId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<ChatJoining>>,
              PaginationState<ChatJoining>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<ChatJoining>>,
                PaginationState<ChatJoining>
              >,
              AsyncValue<PaginationState<ChatJoining>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
