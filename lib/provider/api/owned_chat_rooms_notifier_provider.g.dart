// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owned_chat_rooms_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OwnedChatRoomsNotifier)
final ownedChatRoomsNotifierProvider = OwnedChatRoomsNotifierFamily._();

final class OwnedChatRoomsNotifierProvider
    extends
        $StreamNotifierProvider<
          OwnedChatRoomsNotifier,
          PaginationState<ChatRoom>
        > {
  OwnedChatRoomsNotifierProvider._({
    required OwnedChatRoomsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'ownedChatRoomsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$ownedChatRoomsNotifierHash();

  @override
  String toString() {
    return r'ownedChatRoomsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  OwnedChatRoomsNotifier create() => OwnedChatRoomsNotifier();

  @override
  bool operator ==(Object other) {
    return other is OwnedChatRoomsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$ownedChatRoomsNotifierHash() =>
    r'a8fb559689e9710348dfab294b4824b3f31af599';

final class OwnedChatRoomsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          OwnedChatRoomsNotifier,
          AsyncValue<PaginationState<ChatRoom>>,
          PaginationState<ChatRoom>,
          Stream<PaginationState<ChatRoom>>,
          Account
        > {
  OwnedChatRoomsNotifierFamily._()
    : super(
        retry: null,
        name: r'ownedChatRoomsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OwnedChatRoomsNotifierProvider call(Account account) =>
      OwnedChatRoomsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'ownedChatRoomsNotifierProvider';
}

abstract class _$OwnedChatRoomsNotifier
    extends $StreamNotifier<PaginationState<ChatRoom>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<ChatRoom>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<ChatRoom>>,
              PaginationState<ChatRoom>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<ChatRoom>>,
                PaginationState<ChatRoom>
              >,
              AsyncValue<PaginationState<ChatRoom>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
