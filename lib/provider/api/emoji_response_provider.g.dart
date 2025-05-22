// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_response_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$emojiResponseHash() => r'be6963cabf02947ac220966cdc1b3462459db622';

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

/// See also [emojiResponse].
@ProviderFor(emojiResponse)
const emojiResponseProvider = EmojiResponseFamily();

/// See also [emojiResponse].
class EmojiResponseFamily extends Family<AsyncValue<EmojiResponse>> {
  /// See also [emojiResponse].
  const EmojiResponseFamily();

  /// See also [emojiResponse].
  EmojiResponseProvider call(Account account, String emojiName) {
    return EmojiResponseProvider(account, emojiName);
  }

  @override
  EmojiResponseProvider getProviderOverride(
    covariant EmojiResponseProvider provider,
  ) {
    return call(provider.account, provider.emojiName);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'emojiResponseProvider';
}

/// See also [emojiResponse].
class EmojiResponseProvider extends AutoDisposeFutureProvider<EmojiResponse> {
  /// See also [emojiResponse].
  EmojiResponseProvider(Account account, String emojiName)
    : this._internal(
        (ref) => emojiResponse(ref as EmojiResponseRef, account, emojiName),
        from: emojiResponseProvider,
        name: r'emojiResponseProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$emojiResponseHash,
        dependencies: EmojiResponseFamily._dependencies,
        allTransitiveDependencies:
            EmojiResponseFamily._allTransitiveDependencies,
        account: account,
        emojiName: emojiName,
      );

  EmojiResponseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.emojiName,
  }) : super.internal();

  final Account account;
  final String emojiName;

  @override
  Override overrideWith(
    FutureOr<EmojiResponse> Function(EmojiResponseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EmojiResponseProvider._internal(
        (ref) => create(ref as EmojiResponseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        emojiName: emojiName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<EmojiResponse> createElement() {
    return _EmojiResponseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EmojiResponseProvider &&
        other.account == account &&
        other.emojiName == emojiName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, emojiName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EmojiResponseRef on AutoDisposeFutureProviderRef<EmojiResponse> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `emojiName` of this provider.
  String get emojiName;
}

class _EmojiResponseProviderElement
    extends AutoDisposeFutureProviderElement<EmojiResponse>
    with EmojiResponseRef {
  _EmojiResponseProviderElement(super.provider);

  @override
  Account get account => (origin as EmojiResponseProvider).account;
  @override
  String get emojiName => (origin as EmojiResponseProvider).emojiName;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
