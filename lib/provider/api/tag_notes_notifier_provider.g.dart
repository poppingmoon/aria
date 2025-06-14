// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tagNotesNotifierHash() => r'97d89575f256d3a2de787e7168c95ad9d417e27e';

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

abstract class _$TagNotesNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<Note>> {
  late final Account account;
  late final String tag;
  late final String? sinceId;
  late final String? untilId;

  Stream<PaginationState<Note>> build(
    Account account,
    String tag, {
    String? sinceId,
    String? untilId,
  });
}

/// See also [TagNotesNotifier].
@ProviderFor(TagNotesNotifier)
const tagNotesNotifierProvider = TagNotesNotifierFamily();

/// See also [TagNotesNotifier].
class TagNotesNotifierFamily extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [TagNotesNotifier].
  const TagNotesNotifierFamily();

  /// See also [TagNotesNotifier].
  TagNotesNotifierProvider call(
    Account account,
    String tag, {
    String? sinceId,
    String? untilId,
  }) {
    return TagNotesNotifierProvider(
      account,
      tag,
      sinceId: sinceId,
      untilId: untilId,
    );
  }

  @override
  TagNotesNotifierProvider getProviderOverride(
    covariant TagNotesNotifierProvider provider,
  ) {
    return call(
      provider.account,
      provider.tag,
      sinceId: provider.sinceId,
      untilId: provider.untilId,
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
  String? get name => r'tagNotesNotifierProvider';
}

/// See also [TagNotesNotifier].
class TagNotesNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          TagNotesNotifier,
          PaginationState<Note>
        > {
  /// See also [TagNotesNotifier].
  TagNotesNotifierProvider(
    Account account,
    String tag, {
    String? sinceId,
    String? untilId,
  }) : this._internal(
         () => TagNotesNotifier()
           ..account = account
           ..tag = tag
           ..sinceId = sinceId
           ..untilId = untilId,
         from: tagNotesNotifierProvider,
         name: r'tagNotesNotifierProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$tagNotesNotifierHash,
         dependencies: TagNotesNotifierFamily._dependencies,
         allTransitiveDependencies:
             TagNotesNotifierFamily._allTransitiveDependencies,
         account: account,
         tag: tag,
         sinceId: sinceId,
         untilId: untilId,
       );

  TagNotesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.tag,
    required this.sinceId,
    required this.untilId,
  }) : super.internal();

  final Account account;
  final String tag;
  final String? sinceId;
  final String? untilId;

  @override
  Stream<PaginationState<Note>> runNotifierBuild(
    covariant TagNotesNotifier notifier,
  ) {
    return notifier.build(account, tag, sinceId: sinceId, untilId: untilId);
  }

  @override
  Override overrideWith(TagNotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TagNotesNotifierProvider._internal(
        () => create()
          ..account = account
          ..tag = tag
          ..sinceId = sinceId
          ..untilId = untilId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        tag: tag,
        sinceId: sinceId,
        untilId: untilId,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<
    TagNotesNotifier,
    PaginationState<Note>
  >
  createElement() {
    return _TagNotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TagNotesNotifierProvider &&
        other.account == account &&
        other.tag == tag &&
        other.sinceId == sinceId &&
        other.untilId == untilId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, tag.hashCode);
    hash = _SystemHash.combine(hash, sinceId.hashCode);
    hash = _SystemHash.combine(hash, untilId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TagNotesNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `tag` of this provider.
  String get tag;

  /// The parameter `sinceId` of this provider.
  String? get sinceId;

  /// The parameter `untilId` of this provider.
  String? get untilId;
}

class _TagNotesNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          TagNotesNotifier,
          PaginationState<Note>
        >
    with TagNotesNotifierRef {
  _TagNotesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as TagNotesNotifierProvider).account;
  @override
  String get tag => (origin as TagNotesNotifierProvider).tag;
  @override
  String? get sinceId => (origin as TagNotesNotifierProvider).sinceId;
  @override
  String? get untilId => (origin as TagNotesNotifierProvider).untilId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
