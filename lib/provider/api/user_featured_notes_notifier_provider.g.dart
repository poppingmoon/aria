// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_featured_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userFeaturedNotesNotifierHash() =>
    r'28621462bba5fffa2d08366db393cc94abaeebb8';

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

abstract class _$UserFeaturedNotesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Note>> {
  late final Account account;
  late final String userId;

  FutureOr<PaginationState<Note>> build(
    Account account,
    String userId,
  );
}

/// See also [UserFeaturedNotesNotifier].
@ProviderFor(UserFeaturedNotesNotifier)
const userFeaturedNotesNotifierProvider = UserFeaturedNotesNotifierFamily();

/// See also [UserFeaturedNotesNotifier].
class UserFeaturedNotesNotifierFamily
    extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [UserFeaturedNotesNotifier].
  const UserFeaturedNotesNotifierFamily();

  /// See also [UserFeaturedNotesNotifier].
  UserFeaturedNotesNotifierProvider call(
    Account account,
    String userId,
  ) {
    return UserFeaturedNotesNotifierProvider(
      account,
      userId,
    );
  }

  @override
  UserFeaturedNotesNotifierProvider getProviderOverride(
    covariant UserFeaturedNotesNotifierProvider provider,
  ) {
    return call(
      provider.account,
      provider.userId,
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
  String? get name => r'userFeaturedNotesNotifierProvider';
}

/// See also [UserFeaturedNotesNotifier].
class UserFeaturedNotesNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UserFeaturedNotesNotifier,
        PaginationState<Note>> {
  /// See also [UserFeaturedNotesNotifier].
  UserFeaturedNotesNotifierProvider(
    Account account,
    String userId,
  ) : this._internal(
          () => UserFeaturedNotesNotifier()
            ..account = account
            ..userId = userId,
          from: userFeaturedNotesNotifierProvider,
          name: r'userFeaturedNotesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userFeaturedNotesNotifierHash,
          dependencies: UserFeaturedNotesNotifierFamily._dependencies,
          allTransitiveDependencies:
              UserFeaturedNotesNotifierFamily._allTransitiveDependencies,
          account: account,
          userId: userId,
        );

  UserFeaturedNotesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.userId,
  }) : super.internal();

  final Account account;
  final String userId;

  @override
  FutureOr<PaginationState<Note>> runNotifierBuild(
    covariant UserFeaturedNotesNotifier notifier,
  ) {
    return notifier.build(
      account,
      userId,
    );
  }

  @override
  Override overrideWith(UserFeaturedNotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserFeaturedNotesNotifierProvider._internal(
        () => create()
          ..account = account
          ..userId = userId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UserFeaturedNotesNotifier,
      PaginationState<Note>> createElement() {
    return _UserFeaturedNotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserFeaturedNotesNotifierProvider &&
        other.account == account &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserFeaturedNotesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserFeaturedNotesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UserFeaturedNotesNotifier,
        PaginationState<Note>> with UserFeaturedNotesNotifierRef {
  _UserFeaturedNotesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as UserFeaturedNotesNotifierProvider).account;
  @override
  String get userId => (origin as UserFeaturedNotesNotifierProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
