// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_last_viewed_note_id_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timelineLastViewedNoteIdNotifierHash() =>
    r'74d17ffe8a3f5f248d74c04815dc7d497a0b4630';

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

abstract class _$TimelineLastViewedNoteIdNotifier
    extends BuildlessAutoDisposeNotifier<String?> {
  late final TabSettings tabSettings;

  String? build(
    TabSettings tabSettings,
  );
}

/// See also [TimelineLastViewedNoteIdNotifier].
@ProviderFor(TimelineLastViewedNoteIdNotifier)
const timelineLastViewedNoteIdNotifierProvider =
    TimelineLastViewedNoteIdNotifierFamily();

/// See also [TimelineLastViewedNoteIdNotifier].
class TimelineLastViewedNoteIdNotifierFamily extends Family<String?> {
  /// See also [TimelineLastViewedNoteIdNotifier].
  const TimelineLastViewedNoteIdNotifierFamily();

  /// See also [TimelineLastViewedNoteIdNotifier].
  TimelineLastViewedNoteIdNotifierProvider call(
    TabSettings tabSettings,
  ) {
    return TimelineLastViewedNoteIdNotifierProvider(
      tabSettings,
    );
  }

  @override
  TimelineLastViewedNoteIdNotifierProvider getProviderOverride(
    covariant TimelineLastViewedNoteIdNotifierProvider provider,
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
  String? get name => r'timelineLastViewedNoteIdNotifierProvider';
}

/// See also [TimelineLastViewedNoteIdNotifier].
class TimelineLastViewedNoteIdNotifierProvider
    extends AutoDisposeNotifierProviderImpl<TimelineLastViewedNoteIdNotifier,
        String?> {
  /// See also [TimelineLastViewedNoteIdNotifier].
  TimelineLastViewedNoteIdNotifierProvider(
    TabSettings tabSettings,
  ) : this._internal(
          () => TimelineLastViewedNoteIdNotifier()..tabSettings = tabSettings,
          from: timelineLastViewedNoteIdNotifierProvider,
          name: r'timelineLastViewedNoteIdNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$timelineLastViewedNoteIdNotifierHash,
          dependencies: TimelineLastViewedNoteIdNotifierFamily._dependencies,
          allTransitiveDependencies:
              TimelineLastViewedNoteIdNotifierFamily._allTransitiveDependencies,
          tabSettings: tabSettings,
        );

  TimelineLastViewedNoteIdNotifierProvider._internal(
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
  String? runNotifierBuild(
    covariant TimelineLastViewedNoteIdNotifier notifier,
  ) {
    return notifier.build(
      tabSettings,
    );
  }

  @override
  Override overrideWith(TimelineLastViewedNoteIdNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TimelineLastViewedNoteIdNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<TimelineLastViewedNoteIdNotifier, String?>
      createElement() {
    return _TimelineLastViewedNoteIdNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineLastViewedNoteIdNotifierProvider &&
        other.tabSettings == tabSettings;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSettings.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TimelineLastViewedNoteIdNotifierRef
    on AutoDisposeNotifierProviderRef<String?> {
  /// The parameter `tabSettings` of this provider.
  TabSettings get tabSettings;
}

class _TimelineLastViewedNoteIdNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<TimelineLastViewedNoteIdNotifier,
        String?> with TimelineLastViewedNoteIdNotifierRef {
  _TimelineLastViewedNoteIdNotifierProviderElement(super.provider);

  @override
  TabSettings get tabSettings =>
      (origin as TimelineLastViewedNoteIdNotifierProvider).tabSettings;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
