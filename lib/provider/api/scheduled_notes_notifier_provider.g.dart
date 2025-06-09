// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$scheduledNotesNotifierHash() =>
    r'81fb9163fa85d1a694cde4deeaa89e6070465765';

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

abstract class _$ScheduledNotesNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<Note>> {
  late final Account account;

  Stream<PaginationState<Note>> build(Account account);
}

/// See also [ScheduledNotesNotifier].
@ProviderFor(ScheduledNotesNotifier)
const scheduledNotesNotifierProvider = ScheduledNotesNotifierFamily();

/// See also [ScheduledNotesNotifier].
class ScheduledNotesNotifierFamily
    extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [ScheduledNotesNotifier].
  const ScheduledNotesNotifierFamily();

  /// See also [ScheduledNotesNotifier].
  ScheduledNotesNotifierProvider call(Account account) {
    return ScheduledNotesNotifierProvider(account);
  }

  @override
  ScheduledNotesNotifierProvider getProviderOverride(
    covariant ScheduledNotesNotifierProvider provider,
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
  String? get name => r'scheduledNotesNotifierProvider';
}

/// See also [ScheduledNotesNotifier].
class ScheduledNotesNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          ScheduledNotesNotifier,
          PaginationState<Note>
        > {
  /// See also [ScheduledNotesNotifier].
  ScheduledNotesNotifierProvider(Account account)
    : this._internal(
        () => ScheduledNotesNotifier()..account = account,
        from: scheduledNotesNotifierProvider,
        name: r'scheduledNotesNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$scheduledNotesNotifierHash,
        dependencies: ScheduledNotesNotifierFamily._dependencies,
        allTransitiveDependencies:
            ScheduledNotesNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  ScheduledNotesNotifierProvider._internal(
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
  Stream<PaginationState<Note>> runNotifierBuild(
    covariant ScheduledNotesNotifier notifier,
  ) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(ScheduledNotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ScheduledNotesNotifierProvider._internal(
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
    ScheduledNotesNotifier,
    PaginationState<Note>
  >
  createElement() {
    return _ScheduledNotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ScheduledNotesNotifierProvider && other.account == account;
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
mixin ScheduledNotesNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _ScheduledNotesNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          ScheduledNotesNotifier,
          PaginationState<Note>
        >
    with ScheduledNotesNotifierRef {
  _ScheduledNotesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ScheduledNotesNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
