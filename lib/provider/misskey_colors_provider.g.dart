// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misskey_colors_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(misskeyColors)
const misskeyColorsProvider = MisskeyColorsFamily._();

final class MisskeyColorsProvider
    extends $FunctionalProvider<MisskeyColors, MisskeyColors, MisskeyColors>
    with $Provider<MisskeyColors> {
  const MisskeyColorsProvider._({
    required MisskeyColorsFamily super.from,
    required Brightness super.argument,
  }) : super(
         retry: null,
         name: r'misskeyColorsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$misskeyColorsHash();

  @override
  String toString() {
    return r'misskeyColorsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<MisskeyColors> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MisskeyColors create(Ref ref) {
    final argument = this.argument as Brightness;
    return misskeyColors(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MisskeyColors value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MisskeyColors>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MisskeyColorsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$misskeyColorsHash() => r'c4e4255aa62f9c870504bfc9a08578a1db95d27d';

final class MisskeyColorsFamily extends $Family
    with $FunctionalFamilyOverride<MisskeyColors, Brightness> {
  const MisskeyColorsFamily._()
    : super(
        retry: null,
        name: r'misskeyColorsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MisskeyColorsProvider call(Brightness brightness) =>
      MisskeyColorsProvider._(argument: brightness, from: this);

  @override
  String toString() => r'misskeyColorsProvider';
}
