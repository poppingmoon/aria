// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_notes_after_note_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timelineNotesAfterNoteNotifierHash() =>
    r'807935d681491796690db3ae4b82f8c8fae281e7';

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

abstract class _$TimelineNotesAfterNoteNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Note>> {
  late final TabSettings tabSettings;
  late final String? sinceId;

  FutureOr<PaginationState<Note>> build(
    TabSettings tabSettings, {
    String? sinceId,
  });
}

/// See also [TimelineNotesAfterNoteNotifier].
@ProviderFor(TimelineNotesAfterNoteNotifier)
const timelineNotesAfterNoteNotifierProvider =
    TimelineNotesAfterNoteNotifierFamily();

/// See also [TimelineNotesAfterNoteNotifier].
class TimelineNotesAfterNoteNotifierFamily
    extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [TimelineNotesAfterNoteNotifier].
  const TimelineNotesAfterNoteNotifierFamily();

  /// See also [TimelineNotesAfterNoteNotifier].
  TimelineNotesAfterNoteNotifierProvider call(
    TabSettings tabSettings, {
    String? sinceId,
  }) {
    return TimelineNotesAfterNoteNotifierProvider(
      tabSettings,
      sinceId: sinceId,
    );
  }

  @override
  TimelineNotesAfterNoteNotifierProvider getProviderOverride(
    covariant TimelineNotesAfterNoteNotifierProvider provider,
  ) {
    return call(
      provider.tabSettings,
      sinceId: provider.sinceId,
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
  String? get name => r'timelineNotesAfterNoteNotifierProvider';
}

/// See also [TimelineNotesAfterNoteNotifier].
class TimelineNotesAfterNoteNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TimelineNotesAfterNoteNotifier,
        PaginationState<Note>> {
  /// See also [TimelineNotesAfterNoteNotifier].
  TimelineNotesAfterNoteNotifierProvider(
    TabSettings tabSettings, {
    String? sinceId,
  }) : this._internal(
          () => TimelineNotesAfterNoteNotifier()
            ..tabSettings = tabSettings
            ..sinceId = sinceId,
          from: timelineNotesAfterNoteNotifierProvider,
          name: r'timelineNotesAfterNoteNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$timelineNotesAfterNoteNotifierHash,
          dependencies: TimelineNotesAfterNoteNotifierFamily._dependencies,
          allTransitiveDependencies:
              TimelineNotesAfterNoteNotifierFamily._allTransitiveDependencies,
          tabSettings: tabSettings,
          sinceId: sinceId,
        );

  TimelineNotesAfterNoteNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tabSettings,
    required this.sinceId,
  }) : super.internal();

  final TabSettings tabSettings;
  final String? sinceId;

  @override
  FutureOr<PaginationState<Note>> runNotifierBuild(
    covariant TimelineNotesAfterNoteNotifier notifier,
  ) {
    return notifier.build(
      tabSettings,
      sinceId: sinceId,
    );
  }

  @override
  Override overrideWith(TimelineNotesAfterNoteNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TimelineNotesAfterNoteNotifierProvider._internal(
        () => create()
          ..tabSettings = tabSettings
          ..sinceId = sinceId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tabSettings: tabSettings,
        sinceId: sinceId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TimelineNotesAfterNoteNotifier,
      PaginationState<Note>> createElement() {
    return _TimelineNotesAfterNoteNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineNotesAfterNoteNotifierProvider &&
        other.tabSettings == tabSettings &&
        other.sinceId == sinceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tabSettings.hashCode);
    hash = _SystemHash.combine(hash, sinceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TimelineNotesAfterNoteNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `tabSettings` of this provider.
  TabSettings get tabSettings;

  /// The parameter `sinceId` of this provider.
  String? get sinceId;
}

class _TimelineNotesAfterNoteNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        TimelineNotesAfterNoteNotifier,
        PaginationState<Note>> with TimelineNotesAfterNoteNotifierRef {
  _TimelineNotesAfterNoteNotifierProviderElement(super.provider);

  @override
  TabSettings get tabSettings =>
      (origin as TimelineNotesAfterNoteNotifierProvider).tabSettings;
  @override
  String? get sinceId =>
      (origin as TimelineNotesAfterNoteNotifierProvider).sinceId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
