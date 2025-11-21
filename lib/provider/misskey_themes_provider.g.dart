// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misskey_themes_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(misskeyThemes)
const misskeyThemesProvider = MisskeyThemesProvider._();

final class MisskeyThemesProvider
    extends
        $FunctionalProvider<
          List<MisskeyTheme?>,
          List<MisskeyTheme?>,
          List<MisskeyTheme?>
        >
    with $Provider<List<MisskeyTheme?>> {
  const MisskeyThemesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'misskeyThemesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$misskeyThemesHash();

  @$internal
  @override
  $ProviderElement<List<MisskeyTheme?>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  List<MisskeyTheme?> create(Ref ref) {
    return misskeyThemes(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<MisskeyTheme?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<MisskeyTheme?>>(value),
    );
  }
}

String _$misskeyThemesHash() => r'58d388567c15c55d718897ec26005e8567f024da';
