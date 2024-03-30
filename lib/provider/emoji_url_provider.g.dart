// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_url_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$emojiUrlHash() => r'0de6dd62f6ec95d7a0d295c33b6fad9bfefa913f';

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

/// See also [emojiUrl].
@ProviderFor(emojiUrl)
const emojiUrlProvider = EmojiUrlFamily();

/// See also [emojiUrl].
class EmojiUrlFamily extends Family<(String, String)> {
  /// See also [emojiUrl].
  const EmojiUrlFamily();

  /// See also [emojiUrl].
  EmojiUrlProvider call(
    Account account,
    String emoji, {
    String? url,
    String? host,
    bool useOriginalSize = false,
  }) {
    return EmojiUrlProvider(
      account,
      emoji,
      url: url,
      host: host,
      useOriginalSize: useOriginalSize,
    );
  }

  @override
  EmojiUrlProvider getProviderOverride(
    covariant EmojiUrlProvider provider,
  ) {
    return call(
      provider.account,
      provider.emoji,
      url: provider.url,
      host: provider.host,
      useOriginalSize: provider.useOriginalSize,
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
  String? get name => r'emojiUrlProvider';
}

/// See also [emojiUrl].
class EmojiUrlProvider extends AutoDisposeProvider<(String, String)> {
  /// See also [emojiUrl].
  EmojiUrlProvider(
    Account account,
    String emoji, {
    String? url,
    String? host,
    bool useOriginalSize = false,
  }) : this._internal(
          (ref) => emojiUrl(
            ref as EmojiUrlRef,
            account,
            emoji,
            url: url,
            host: host,
            useOriginalSize: useOriginalSize,
          ),
          from: emojiUrlProvider,
          name: r'emojiUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$emojiUrlHash,
          dependencies: EmojiUrlFamily._dependencies,
          allTransitiveDependencies: EmojiUrlFamily._allTransitiveDependencies,
          account: account,
          emoji: emoji,
          url: url,
          host: host,
          useOriginalSize: useOriginalSize,
        );

  EmojiUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.emoji,
    required this.url,
    required this.host,
    required this.useOriginalSize,
  }) : super.internal();

  final Account account;
  final String emoji;
  final String? url;
  final String? host;
  final bool useOriginalSize;

  @override
  Override overrideWith(
    (String, String) Function(EmojiUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EmojiUrlProvider._internal(
        (ref) => create(ref as EmojiUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        emoji: emoji,
        url: url,
        host: host,
        useOriginalSize: useOriginalSize,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<(String, String)> createElement() {
    return _EmojiUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EmojiUrlProvider &&
        other.account == account &&
        other.emoji == emoji &&
        other.url == url &&
        other.host == host &&
        other.useOriginalSize == useOriginalSize;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, emoji.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);
    hash = _SystemHash.combine(hash, useOriginalSize.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EmojiUrlRef on AutoDisposeProviderRef<(String, String)> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `emoji` of this provider.
  String get emoji;

  /// The parameter `url` of this provider.
  String? get url;

  /// The parameter `host` of this provider.
  String? get host;

  /// The parameter `useOriginalSize` of this provider.
  bool get useOriginalSize;
}

class _EmojiUrlProviderElement
    extends AutoDisposeProviderElement<(String, String)> with EmojiUrlRef {
  _EmojiUrlProviderElement(super.provider);

  @override
  Account get account => (origin as EmojiUrlProvider).account;
  @override
  String get emoji => (origin as EmojiUrlProvider).emoji;
  @override
  String? get url => (origin as EmojiUrlProvider).url;
  @override
  String? get host => (origin as EmojiUrlProvider).host;
  @override
  bool get useOriginalSize => (origin as EmojiUrlProvider).useOriginalSize;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
