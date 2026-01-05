// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_info_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(nodeInfo)
final nodeInfoProvider = NodeInfoFamily._();

final class NodeInfoProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<String, dynamic>>,
          Map<String, dynamic>,
          FutureOr<Map<String, dynamic>>
        >
    with
        $FutureModifier<Map<String, dynamic>>,
        $FutureProvider<Map<String, dynamic>> {
  NodeInfoProvider._({
    required NodeInfoFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'nodeInfoProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$nodeInfoHash();

  @override
  String toString() {
    return r'nodeInfoProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Map<String, dynamic>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<String, dynamic>> create(Ref ref) {
    final argument = this.argument as String;
    return nodeInfo(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is NodeInfoProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$nodeInfoHash() => r'8adb58e99d017a16df2ec2bb18977fe26cfe0fd7';

final class NodeInfoFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Map<String, dynamic>>, String> {
  NodeInfoFamily._()
    : super(
        retry: null,
        name: r'nodeInfoProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NodeInfoProvider call(String host) =>
      NodeInfoProvider._(argument: host, from: this);

  @override
  String toString() => r'nodeInfoProvider';
}
