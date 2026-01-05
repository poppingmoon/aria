// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_tab_settings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(timelineTabSettings)
final timelineTabSettingsProvider = TimelineTabSettingsProvider._();

final class TimelineTabSettingsProvider
    extends $FunctionalProvider<TabSettings?, TabSettings?, TabSettings?>
    with $Provider<TabSettings?> {
  TimelineTabSettingsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'timelineTabSettingsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$timelineTabSettingsHash();

  @$internal
  @override
  $ProviderElement<TabSettings?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TabSettings? create(Ref ref) {
    return timelineTabSettings(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TabSettings? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TabSettings?>(value),
    );
  }
}

String _$timelineTabSettingsHash() =>
    r'0074d3b34607cab45df727c0bb9a54ef876c6c6b';
