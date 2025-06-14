// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owned_chat_rooms_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ownedChatRoomsNotifierHash() =>
    r'b090a8404f77cb1680a0f5de2098ff98b69dcd1e';

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

abstract class _$OwnedChatRoomsNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<ChatRoom>> {
  late final Account account;

  Stream<PaginationState<ChatRoom>> build(Account account);
}

/// See also [OwnedChatRoomsNotifier].
@ProviderFor(OwnedChatRoomsNotifier)
const ownedChatRoomsNotifierProvider = OwnedChatRoomsNotifierFamily();

/// See also [OwnedChatRoomsNotifier].
class OwnedChatRoomsNotifierFamily
    extends Family<AsyncValue<PaginationState<ChatRoom>>> {
  /// See also [OwnedChatRoomsNotifier].
  const OwnedChatRoomsNotifierFamily();

  /// See also [OwnedChatRoomsNotifier].
  OwnedChatRoomsNotifierProvider call(Account account) {
    return OwnedChatRoomsNotifierProvider(account);
  }

  @override
  OwnedChatRoomsNotifierProvider getProviderOverride(
    covariant OwnedChatRoomsNotifierProvider provider,
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
  String? get name => r'ownedChatRoomsNotifierProvider';
}

/// See also [OwnedChatRoomsNotifier].
class OwnedChatRoomsNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          OwnedChatRoomsNotifier,
          PaginationState<ChatRoom>
        > {
  /// See also [OwnedChatRoomsNotifier].
  OwnedChatRoomsNotifierProvider(Account account)
    : this._internal(
        () => OwnedChatRoomsNotifier()..account = account,
        from: ownedChatRoomsNotifierProvider,
        name: r'ownedChatRoomsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$ownedChatRoomsNotifierHash,
        dependencies: OwnedChatRoomsNotifierFamily._dependencies,
        allTransitiveDependencies:
            OwnedChatRoomsNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  OwnedChatRoomsNotifierProvider._internal(
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
  Stream<PaginationState<ChatRoom>> runNotifierBuild(
    covariant OwnedChatRoomsNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(OwnedChatRoomsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: OwnedChatRoomsNotifierProvider._internal(
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
  AutoDisposeStreamNotifierProviderElement<
    OwnedChatRoomsNotifier,
    PaginationState<ChatRoom>
  >
  createElement() {
    return _OwnedChatRoomsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OwnedChatRoomsNotifierProvider && other.account == account;
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
mixin OwnedChatRoomsNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<ChatRoom>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _OwnedChatRoomsNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          OwnedChatRoomsNotifier,
          PaginationState<ChatRoom>
        >
    with OwnedChatRoomsNotifierRef {
  _OwnedChatRoomsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as OwnedChatRoomsNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
