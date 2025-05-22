// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attaches_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$attachesNotifierHash() => r'383d958c23010db42b46d23a39637cb62e6918e1';

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

abstract class _$AttachesNotifier
    extends BuildlessAutoDisposeNotifier<List<PostFile>> {
  late final Account account;
  late final String? noteId;
  late final bool gallery;
  late final bool chat;

  List<PostFile> build(
    Account account, {
    String? noteId,
    bool gallery = false,
    bool chat = false,
  });
}

/// See also [AttachesNotifier].
@ProviderFor(AttachesNotifier)
const attachesNotifierProvider = AttachesNotifierFamily();

/// See also [AttachesNotifier].
class AttachesNotifierFamily extends Family<List<PostFile>> {
  /// See also [AttachesNotifier].
  const AttachesNotifierFamily();

  /// See also [AttachesNotifier].
  AttachesNotifierProvider call(
    Account account, {
    String? noteId,
    bool gallery = false,
    bool chat = false,
  }) {
    return AttachesNotifierProvider(
      account,
      noteId: noteId,
      gallery: gallery,
      chat: chat,
    );
  }

  @override
  AttachesNotifierProvider getProviderOverride(
    covariant AttachesNotifierProvider provider,
  ) {
    return call(
      provider.account,
      noteId: provider.noteId,
      gallery: provider.gallery,
      chat: provider.chat,
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
  String? get name => r'attachesNotifierProvider';
}

/// See also [AttachesNotifier].
class AttachesNotifierProvider
    extends AutoDisposeNotifierProviderImpl<AttachesNotifier, List<PostFile>> {
  /// See also [AttachesNotifier].
  AttachesNotifierProvider(
    Account account, {
    String? noteId,
    bool gallery = false,
    bool chat = false,
  }) : this._internal(
         () => AttachesNotifier()
           ..account = account
           ..noteId = noteId
           ..gallery = gallery
           ..chat = chat,
         from: attachesNotifierProvider,
         name: r'attachesNotifierProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$attachesNotifierHash,
         dependencies: AttachesNotifierFamily._dependencies,
         allTransitiveDependencies:
             AttachesNotifierFamily._allTransitiveDependencies,
         account: account,
         noteId: noteId,
         gallery: gallery,
         chat: chat,
       );

  AttachesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.noteId,
    required this.gallery,
    required this.chat,
  }) : super.internal();

  final Account account;
  final String? noteId;
  final bool gallery;
  final bool chat;

  @override
  List<PostFile> runNotifierBuild(covariant AttachesNotifier notifier) {
    return notifier.build(
      account,
      noteId: noteId,
      gallery: gallery,
      chat: chat,
    );
  }

  @override
  Override overrideWith(AttachesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AttachesNotifierProvider._internal(
        () => create()
          ..account = account
          ..noteId = noteId
          ..gallery = gallery
          ..chat = chat,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        noteId: noteId,
        gallery: gallery,
        chat: chat,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<AttachesNotifier, List<PostFile>>
  createElement() {
    return _AttachesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AttachesNotifierProvider &&
        other.account == account &&
        other.noteId == noteId &&
        other.gallery == gallery &&
        other.chat == chat;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, noteId.hashCode);
    hash = _SystemHash.combine(hash, gallery.hashCode);
    hash = _SystemHash.combine(hash, chat.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AttachesNotifierRef on AutoDisposeNotifierProviderRef<List<PostFile>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String? get noteId;

  /// The parameter `gallery` of this provider.
  bool get gallery;

  /// The parameter `chat` of this provider.
  bool get chat;
}

class _AttachesNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<AttachesNotifier, List<PostFile>>
    with AttachesNotifierRef {
  _AttachesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as AttachesNotifierProvider).account;
  @override
  String? get noteId => (origin as AttachesNotifierProvider).noteId;
  @override
  bool get gallery => (origin as AttachesNotifierProvider).gallery;
  @override
  bool get chat => (origin as AttachesNotifierProvider).chat;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
