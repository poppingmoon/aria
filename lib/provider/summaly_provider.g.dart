// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summaly_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(summaly)
const summalyProvider = SummalyFamily._();

final class SummalyProvider
    extends
        $FunctionalProvider<
          AsyncValue<SummalyResult?>,
          SummalyResult?,
          FutureOr<SummalyResult?>
        >
    with $FutureModifier<SummalyResult?>, $FutureProvider<SummalyResult?> {
  const SummalyProvider._({
    required SummalyFamily super.from,
    required (String, String, {String? lang}) super.argument,
  }) : super(
         retry: null,
         name: r'summalyProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$summalyHash();

  @override
  String toString() {
    return r'summalyProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<SummalyResult?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SummalyResult?> create(Ref ref) {
    final argument = this.argument as (String, String, {String? lang});
    return summaly(ref, argument.$1, argument.$2, lang: argument.lang);
  }

  @override
  bool operator ==(Object other) {
    return other is SummalyProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$summalyHash() => r'8e9614187834c857cce2ed27ed4f0efa915bfc62';

final class SummalyFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<SummalyResult?>,
          (String, String, {String? lang})
        > {
  const SummalyFamily._()
    : super(
        retry: null,
        name: r'summalyProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  SummalyProvider call(String host, String link, {String? lang}) =>
      SummalyProvider._(argument: (host, link, lang: lang), from: this);

  @override
  String toString() => r'summalyProvider';
}
