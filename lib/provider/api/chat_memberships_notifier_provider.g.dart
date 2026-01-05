// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_memberships_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChatMembershipsNotifier)
final chatMembershipsNotifierProvider = ChatMembershipsNotifierFamily._();

final class ChatMembershipsNotifierProvider
    extends
        $StreamNotifierProvider<
          ChatMembershipsNotifier,
          PaginationState<ChatJoining>
        > {
  ChatMembershipsNotifierProvider._({
    required ChatMembershipsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'chatMembershipsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$chatMembershipsNotifierHash();

  @override
  String toString() {
    return r'chatMembershipsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ChatMembershipsNotifier create() => ChatMembershipsNotifier();

  @override
  bool operator ==(Object other) {
    return other is ChatMembershipsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$chatMembershipsNotifierHash() =>
    r'8810581a3f17f6171cf844b2fa2d592b307f7543';

final class ChatMembershipsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChatMembershipsNotifier,
          AsyncValue<PaginationState<ChatJoining>>,
          PaginationState<ChatJoining>,
          Stream<PaginationState<ChatJoining>>,
          Account
        > {
  ChatMembershipsNotifierFamily._()
    : super(
        retry: null,
        name: r'chatMembershipsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChatMembershipsNotifierProvider call(Account account) =>
      ChatMembershipsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'chatMembershipsNotifierProvider';
}

abstract class _$ChatMembershipsNotifier
    extends $StreamNotifier<PaginationState<ChatJoining>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<ChatJoining>> build(Account account);
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
    element.handleCreate(ref, () => build(_$args));
  }
}
