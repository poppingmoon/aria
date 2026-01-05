// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parsed_mfm_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(parsedMfm)
final parsedMfmProvider = ParsedMfmFamily._();

final class ParsedMfmProvider
    extends $FunctionalProvider<List<MfmNode>, List<MfmNode>, List<MfmNode>>
    with $Provider<List<MfmNode>> {
  ParsedMfmProvider._({
    required ParsedMfmFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'parsedMfmProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$parsedMfmHash();

  @override
  String toString() {
    return r'parsedMfmProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<List<MfmNode>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<MfmNode> create(Ref ref) {
    final argument = this.argument as String;
    return parsedMfm(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<MfmNode> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<MfmNode>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ParsedMfmProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$parsedMfmHash() => r'00c66c7182a87069f2102f463cf53f4c053ec3e9';

final class ParsedMfmFamily extends $Family
    with $FunctionalFamilyOverride<List<MfmNode>, String> {
  ParsedMfmFamily._()
    : super(
        retry: null,
        name: r'parsedMfmProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ParsedMfmProvider call(String text) =>
      ParsedMfmProvider._(argument: text, from: this);

  @override
  String toString() => r'parsedMfmProvider';
}
