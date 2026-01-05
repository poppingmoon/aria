// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_members_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatRoomMembersNotifier)
final chatRoomMembersNotifierProvider = ChatRoomMembersNotifierFamily._();

final class ChatRoomMembersNotifierProvider
    extends
        $StreamNotifierProvider<
          ChatRoomMembersNotifier,
          PaginationState<ChatJoining>
        > {
  ChatRoomMembersNotifierProvider._({
    required ChatRoomMembersNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'chatRoomMembersNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatRoomMembersNotifierHash();

  @override
  String toString() {
    return r'chatRoomMembersNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ChatRoomMembersNotifier create() => ChatRoomMembersNotifier();

  @override
  bool operator ==(Object other) {
    return other is ChatRoomMembersNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatRoomMembersNotifierHash() =>
    r'4220ee6b811c83e17f2b31b0f17948701251af52';

final class ChatRoomMembersNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChatRoomMembersNotifier,
          AsyncValue<PaginationState<ChatJoining>>,
          PaginationState<ChatJoining>,
          Stream<PaginationState<ChatJoining>>,
          (Account, String)
        > {
  ChatRoomMembersNotifierFamily._()
    : super(
        retry: null,
        name: r'chatRoomMembersNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatRoomMembersNotifierProvider call(Account account, String roomId) =>
      ChatRoomMembersNotifierProvider._(
        argument: (account, roomId),
        from: this,
      );

  @override
  String toString() => r'chatRoomMembersNotifierProvider';
}

abstract class _$ChatRoomMembersNotifier
    extends $StreamNotifier<PaginationState<ChatJoining>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get roomId => _$args.$2;

  Stream<PaginationState<ChatJoining>> build(Account account, String roomId);
  @$mustCallSuper
  @override
  void runBuild() {
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
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
