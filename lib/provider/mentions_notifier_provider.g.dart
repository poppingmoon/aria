// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentions_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mentionsNotifierHash() => r'048a36616ed642311212d6181c291d427164d5b4';

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

abstract class _$MentionsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Note>> {
  late final Account account;
  late final bool specified;

  FutureOr<PaginationState<Note>> build(
    Account account, [
    bool specified = false,
  ]);
}

/// See also [MentionsNotifier].
@ProviderFor(MentionsNotifier)
const mentionsNotifierProvider = MentionsNotifierFamily();

/// See also [MentionsNotifier].
class MentionsNotifierFamily extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [MentionsNotifier].
  const MentionsNotifierFamily();

  /// See also [MentionsNotifier].
  MentionsNotifierProvider call(
    Account account, [
    bool specified = false,
  ]) {
    return MentionsNotifierProvider(
      account,
      specified,
    );
  }

  @override
  MentionsNotifierProvider getProviderOverride(
    covariant MentionsNotifierProvider provider,
  ) {
    return call(
      provider.account,
      provider.specified,
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
  String? get name => r'mentionsNotifierProvider';
}

/// See also [MentionsNotifier].
class MentionsNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MentionsNotifier, PaginationState<Note>> {
  /// See also [MentionsNotifier].
  MentionsNotifierProvider(
    Account account, [
    bool specified = false,
  ]) : this._internal(
          () => MentionsNotifier()
            ..account = account
            ..specified = specified,
          from: mentionsNotifierProvider,
          name: r'mentionsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mentionsNotifierHash,
          dependencies: MentionsNotifierFamily._dependencies,
          allTransitiveDependencies:
              MentionsNotifierFamily._allTransitiveDependencies,
          account: account,
          specified: specified,
        );

  MentionsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.specified,
  }) : super.internal();

  final Account account;
  final bool specified;

  @override
  FutureOr<PaginationState<Note>> runNotifierBuild(
    covariant MentionsNotifier notifier,
  ) {
    return notifier.build(
      account,
      specified,
    );
  }

  @override
  Override overrideWith(MentionsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MentionsNotifierProvider._internal(
        () => create()
          ..account = account
          ..specified = specified,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        specified: specified,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MentionsNotifier,
      PaginationState<Note>> createElement() {
    return _MentionsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MentionsNotifierProvider &&
        other.account == account &&
        other.specified == specified;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, specified.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MentionsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `specified` of this provider.
  bool get specified;
}

class _MentionsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MentionsNotifier,
        PaginationState<Note>> with MentionsNotifierRef {
  _MentionsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as MentionsNotifierProvider).account;
  @override
  bool get specified => (origin as MentionsNotifierProvider).specified;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
