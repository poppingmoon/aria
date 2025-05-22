// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incoming_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$incomingMessageHash() => r'0a3e41c17a2352a8fd9695ad2fdabb4872ed8922';

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

/// See also [incomingMessage].
@ProviderFor(incomingMessage)
const incomingMessageProvider = IncomingMessageFamily();

/// See also [incomingMessage].
class IncomingMessageFamily extends Family<AsyncValue<IncomingMessage>> {
  /// See also [incomingMessage].
  const IncomingMessageFamily();

  /// See also [incomingMessage].
  IncomingMessageProvider call(Account account) {
    return IncomingMessageProvider(account);
  }

  @override
  IncomingMessageProvider getProviderOverride(
    covariant IncomingMessageProvider provider,
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
  String? get name => r'incomingMessageProvider';
}

/// See also [incomingMessage].
class IncomingMessageProvider
    extends AutoDisposeStreamProvider<IncomingMessage> {
  /// See also [incomingMessage].
  IncomingMessageProvider(Account account)
    : this._internal(
        (ref) => incomingMessage(ref as IncomingMessageRef, account),
        from: incomingMessageProvider,
        name: r'incomingMessageProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$incomingMessageHash,
        dependencies: IncomingMessageFamily._dependencies,
        allTransitiveDependencies:
            IncomingMessageFamily._allTransitiveDependencies,
        account: account,
      );

  IncomingMessageProvider._internal(
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
  Override overrideWith(
    Stream<IncomingMessage> Function(IncomingMessageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IncomingMessageProvider._internal(
        (ref) => create(ref as IncomingMessageRef),
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
  AutoDisposeStreamProviderElement<IncomingMessage> createElement() {
    return _IncomingMessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IncomingMessageProvider && other.account == account;
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
mixin IncomingMessageRef on AutoDisposeStreamProviderRef<IncomingMessage> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _IncomingMessageProviderElement
    extends AutoDisposeStreamProviderElement<IncomingMessage>
    with IncomingMessageRef {
  _IncomingMessageProviderElement(super.provider);

  @override
  Account get account => (origin as IncomingMessageProvider).account;
}

String _$errorCountNotifierHash() =>
    r'e8fae60d8a4e02c13cf9eb77505725782503ab84';

abstract class _$ErrorCountNotifier extends BuildlessNotifier<int> {
  late final Account account;

  int build(Account account);
}

/// See also [_ErrorCountNotifier].
@ProviderFor(_ErrorCountNotifier)
const _errorCountNotifierProvider = _ErrorCountNotifierFamily();

/// See also [_ErrorCountNotifier].
class _ErrorCountNotifierFamily extends Family<int> {
  /// See also [_ErrorCountNotifier].
  const _ErrorCountNotifierFamily();

  /// See also [_ErrorCountNotifier].
  _ErrorCountNotifierProvider call(Account account) {
    return _ErrorCountNotifierProvider(account);
  }

  @override
  _ErrorCountNotifierProvider getProviderOverride(
    covariant _ErrorCountNotifierProvider provider,
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
  String? get name => r'_errorCountNotifierProvider';
}

/// See also [_ErrorCountNotifier].
class _ErrorCountNotifierProvider
    extends NotifierProviderImpl<_ErrorCountNotifier, int> {
  /// See also [_ErrorCountNotifier].
  _ErrorCountNotifierProvider(Account account)
    : this._internal(
        () => _ErrorCountNotifier()..account = account,
        from: _errorCountNotifierProvider,
        name: r'_errorCountNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$errorCountNotifierHash,
        dependencies: _ErrorCountNotifierFamily._dependencies,
        allTransitiveDependencies:
            _ErrorCountNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  _ErrorCountNotifierProvider._internal(
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
  int runNotifierBuild(covariant _ErrorCountNotifier notifier) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(_ErrorCountNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: _ErrorCountNotifierProvider._internal(
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
  NotifierProviderElement<_ErrorCountNotifier, int> createElement() {
    return _ErrorCountNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _ErrorCountNotifierProvider && other.account == account;
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
mixin _ErrorCountNotifierRef on NotifierProviderRef<int> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _ErrorCountNotifierProviderElement
    extends NotifierProviderElement<_ErrorCountNotifier, int>
    with _ErrorCountNotifierRef {
  _ErrorCountNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as _ErrorCountNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
