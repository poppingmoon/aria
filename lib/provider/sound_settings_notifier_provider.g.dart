// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sound_settings_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SoundSettingsNotifier)
final soundSettingsNotifierProvider = SoundSettingsNotifierProvider._();

final class SoundSettingsNotifierProvider
    extends $NotifierProvider<SoundSettingsNotifier, SoundSettings> {
  SoundSettingsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'soundSettingsNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$soundSettingsNotifierHash();

  @$internal
  @override
  SoundSettingsNotifier create() => SoundSettingsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SoundSettings value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SoundSettings>(value),
    );
  }
}

String _$soundSettingsNotifierHash() =>
    r'644f7e16b280cfb5d503769f6bbd50762e4d39d0';

abstract class _$SoundSettingsNotifier extends $Notifier<SoundSettings> {
  SoundSettings build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SoundSettings, SoundSettings>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SoundSettings, SoundSettings>,
              SoundSettings,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
