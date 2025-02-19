// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_scroll_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timelineScrollControllerHash() =>
    r'fe1f323afac7d86b41998b7f4ef17d90b61cb29b';

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

/// See also [timelineScrollController].
@ProviderFor(timelineScrollController)
const timelineScrollControllerProvider = TimelineScrollControllerFamily();

/// See also [timelineScrollController].
class TimelineScrollControllerFamily extends Family<Raw<ScrollController>> {
  /// See also [timelineScrollController].
  const TimelineScrollControllerFamily();

  /// See also [timelineScrollController].
  TimelineScrollControllerProvider call(TabSettings tabSettings) {
    return TimelineScrollControllerProvider(tabSettings);
  }

  @override
  TimelineScrollControllerProvider getProviderOverride(
    covariant TimelineScrollControllerProvider provider,
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
  String? get name => r'timelineScrollControllerProvider';
}

/// See also [timelineScrollController].
class TimelineScrollControllerProvider
    extends AutoDisposeProvider<Raw<ScrollController>> {
  /// See also [timelineScrollController].
  TimelineScrollControllerProvider(TabSettings tabSettings)
    : this._internal(
        (ref) => timelineScrollController(
          ref as TimelineScrollControllerRef,
          tabSettings,
        ),
        from: timelineScrollControllerProvider,
        name: r'timelineScrollControllerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$timelineScrollControllerHash,
        dependencies: TimelineScrollControllerFamily._dependencies,
        allTransitiveDependencies:
            TimelineScrollControllerFamily._allTransitiveDependencies,
        tabSettings: tabSettings,
      );

  TimelineScrollControllerProvider._internal(
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
    Raw<ScrollController> Function(TimelineScrollControllerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TimelineScrollControllerProvider._internal(
        (ref) => create(ref as TimelineScrollControllerRef),
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
  AutoDisposeProviderElement<Raw<ScrollController>> createElement() {
    return _TimelineScrollControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineScrollControllerProvider &&
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
mixin TimelineScrollControllerRef
    on AutoDisposeProviderRef<Raw<ScrollController>> {
  /// The parameter `tabSettings` of this provider.
  TabSettings get tabSettings;
}

class _TimelineScrollControllerProviderElement
    extends AutoDisposeProviderElement<Raw<ScrollController>>
    with TimelineScrollControllerRef {
  _TimelineScrollControllerProviderElement(super.provider);

  @override
  TabSettings get tabSettings =>
      (origin as TimelineScrollControllerProvider).tabSettings;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
