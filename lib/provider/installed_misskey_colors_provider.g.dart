// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installed_misskey_colors_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(installedMisskeyColors)
final installedMisskeyColorsProvider = InstalledMisskeyColorsProvider._();

final class InstalledMisskeyColorsProvider
    extends
        $FunctionalProvider<
          List<MisskeyColors>,
          List<MisskeyColors>,
          List<MisskeyColors>
        >
    with $Provider<List<MisskeyColors>> {
  InstalledMisskeyColorsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'installedMisskeyColorsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$installedMisskeyColorsHash();

  @$internal
  @override
  $ProviderElement<List<MisskeyColors>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  List<MisskeyColors> create(Ref ref) {
    return installedMisskeyColors(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<MisskeyColors> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<MisskeyColors>>(value),
    );
  }
}

String _$installedMisskeyColorsHash() =>
    r'7823aeddeb88a14058d3233aaae2b031e56432c7';
