// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatHistoryNotifierHash() =>
    r'f24ea740a7a9578bbdc43c0d5f1d59f5a0c672d2';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ChatHistoryNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<ChatMessage>> {
  late final Account account;

  FutureOr<List<ChatMessage>> build(Account account);
}

/// See also [ChatHistoryNotifier].
@ProviderFor(ChatHistoryNotifier)
const chatHistoryNotifierProvider = ChatHistoryNotifierFamily();

/// See also [ChatHistoryNotifier].
class ChatHistoryNotifierFamily extends Family<AsyncValue<List<ChatMessage>>> {
  /// See also [ChatHistoryNotifier].
  const ChatHistoryNotifierFamily();

  /// See also [ChatHistoryNotifier].
  ChatHistoryNotifierProvider call(Account account) {
    return ChatHistoryNotifierProvider(account);
  }

  @override
  ChatHistoryNotifierProvider getProviderOverride(
    covariant ChatHistoryNotifierProvider provider,
  ) {
    return call(provider.account);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'chatHistoryNotifierProvider';
}

/// See also [ChatHistoryNotifier].
class ChatHistoryNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ChatHistoryNotifier,
          List<ChatMessage>
        > {
  /// See also [ChatHistoryNotifier].
  ChatHistoryNotifierProvider(Account account)
    : this._internal(
        () => ChatHistoryNotifier()..account = account,
        from: chatHistoryNotifierProvider,
        name: r'chatHistoryNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$chatHistoryNotifierHash,
        dependencies: ChatHistoryNotifierFamily._dependencies,
        allTransitiveDependencies:
            ChatHistoryNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  ChatHistoryNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
  }) : super.internal();

  final Account account;

  @override
  FutureOr<List<ChatMessage>> runNotifierBuild(
    covariant ChatHistoryNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(ChatHistoryNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatHistoryNotifierProvider._internal(
        () => create()..account = account,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ChatHistoryNotifier,
    List<ChatMessage>
  >
  createElement() {
    return _ChatHistoryNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatHistoryNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChatHistoryNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<ChatMessage>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _ChatHistoryNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ChatHistoryNotifier,
          List<ChatMessage>
        >
    with ChatHistoryNotifierRef {
  _ChatHistoryNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ChatHistoryNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
