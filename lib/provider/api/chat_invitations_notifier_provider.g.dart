// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_invitations_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatInvitationsNotifier)
const chatInvitationsNotifierProvider = ChatInvitationsNotifierFamily._();

final class ChatInvitationsNotifierProvider
    extends
        $StreamNotifierProvider<
          ChatInvitationsNotifier,
          PaginationState<ChatJoining>
        > {
  const ChatInvitationsNotifierProvider._({
    required ChatInvitationsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'chatInvitationsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatInvitationsNotifierHash();

  @override
  String toString() {
    return r'chatInvitationsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ChatInvitationsNotifier create() => ChatInvitationsNotifier();

  @override
  bool operator ==(Object other) {
    return other is ChatInvitationsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatInvitationsNotifierHash() =>
    r'a4f25b360791879dd02365fe9fa1e288a1af6994';

final class ChatInvitationsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChatInvitationsNotifier,
          AsyncValue<PaginationState<ChatJoining>>,
          PaginationState<ChatJoining>,
          Stream<PaginationState<ChatJoining>>,
          Account
        > {
  const ChatInvitationsNotifierFamily._()
    : super(
        retry: null,
        name: r'chatInvitationsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatInvitationsNotifierProvider call(Account account) =>
      ChatInvitationsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'chatInvitationsNotifierProvider';
}

abstract class _$ChatInvitationsNotifier
    extends $StreamNotifier<PaginationState<ChatJoining>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<ChatJoining>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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
