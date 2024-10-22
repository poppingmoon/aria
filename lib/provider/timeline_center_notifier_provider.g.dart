// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_center_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timelineCenterNotifierHash() =>
    r'8591d2acf197213bf5abdefe739f1abf3f449d22';

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

abstract class _$TimelineCenterNotifier
    extends BuildlessAutoDisposeNotifier<String?> {
  late final TabSettings tabSettings;

  String? build(
    TabSettings tabSettings,
  );
}

/// See also [TimelineCenterNotifier].
@ProviderFor(TimelineCenterNotifier)
const timelineCenterNotifierProvider = TimelineCenterNotifierFamily();

/// See also [TimelineCenterNotifier].
class TimelineCenterNotifierFamily extends Family<String?> {
  /// See also [TimelineCenterNotifier].
  const TimelineCenterNotifierFamily();

  /// See also [TimelineCenterNotifier].
  TimelineCenterNotifierProvider call(
    TabSettings tabSettings,
  ) {
    return TimelineCenterNotifierProvider(
      tabSettings,
    );
  }

  @override
  TimelineCenterNotifierProvider getProviderOverride(
    covariant TimelineCenterNotifierProvider provider,
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
  String? get name => r'timelineCenterNotifierProvider';
}

/// See also [TimelineCenterNotifier].
class TimelineCenterNotifierProvider
    extends AutoDisposeNotifierProviderImpl<TimelineCenterNotifier, String?> {
  /// See also [TimelineCenterNotifier].
  TimelineCenterNotifierProvider(
    TabSettings tabSettings,
  ) : this._internal(
          () => TimelineCenterNotifier()..tabSettings = tabSettings,
          from: timelineCenterNotifierProvider,
          name: r'timelineCenterNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$timelineCenterNotifierHash,
          dependencies: TimelineCenterNotifierFamily._dependencies,
          allTransitiveDependencies:
              TimelineCenterNotifierFamily._allTransitiveDependencies,
          tabSettings: tabSettings,
        );

  TimelineCenterNotifierProvider._internal(
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
    covariant TimelineCenterNotifier notifier,
  ) {
    return notifier.build(
      tabSettings,
    );
  }

  @override
  Override overrideWith(TimelineCenterNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TimelineCenterNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<TimelineCenterNotifier, String?>
      createElement() {
    return _TimelineCenterNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TimelineCenterNotifierProvider &&
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
mixin TimelineCenterNotifierRef on AutoDisposeNotifierProviderRef<String?> {
  /// The parameter `tabSettings` of this provider.
  TabSettings get tabSettings;
}

class _TimelineCenterNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<TimelineCenterNotifier, String?>
    with TimelineCenterNotifierRef {
  _TimelineCenterNotifierProviderElement(super.provider);

  @override
  TabSettings get tabSettings =>
      (origin as TimelineCenterNotifierProvider).tabSettings;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
