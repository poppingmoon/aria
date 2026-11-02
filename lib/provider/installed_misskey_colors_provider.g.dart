// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installed_misskey_colors_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(installedMisskeyColors)
final installedMisskeyColorsProvider = InstalledMisskeyColorsFamily._();

final class InstalledMisskeyColorsProvider
    extends $FunctionalProvider<MisskeyColors?, MisskeyColors?, MisskeyColors?>
    with $Provider<MisskeyColors?> {
  InstalledMisskeyColorsProvider._({
    required InstalledMisskeyColorsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'installedMisskeyColorsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$installedMisskeyColorsHash();

  @override
  String toString() {
    return r'installedMisskeyColorsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<MisskeyColors?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MisskeyColors? create(Ref ref) {
    final argument = this.argument as String;
    return installedMisskeyColors(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MisskeyColors? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MisskeyColors?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is InstalledMisskeyColorsProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$installedMisskeyColorsHash() =>
    r'5213697691bc34543db57c4477c79690464c49f1';

final class InstalledMisskeyColorsFamily extends $Family
    with $FunctionalFamilyOverride<MisskeyColors?, String> {
  InstalledMisskeyColorsFamily._()
    : super(
        retry: null,
        name: r'installedMisskeyColorsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  InstalledMisskeyColorsProvider call(String id) =>
      InstalledMisskeyColorsProvider._(argument: id, from: this);

  @override
  String toString() => r'installedMisskeyColorsProvider';
}
