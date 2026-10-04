// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apns_token_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(apnsToken)
final apnsTokenProvider = ApnsTokenProvider._();

final class ApnsTokenProvider
    extends $FunctionalProvider<AsyncValue<String>, String, Stream<String>>
    with $FutureModifier<String>, $StreamProvider<String> {
  ApnsTokenProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apnsTokenProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apnsTokenHash();

  @$internal
  @override
  $StreamProviderElement<String> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<String> create(Ref ref) {
    return apnsToken(ref);
  }
}

String _$apnsTokenHash() => r'04441aaaa2da1227165f265746b5da4f0eec2bb5';
