// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_color_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dynamicColorHash() => r'7d22b4869ca21666054ceef3c2a20ca2a6134372';

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

/// See also [dynamicColor].
@ProviderFor(dynamicColor)
const dynamicColorProvider = DynamicColorFamily();

/// See also [dynamicColor].
class DynamicColorFamily extends Family<MisskeyColors?> {
  /// See also [dynamicColor].
  const DynamicColorFamily();

  /// See also [dynamicColor].
  DynamicColorProvider call(Brightness brightness) {
    return DynamicColorProvider(brightness);
  }

  @override
  DynamicColorProvider getProviderOverride(
    covariant DynamicColorProvider provider,
  ) {
    return call(provider.brightness);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'dynamicColorProvider';
}

/// See also [dynamicColor].
class DynamicColorProvider extends AutoDisposeProvider<MisskeyColors?> {
  /// See also [dynamicColor].
  DynamicColorProvider(Brightness brightness)
    : this._internal(
        (ref) => dynamicColor(ref as DynamicColorRef, brightness),
        from: dynamicColorProvider,
        name: r'dynamicColorProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$dynamicColorHash,
        dependencies: DynamicColorFamily._dependencies,
        allTransitiveDependencies:
            DynamicColorFamily._allTransitiveDependencies,
        brightness: brightness,
      );

  DynamicColorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.brightness,
  }) : super.internal();

  final Brightness brightness;

  @override
  Override overrideWith(
    MisskeyColors? Function(DynamicColorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DynamicColorProvider._internal(
        (ref) => create(ref as DynamicColorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        brightness: brightness,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<MisskeyColors?> createElement() {
    return _DynamicColorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DynamicColorProvider && other.brightness == brightness;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, brightness.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DynamicColorRef on AutoDisposeProviderRef<MisskeyColors?> {
  /// The parameter `brightness` of this provider.
  Brightness get brightness;
}

class _DynamicColorProviderElement
    extends AutoDisposeProviderElement<MisskeyColors?>
    with DynamicColorRef {
  _DynamicColorProviderElement(super.provider);

  @override
  Brightness get brightness => (origin as DynamicColorProvider).brightness;
}

String _$corePaletteNotifierHash() =>
    r'885db6834bc6e79aabdaab4ef92b0c1341c94669';

/// See also [CorePaletteNotifier].
@ProviderFor(CorePaletteNotifier)
final corePaletteNotifierProvider =
    AutoDisposeNotifierProvider<CorePaletteNotifier, CorePalette?>.internal(
      CorePaletteNotifier.new,
      name: r'corePaletteNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$corePaletteNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CorePaletteNotifier = AutoDisposeNotifier<CorePalette?>;
String _$accentColorNotifierHash() =>
    r'6ee574d2f60c624e7142d3fb2d02ce6fc6dca8a6';

/// See also [_AccentColorNotifier].
@ProviderFor(_AccentColorNotifier)
final _accentColorNotifierProvider =
    AutoDisposeNotifierProvider<_AccentColorNotifier, Color?>.internal(
      _AccentColorNotifier.new,
      name: r'_accentColorNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$accentColorNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$AccentColorNotifier = AutoDisposeNotifier<Color?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
