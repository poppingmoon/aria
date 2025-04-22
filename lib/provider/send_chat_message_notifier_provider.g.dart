// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_chat_message_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sendChatMessageNotifierHash() =>
    r'c61f0225635795f271f2284f7929627b791653bd';

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

abstract class _$SendChatMessageNotifier
    extends BuildlessAutoDisposeNotifier<String?> {
  late final Account account;
  late final String? userId;
  late final String? roomId;

  String? build(Account account, {String? userId, String? roomId});
}

/// See also [SendChatMessageNotifier].
@ProviderFor(SendChatMessageNotifier)
const sendChatMessageNotifierProvider = SendChatMessageNotifierFamily();

/// See also [SendChatMessageNotifier].
class SendChatMessageNotifierFamily extends Family<String?> {
  /// See also [SendChatMessageNotifier].
  const SendChatMessageNotifierFamily();

  /// See also [SendChatMessageNotifier].
  SendChatMessageNotifierProvider call(
    Account account, {
    String? userId,
    String? roomId,
  }) {
    return SendChatMessageNotifierProvider(
      account,
      userId: userId,
      roomId: roomId,
    );
  }

  @override
  SendChatMessageNotifierProvider getProviderOverride(
    covariant SendChatMessageNotifierProvider provider,
  ) {
    return call(
      provider.account,
      userId: provider.userId,
      roomId: provider.roomId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sendChatMessageNotifierProvider';
}

/// See also [SendChatMessageNotifier].
class SendChatMessageNotifierProvider
    extends AutoDisposeNotifierProviderImpl<SendChatMessageNotifier, String?> {
  /// See also [SendChatMessageNotifier].
  SendChatMessageNotifierProvider(
    Account account, {
    String? userId,
    String? roomId,
  }) : this._internal(
         () =>
             SendChatMessageNotifier()
               ..account = account
               ..userId = userId
               ..roomId = roomId,
         from: sendChatMessageNotifierProvider,
         name: r'sendChatMessageNotifierProvider',
         debugGetCreateSourceHash:
             const bool.fromEnvironment('dart.vm.product')
                 ? null
                 : _$sendChatMessageNotifierHash,
         dependencies: SendChatMessageNotifierFamily._dependencies,
         allTransitiveDependencies:
             SendChatMessageNotifierFamily._allTransitiveDependencies,
         account: account,
         userId: userId,
         roomId: roomId,
       );

  SendChatMessageNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.userId,
    required this.roomId,
  }) : super.internal();

  final Account account;
  final String? userId;
  final String? roomId;

  @override
  String? runNotifierBuild(covariant SendChatMessageNotifier notifier) {
    return notifier.build(account, userId: userId, roomId: roomId);
  }

  @override
  Override overrideWith(SendChatMessageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: SendChatMessageNotifierProvider._internal(
        () =>
            create()
              ..account = account
              ..userId = userId
              ..roomId = roomId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        userId: userId,
        roomId: roomId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SendChatMessageNotifier, String?>
  createElement() {
    return _SendChatMessageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SendChatMessageNotifierProvider &&
        other.account == account &&
        other.userId == userId &&
        other.roomId == roomId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, roomId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SendChatMessageNotifierRef on AutoDisposeNotifierProviderRef<String?> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String? get userId;

  /// The parameter `roomId` of this provider.
  String? get roomId;
}

class _SendChatMessageNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<SendChatMessageNotifier, String?>
    with SendChatMessageNotifierRef {
  _SendChatMessageNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as SendChatMessageNotifierProvider).account;
  @override
  String? get userId => (origin as SendChatMessageNotifierProvider).userId;
  @override
  String? get roomId => (origin as SendChatMessageNotifierProvider).roomId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
