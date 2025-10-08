// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'average_color_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(averageColor)
const averageColorProvider = AverageColorFamily._();

final class AverageColorProvider
    extends $FunctionalProvider<Color, Color, Color>
    with $Provider<Color> {
  const AverageColorProvider._({
    required AverageColorFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'averageColorProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$averageColorHash();

  @override
  String toString() {
    return r'averageColorProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<Color> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Color create(Ref ref) {
    final argument = this.argument as String;
    return averageColor(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Color value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Color>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AverageColorProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$averageColorHash() => r'06665cfb6770de47493dab0049f170bb74039f4c';

final class AverageColorFamily extends $Family
    with $FunctionalFamilyOverride<Color, String> {
  const AverageColorFamily._()
    : super(
        retry: null,
        name: r'averageColorProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AverageColorProvider call(String blurHash) =>
      AverageColorProvider._(argument: blurHash, from: this);

  @override
  String toString() => r'averageColorProvider';
}
