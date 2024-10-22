// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_emoji_index_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customEmojiIndexHash() => r'b0b4f5411d2ea2ac82b7d5d09dc3b422937e6a82';

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

/// See also [customEmojiIndex].
@ProviderFor(customEmojiIndex)
const customEmojiIndexProvider = CustomEmojiIndexFamily();

/// See also [customEmojiIndex].
class CustomEmojiIndexFamily
    extends Family<AsyncValue<Map<String, Set<Emoji>>>> {
  /// See also [customEmojiIndex].
  const CustomEmojiIndexFamily();

  /// See also [customEmojiIndex].
  CustomEmojiIndexProvider call(
    String host,
  ) {
    return CustomEmojiIndexProvider(
      host,
    );
  }

  @override
  CustomEmojiIndexProvider getProviderOverride(
    covariant CustomEmojiIndexProvider provider,
  ) {
    return call(
      provider.host,
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
  String? get name => r'customEmojiIndexProvider';
}

/// See also [customEmojiIndex].
class CustomEmojiIndexProvider extends FutureProvider<Map<String, Set<Emoji>>> {
  /// See also [customEmojiIndex].
  CustomEmojiIndexProvider(
    String host,
  ) : this._internal(
          (ref) => customEmojiIndex(
            ref as CustomEmojiIndexRef,
            host,
          ),
          from: customEmojiIndexProvider,
          name: r'customEmojiIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customEmojiIndexHash,
          dependencies: CustomEmojiIndexFamily._dependencies,
          allTransitiveDependencies:
              CustomEmojiIndexFamily._allTransitiveDependencies,
          host: host,
        );

  CustomEmojiIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.host,
  }) : super.internal();

  final String host;

  @override
  Override overrideWith(
    FutureOr<Map<String, Set<Emoji>>> Function(CustomEmojiIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CustomEmojiIndexProvider._internal(
        (ref) => create(ref as CustomEmojiIndexRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        host: host,
      ),
    );
  }

  @override
  FutureProviderElement<Map<String, Set<Emoji>>> createElement() {
    return _CustomEmojiIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomEmojiIndexProvider && other.host == host;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CustomEmojiIndexRef on FutureProviderRef<Map<String, Set<Emoji>>> {
  /// The parameter `host` of this provider.
  String get host;
}

class _CustomEmojiIndexProviderElement
    extends FutureProviderElement<Map<String, Set<Emoji>>>
    with CustomEmojiIndexRef {
  _CustomEmojiIndexProviderElement(super.provider);

  @override
  String get host => (origin as CustomEmojiIndexProvider).host;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
