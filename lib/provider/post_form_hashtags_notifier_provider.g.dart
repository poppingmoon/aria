// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_form_hashtags_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postFormHashtagsNotifierHash() =>
    r'c2c120a5f2b3ea5c4e70d8a173901b1275af8988';

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

abstract class _$PostFormHashtagsNotifier
    extends BuildlessNotifier<List<String>> {
  late final Account account;

  List<String> build(Account account);
}

/// See also [PostFormHashtagsNotifier].
@ProviderFor(PostFormHashtagsNotifier)
const postFormHashtagsNotifierProvider = PostFormHashtagsNotifierFamily();

/// See also [PostFormHashtagsNotifier].
class PostFormHashtagsNotifierFamily extends Family<List<String>> {
  /// See also [PostFormHashtagsNotifier].
  const PostFormHashtagsNotifierFamily();

  /// See also [PostFormHashtagsNotifier].
  PostFormHashtagsNotifierProvider call(Account account) {
    return PostFormHashtagsNotifierProvider(account);
  }

  @override
  PostFormHashtagsNotifierProvider getProviderOverride(
    covariant PostFormHashtagsNotifierProvider provider,
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
  String? get name => r'postFormHashtagsNotifierProvider';
}

/// See also [PostFormHashtagsNotifier].
class PostFormHashtagsNotifierProvider
    extends NotifierProviderImpl<PostFormHashtagsNotifier, List<String>> {
  /// See also [PostFormHashtagsNotifier].
  PostFormHashtagsNotifierProvider(Account account)
    : this._internal(
        () => PostFormHashtagsNotifier()..account = account,
        from: postFormHashtagsNotifierProvider,
        name: r'postFormHashtagsNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$postFormHashtagsNotifierHash,
        dependencies: PostFormHashtagsNotifierFamily._dependencies,
        allTransitiveDependencies:
            PostFormHashtagsNotifierFamily._allTransitiveDependencies,
        account: account,
      );

  PostFormHashtagsNotifierProvider._internal(
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
  List<String> runNotifierBuild(covariant PostFormHashtagsNotifier notifier) {
    return notifier.build(account);
  }

  @override
  Override overrideWith(PostFormHashtagsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PostFormHashtagsNotifierProvider._internal(
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
  NotifierProviderElement<PostFormHashtagsNotifier, List<String>>
  createElement() {
    return _PostFormHashtagsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostFormHashtagsNotifierProvider &&
        other.account == account;
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
mixin PostFormHashtagsNotifierRef on NotifierProviderRef<List<String>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _PostFormHashtagsNotifierProviderElement
    extends NotifierProviderElement<PostFormHashtagsNotifier, List<String>>
    with PostFormHashtagsNotifierRef {
  _PostFormHashtagsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as PostFormHashtagsNotifierProvider).account;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
