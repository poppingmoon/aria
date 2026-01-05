// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(themeData)
final themeDataProvider = ThemeDataFamily._();

final class ThemeDataProvider
    extends $FunctionalProvider<ThemeData, ThemeData, ThemeData>
    with $Provider<ThemeData> {
  ThemeDataProvider._({
    required ThemeDataFamily super.from,
    required Brightness super.argument,
  }) : super(
         retry: null,
         name: r'themeDataProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$themeDataHash();

  @override
  String toString() {
    return r'themeDataProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<ThemeData> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ThemeData create(Ref ref) {
    final argument = this.argument as Brightness;
    return themeData(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeData>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ThemeDataProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$themeDataHash() => r'9624456ff9194a6fe5b3a89cb6d45ed288f7611a';

final class ThemeDataFamily extends $Family
    with $FunctionalFamilyOverride<ThemeData, Brightness> {
  ThemeDataFamily._()
    : super(
        retry: null,
        name: r'themeDataProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ThemeDataProvider call(Brightness brightness) =>
      ThemeDataProvider._(argument: brightness, from: this);

  @override
  String toString() => r'themeDataProvider';
}
