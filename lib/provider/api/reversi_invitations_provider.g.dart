// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reversi_invitations_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$reversiInvitationsHash() =>
    r'a2f03246f4575a443018902761e487b500c3f999';

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

/// See also [reversiInvitations].
@ProviderFor(reversiInvitations)
const reversiInvitationsProvider = ReversiInvitationsFamily();

/// See also [reversiInvitations].
class ReversiInvitationsFamily extends Family<AsyncValue<List<User>>> {
  /// See also [reversiInvitations].
  const ReversiInvitationsFamily();

  /// See also [reversiInvitations].
  ReversiInvitationsProvider call(
    Account account,
  ) {
    return ReversiInvitationsProvider(
      account,
    );
  }

  @override
  ReversiInvitationsProvider getProviderOverride(
    covariant ReversiInvitationsProvider provider,
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
  String? get name => r'reversiInvitationsProvider';
}

/// See also [reversiInvitations].
class ReversiInvitationsProvider extends AutoDisposeFutureProvider<List<User>> {
  /// See also [reversiInvitations].
  ReversiInvitationsProvider(
    Account account,
  ) : this._internal(
          (ref) => reversiInvitations(
            ref as ReversiInvitationsRef,
            account,
          ),
          from: reversiInvitationsProvider,
          name: r'reversiInvitationsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$reversiInvitationsHash,
          dependencies: ReversiInvitationsFamily._dependencies,
          allTransitiveDependencies:
              ReversiInvitationsFamily._allTransitiveDependencies,
          account: account,
        );

  ReversiInvitationsProvider._internal(
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
    FutureOr<List<User>> Function(ReversiInvitationsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ReversiInvitationsProvider._internal(
        (ref) => create(ref as ReversiInvitationsRef),
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
  AutoDisposeFutureProviderElement<List<User>> createElement() {
    return _ReversiInvitationsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReversiInvitationsProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ReversiInvitationsRef on AutoDisposeFutureProviderRef<List<User>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _ReversiInvitationsProviderElement
    extends AutoDisposeFutureProviderElement<List<User>>
    with ReversiInvitationsRef {
  _ReversiInvitationsProviderElement(super.provider);

  @override
  Account get account => (origin as ReversiInvitationsProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
