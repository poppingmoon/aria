// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_last_viewed_at_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timelineLastViewedAtHash() =>
    r'be8976a7ee6821b3ae63b998a9690bf7cb827f6c';

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

/// See also [timelineLastViewedAt].
@ProviderFor(timelineLastViewedAt)
const timelineLastViewedAtProvider = TimelineLastViewedAtFamily();

/// See also [timelineLastViewedAt].
class TimelineLastViewedAtFamily extends Family<DateTime?> {
  /// See also [timelineLastViewedAt].
  const TimelineLastViewedAtFamily();

  /// See also [timelineLastViewedAt].
  TimelineLastViewedAtProvider call(TabSettings tabSettings) {
    return TimelineLastViewedAtProvider(tabSettings);
  }

  @override
  TimelineLastViewedAtProvider getProviderOverride(
    covariant TimelineLastViewedAtProvider provider,
  ) {
    return call(provider.tabSettings);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'timelineLastViewedAtProvider';
}

/// See also [timelineLastViewedAt].
class TimelineLastViewedAtProvider extends AutoDisposeProvider<DateTime?> {
  /// See also [timelineLastViewedAt].
  TimelineLastViewedAtProvider(TabSettings tabSettings)
    : this._internal(
        (ref) =>
            timelineLastViewedAt(ref as TimelineLastViewedAtRef, tabSettings),
        from: timelineLastViewedAtProvider,
        name: r'timelineLastViewedAtProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$timelineLastViewedAtHash,
        dependencies: TimelineLastViewedAtFamily._dependencies,
        allTransitiveDependencies:
            TimelineLastViewedAtFamily._allTransitiveDependencies,
        tabSettings: tabSettings,
      );

  TimelineLastViewedAtProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabSettings,
  }) : super.internal();

  final TabSettings tabSettings;

  @override
  Override overrideWith(
    DateTime? Function(TimelineLastViewedAtRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TimelineLastViewedAtProvider._internal(
        (ref) => create(ref as TimelineLastViewedAtRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabSettings: tabSettings,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DateTime?> createElement() {
    return _TimelineLastViewedAtProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineLastViewedAtProvider &&
        other.tabSettings == tabSettings;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSettings.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TimelineLastViewedAtRef on AutoDisposeProviderRef<DateTime?> {
  /// The parameter `tabSettings` of this provider.
  TabSettings get tabSettings;
}

class _TimelineLastViewedAtProviderElement
    extends AutoDisposeProviderElement<DateTime?>
    with TimelineLastViewedAtRef {
  _TimelineLastViewedAtProviderElement(super.provider);

  @override
  TabSettings get tabSettings =>
      (origin as TimelineLastViewedAtProvider).tabSettings;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
