// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incoming_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$incomingMessageHash() => r'd9325542a866d93f281640eee17294aaf4c1771b';

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
  IncomingMessageProvider call(
    Account account,
  ) {
    return IncomingMessageProvider(
      account,
    );
  }

  @override
  IncomingMessageProvider getProviderOverride(
    covariant IncomingMessageProvider provider,
  ) {
    return call(
      provider.account,
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
  String? get name => r'incomingMessageProvider';
}

/// See also [incomingMessage].
class IncomingMessageProvider
    extends AutoDisposeStreamProvider<IncomingMessage> {
  /// See also [incomingMessage].
  IncomingMessageProvider(
    Account account,
  ) : this._internal(
          (ref) => incomingMessage(
            ref as IncomingMessageRef,
            account,
          ),
          from: incomingMessageProvider,
          name: r'incomingMessageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
