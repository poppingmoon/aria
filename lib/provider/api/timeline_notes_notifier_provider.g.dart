// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timelineNotesNotifierHash() =>
    r'0a4451fa2d7dadda4978450b4803f9c0f05a9279';

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

abstract class _$TimelineNotesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Note>> {
  late final TabSettings tabSettings;
  late final String? untilId;

  FutureOr<PaginationState<Note>> build(
    TabSettings tabSettings, {
    String? untilId,
  });
}

/// See also [TimelineNotesNotifier].
@ProviderFor(TimelineNotesNotifier)
const timelineNotesNotifierProvider = TimelineNotesNotifierFamily();

/// See also [TimelineNotesNotifier].
class TimelineNotesNotifierFamily
    extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [TimelineNotesNotifier].
  const TimelineNotesNotifierFamily();

  /// See also [TimelineNotesNotifier].
  TimelineNotesNotifierProvider call(
    TabSettings tabSettings, {
    String? untilId,
  }) {
    return TimelineNotesNotifierProvider(
      tabSettings,
      untilId: untilId,
    );
  }

  @override
  TimelineNotesNotifierProvider getProviderOverride(
    covariant TimelineNotesNotifierProvider provider,
  ) {
    return call(
      provider.tabSettings,
      untilId: provider.untilId,
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
  String? get name => r'timelineNotesNotifierProvider';
}

/// See also [TimelineNotesNotifier].
class TimelineNotesNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TimelineNotesNotifier,
        PaginationState<Note>> {
  /// See also [TimelineNotesNotifier].
  TimelineNotesNotifierProvider(
    TabSettings tabSettings, {
    String? untilId,
  }) : this._internal(
          () => TimelineNotesNotifier()
            ..tabSettings = tabSettings
            ..untilId = untilId,
          from: timelineNotesNotifierProvider,
          name: r'timelineNotesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$timelineNotesNotifierHash,
          dependencies: TimelineNotesNotifierFamily._dependencies,
          allTransitiveDependencies:
              TimelineNotesNotifierFamily._allTransitiveDependencies,
          tabSettings: tabSettings,
          untilId: untilId,
        );

  TimelineNotesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabSettings,
    required this.untilId,
  }) : super.internal();

  final TabSettings tabSettings;
  final String? untilId;

  @override
  FutureOr<PaginationState<Note>> runNotifierBuild(
    covariant TimelineNotesNotifier notifier,
  ) {
    return notifier.build(
      tabSettings,
      untilId: untilId,
    );
  }

  @override
  Override overrideWith(TimelineNotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TimelineNotesNotifierProvider._internal(
        () => create()
          ..tabSettings = tabSettings
          ..untilId = untilId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabSettings: tabSettings,
        untilId: untilId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TimelineNotesNotifier,
      PaginationState<Note>> createElement() {
    return _TimelineNotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineNotesNotifierProvider &&
        other.tabSettings == tabSettings &&
        other.untilId == untilId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSettings.hashCode);
    hash = _SystemHash.combine(hash, untilId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TimelineNotesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `tabSettings` of this provider.
  TabSettings get tabSettings;

  /// The parameter `untilId` of this provider.
  String? get untilId;
}

class _TimelineNotesNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TimelineNotesNotifier,
        PaginationState<Note>> with TimelineNotesNotifierRef {
  _TimelineNotesNotifierProviderElement(super.provider);

  @override
  TabSettings get tabSettings =>
      (origin as TimelineNotesNotifierProvider).tabSettings;
  @override
  String? get untilId => (origin as TimelineNotesNotifierProvider).untilId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
