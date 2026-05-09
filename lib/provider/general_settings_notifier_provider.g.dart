// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_settings_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GeneralSettingsNotifier)
final generalSettingsNotifierProvider = GeneralSettingsNotifierProvider._();

final class GeneralSettingsNotifierProvider
    extends $NotifierProvider<GeneralSettingsNotifier, GeneralSettings> {
  GeneralSettingsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'generalSettingsNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$generalSettingsNotifierHash();

  @$internal
  @override
  GeneralSettingsNotifier create() => GeneralSettingsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GeneralSettings value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GeneralSettings>(value),
    );
  }
}

String _$generalSettingsNotifierHash() =>
    r'45aa93bac11ff6a09a6aff74f5974d727ddf90aa';

abstract class _$GeneralSettingsNotifier extends $Notifier<GeneralSettings> {
  GeneralSettings build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<GeneralSettings, GeneralSettings>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GeneralSettings, GeneralSettings>,
              GeneralSettings,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
