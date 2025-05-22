// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$emojiHash() => r'eca2d22aaf0880f7d02890984911e0eaa4ce27ca';

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

/// See also [emoji].
@ProviderFor(emoji)
const emojiProvider = EmojiFamily();

/// See also [emoji].
class EmojiFamily extends Family<Emoji?> {
  /// See also [emoji].
  const EmojiFamily();

  /// See also [emoji].
  EmojiProvider call(String host, String code) {
    return EmojiProvider(host, code);
  }

  @override
  EmojiProvider getProviderOverride(covariant EmojiProvider provider) {
    return call(provider.host, provider.code);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'emojiProvider';
}

/// See also [emoji].
class EmojiProvider extends Provider<Emoji?> {
  /// See also [emoji].
  EmojiProvider(String host, String code)
    : this._internal(
        (ref) => emoji(ref as EmojiRef, host, code),
        from: emojiProvider,
        name: r'emojiProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$emojiHash,
        dependencies: EmojiFamily._dependencies,
        allTransitiveDependencies: EmojiFamily._allTransitiveDependencies,
        host: host,
        code: code,
      );

  EmojiProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.host,
    required this.code,
  }) : super.internal();

  final String host;
  final String code;

  @override
  Override overrideWith(Emoji? Function(EmojiRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: EmojiProvider._internal(
        (ref) => create(ref as EmojiRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        host: host,
        code: code,
      ),
    );
  }

  @override
  ProviderElement<Emoji?> createElement() {
    return _EmojiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EmojiProvider && other.host == host && other.code == code;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);
    hash = _SystemHash.combine(hash, code.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EmojiRef on ProviderRef<Emoji?> {
  /// The parameter `host` of this provider.
  String get host;

  /// The parameter `code` of this provider.
  String get code;
}

class _EmojiProviderElement extends ProviderElement<Emoji?> with EmojiRef {
  _EmojiProviderElement(super.provider);

  @override
  String get host => (origin as EmojiProvider).host;
  @override
  String get code => (origin as EmojiProvider).code;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
