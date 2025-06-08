// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reactions_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$reactionsNotifierHash() => r'1f70e350b36096e60e0d6d5133efff6bfc8e71db';

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

abstract class _$ReactionsNotifier
    extends
        BuildlessAutoDisposeStreamNotifier<
          PaginationState<NotesReactionsResponse>
        > {
  late final Account account;
  late final String noteId;
  late final String reaction;

  Stream<PaginationState<NotesReactionsResponse>> build(
    Account account,
    String noteId,
    String reaction,
  );
}

/// See also [ReactionsNotifier].
@ProviderFor(ReactionsNotifier)
const reactionsNotifierProvider = ReactionsNotifierFamily();

/// See also [ReactionsNotifier].
class ReactionsNotifierFamily
    extends Family<AsyncValue<PaginationState<NotesReactionsResponse>>> {
  /// See also [ReactionsNotifier].
  const ReactionsNotifierFamily();

  /// See also [ReactionsNotifier].
  ReactionsNotifierProvider call(
    Account account,
    String noteId,
    String reaction,
  ) {
    return ReactionsNotifierProvider(account, noteId, reaction);
  }

  @override
  ReactionsNotifierProvider getProviderOverride(
    covariant ReactionsNotifierProvider provider,
  ) {
    return call(provider.account, provider.noteId, provider.reaction);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'reactionsNotifierProvider';
}

/// See also [ReactionsNotifier].
class ReactionsNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          ReactionsNotifier,
          PaginationState<NotesReactionsResponse>
        > {
  /// See also [ReactionsNotifier].
  ReactionsNotifierProvider(Account account, String noteId, String reaction)
    : this._internal(
        () => ReactionsNotifier()
          ..account = account
          ..noteId = noteId
          ..reaction = reaction,
        from: reactionsNotifierProvider,
        name: r'reactionsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$reactionsNotifierHash,
        dependencies: ReactionsNotifierFamily._dependencies,
        allTransitiveDependencies:
            ReactionsNotifierFamily._allTransitiveDependencies,
        account: account,
        noteId: noteId,
        reaction: reaction,
      );

  ReactionsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.noteId,
    required this.reaction,
  }) : super.internal();

  final Account account;
  final String noteId;
  final String reaction;

  @override
  Stream<PaginationState<NotesReactionsResponse>> runNotifierBuild(
    covariant ReactionsNotifier notifier,
  ) {
    return notifier.build(account, noteId, reaction);
  }

  @override
  Override overrideWith(ReactionsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ReactionsNotifierProvider._internal(
        () => create()
          ..account = account
          ..noteId = noteId
          ..reaction = reaction,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        noteId: noteId,
        reaction: reaction,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<
    ReactionsNotifier,
    PaginationState<NotesReactionsResponse>
  >
  createElement() {
    return _ReactionsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReactionsNotifierProvider &&
        other.account == account &&
        other.noteId == noteId &&
        other.reaction == reaction;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, noteId.hashCode);
    hash = _SystemHash.combine(hash, reaction.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ReactionsNotifierRef
    on
        AutoDisposeStreamNotifierProviderRef<
          PaginationState<NotesReactionsResponse>
        > {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;

  /// The parameter `reaction` of this provider.
  String get reaction;
}

class _ReactionsNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          ReactionsNotifier,
          PaginationState<NotesReactionsResponse>
        >
    with ReactionsNotifierRef {
  _ReactionsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ReactionsNotifierProvider).account;
  @override
  String get noteId => (origin as ReactionsNotifierProvider).noteId;
  @override
  String get reaction => (origin as ReactionsNotifierProvider).reaction;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
