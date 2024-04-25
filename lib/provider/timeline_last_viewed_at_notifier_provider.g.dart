// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_last_viewed_at_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timelineLastViewedAtNotifierHash() =>
    r'83f11026962d860646a21ca546d78c35de3ef7d9';

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

abstract class _$TimelineLastViewedAtNotifier
    extends BuildlessAutoDisposeNotifier<DateTime?> {
  late final TabSettings tabSettings;

  DateTime? build(
    TabSettings tabSettings,
  );
}

/// See also [TimelineLastViewedAtNotifier].
@ProviderFor(TimelineLastViewedAtNotifier)
const timelineLastViewedAtNotifierProvider =
    TimelineLastViewedAtNotifierFamily();

/// See also [TimelineLastViewedAtNotifier].
class TimelineLastViewedAtNotifierFamily extends Family<DateTime?> {
  /// See also [TimelineLastViewedAtNotifier].
  const TimelineLastViewedAtNotifierFamily();

  /// See also [TimelineLastViewedAtNotifier].
  TimelineLastViewedAtNotifierProvider call(
    TabSettings tabSettings,
  ) {
    return TimelineLastViewedAtNotifierProvider(
      tabSettings,
    );
  }

  @override
  TimelineLastViewedAtNotifierProvider getProviderOverride(
    covariant TimelineLastViewedAtNotifierProvider provider,
  ) {
    return call(
      provider.tabSettings,
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
  String? get name => r'timelineLastViewedAtNotifierProvider';
}

/// See also [TimelineLastViewedAtNotifier].
class TimelineLastViewedAtNotifierProvider
    extends AutoDisposeNotifierProviderImpl<TimelineLastViewedAtNotifier,
        DateTime?> {
  /// See also [TimelineLastViewedAtNotifier].
  TimelineLastViewedAtNotifierProvider(
    TabSettings tabSettings,
  ) : this._internal(
          () => TimelineLastViewedAtNotifier()..tabSettings = tabSettings,
          from: timelineLastViewedAtNotifierProvider,
          name: r'timelineLastViewedAtNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$timelineLastViewedAtNotifierHash,
          dependencies: TimelineLastViewedAtNotifierFamily._dependencies,
          allTransitiveDependencies:
              TimelineLastViewedAtNotifierFamily._allTransitiveDependencies,
          tabSettings: tabSettings,
        );

  TimelineLastViewedAtNotifierProvider._internal(
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
  DateTime? runNotifierBuild(
    covariant TimelineLastViewedAtNotifier notifier,
  ) {
    return notifier.build(
      tabSettings,
    );
  }

  @override
  Override overrideWith(TimelineLastViewedAtNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TimelineLastViewedAtNotifierProvider._internal(
        () => create()..tabSettings = tabSettings,
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
  AutoDisposeNotifierProviderElement<TimelineLastViewedAtNotifier, DateTime?>
      createElement() {
    return _TimelineLastViewedAtNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineLastViewedAtNotifierProvider &&
        other.tabSettings == tabSettings;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSettings.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TimelineLastViewedAtNotifierRef
    on AutoDisposeNotifierProviderRef<DateTime?> {
  /// The parameter `tabSettings` of this provider.
  TabSettings get tabSettings;
}

class _TimelineLastViewedAtNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<TimelineLastViewedAtNotifier,
        DateTime?> with TimelineLastViewedAtNotifierRef {
  _TimelineLastViewedAtNotifierProviderElement(super.provider);

  @override
  TabSettings get tabSettings =>
      (origin as TimelineLastViewedAtNotifierProvider).tabSettings;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
