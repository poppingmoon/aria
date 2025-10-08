// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoints_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(endpoints)
const endpointsProvider = EndpointsFamily._();

final class EndpointsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<String>>,
          List<String>,
          Stream<List<String>>
        >
    with $FutureModifier<List<String>>, $StreamProvider<List<String>> {
  const EndpointsProvider._({
    required EndpointsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'endpointsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$endpointsHash();

  @override
  String toString() {
    return r'endpointsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<List<String>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<String>> create(Ref ref) {
    final argument = this.argument as String;
    return endpoints(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is EndpointsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$endpointsHash() => r'052eadc161bae2bd86e8229c1e48c6f3e3674afe';

final class EndpointsFamily extends $Family
    with $FunctionalFamilyOverride<Stream<List<String>>, String> {
  const EndpointsFamily._()
    : super(
        retry: null,
        name: r'endpointsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EndpointsProvider call(String host) =>
      EndpointsProvider._(argument: host, from: this);

  @override
  String toString() => r'endpointsProvider';
}
