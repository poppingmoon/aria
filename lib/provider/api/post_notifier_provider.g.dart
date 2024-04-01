// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postNotifierHash() => r'30686316626370f61e7155c406e6c07bf4ffcd85';

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

abstract class _$PostNotifier extends BuildlessNotifier<NotesCreateRequest> {
  late final Account account;

  NotesCreateRequest build(
    Account account,
  );
}

/// See also [PostNotifier].
@ProviderFor(PostNotifier)
const postNotifierProvider = PostNotifierFamily();

/// See also [PostNotifier].
class PostNotifierFamily extends Family<NotesCreateRequest> {
  /// See also [PostNotifier].
  const PostNotifierFamily();

  /// See also [PostNotifier].
  PostNotifierProvider call(
    Account account,
  ) {
    return PostNotifierProvider(
      account,
    );
  }

  @override
  PostNotifierProvider getProviderOverride(
    covariant PostNotifierProvider provider,
  ) {
    return call(
      provider.account,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    noteProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    noteProvider,
    ...?noteProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'postNotifierProvider';
}

/// See also [PostNotifier].
class PostNotifierProvider
    extends NotifierProviderImpl<PostNotifier, NotesCreateRequest> {
  /// See also [PostNotifier].
  PostNotifierProvider(
    Account account,
  ) : this._internal(
          () => PostNotifier()..account = account,
          from: postNotifierProvider,
          name: r'postNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postNotifierHash,
          dependencies: PostNotifierFamily._dependencies,
          allTransitiveDependencies:
              PostNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  PostNotifierProvider._internal(
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
  NotesCreateRequest runNotifierBuild(
    covariant PostNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(PostNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PostNotifierProvider._internal(
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
  NotifierProviderElement<PostNotifier, NotesCreateRequest> createElement() {
    return _PostNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PostNotifierRef on NotifierProviderRef<NotesCreateRequest> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _PostNotifierProviderElement
    extends NotifierProviderElement<PostNotifier, NotesCreateRequest>
    with PostNotifierRef {
  _PostNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as PostNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
