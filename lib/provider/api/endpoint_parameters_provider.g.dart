// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint_parameters_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(endpointParameters)
const endpointParametersProvider = EndpointParametersFamily._();

final class EndpointParametersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<EndpointParameter>>,
          List<EndpointParameter>,
          FutureOr<List<EndpointParameter>>
        >
    with
        $FutureModifier<List<EndpointParameter>>,
        $FutureProvider<List<EndpointParameter>> {
  const EndpointParametersProvider._({
    required EndpointParametersFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'endpointParametersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$endpointParametersHash();

  @override
  String toString() {
    return r'endpointParametersProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<EndpointParameter>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<EndpointParameter>> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return endpointParameters(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is EndpointParametersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$endpointParametersHash() =>
    r'a0e3831220a6cc5982100c7c1d6213feacfc5815';

final class EndpointParametersFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<EndpointParameter>>,
          (Account, String)
        > {
  const EndpointParametersFamily._()
    : super(
        retry: null,
        name: r'endpointParametersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EndpointParametersProvider call(Account account, String endpoint) =>
      EndpointParametersProvider._(argument: (account, endpoint), from: this);

  @override
  String toString() => r'endpointParametersProvider';
}
