// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_stream_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timelineStreamNotifierHash() =>
    r'6d0841f94eb0719b0687ca9798e4d2575ec9798c';

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

abstract class _$TimelineStreamNotifier
    extends BuildlessAutoDisposeStreamNotifier<Note> {
  late final TabSettings tabSettings;

  Stream<Note> build(TabSettings tabSettings);
}

/// See also [TimelineStreamNotifier].
@ProviderFor(TimelineStreamNotifier)
const timelineStreamNotifierProvider = TimelineStreamNotifierFamily();

/// See also [TimelineStreamNotifier].
class TimelineStreamNotifierFamily extends Family<AsyncValue<Note>> {
  /// See also [TimelineStreamNotifier].
  const TimelineStreamNotifierFamily();

  /// See also [TimelineStreamNotifier].
  TimelineStreamNotifierProvider call(TabSettings tabSettings) {
    return TimelineStreamNotifierProvider(tabSettings);
  }

  @override
  TimelineStreamNotifierProvider getProviderOverride(
    covariant TimelineStreamNotifierProvider provider,
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
  String? get name => r'timelineStreamNotifierProvider';
}

/// See also [TimelineStreamNotifier].
class TimelineStreamNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<TimelineStreamNotifier, Note> {
  /// See also [TimelineStreamNotifier].
  TimelineStreamNotifierProvider(TabSettings tabSettings)
    : this._internal(
        () => TimelineStreamNotifier()..tabSettings = tabSettings,
        from: timelineStreamNotifierProvider,
        name: r'timelineStreamNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$timelineStreamNotifierHash,
        dependencies: TimelineStreamNotifierFamily._dependencies,
        allTransitiveDependencies:
            TimelineStreamNotifierFamily._allTransitiveDependencies,
        tabSettings: tabSettings,
      );

  TimelineStreamNotifierProvider._internal(
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
  Stream<Note> runNotifierBuild(covariant TimelineStreamNotifier notifier) {
    return notifier.build(tabSettings);
  }

  @override
  Override overrideWith(TimelineStreamNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TimelineStreamNotifierProvider._internal(
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
  AutoDisposeStreamNotifierProviderElement<TimelineStreamNotifier, Note>
  createElement() {
    return _TimelineStreamNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineStreamNotifierProvider &&
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
mixin TimelineStreamNotifierRef on AutoDisposeStreamNotifierProviderRef<Note> {
  /// The parameter `tabSettings` of this provider.
  TabSettings get tabSettings;
}

class _TimelineStreamNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<TimelineStreamNotifier, Note>
    with TimelineStreamNotifierRef {
  _TimelineStreamNotifierProviderElement(super.provider);

  @override
  TabSettings get tabSettings =>
      (origin as TimelineStreamNotifierProvider).tabSettings;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
