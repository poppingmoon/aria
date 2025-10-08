// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receive_sharing_intent_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(receiveSharingIntent)
const receiveSharingIntentProvider = ReceiveSharingIntentProvider._();

final class ReceiveSharingIntentProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<SharedMediaFile>>,
          List<SharedMediaFile>,
          Stream<List<SharedMediaFile>>
        >
    with
        $FutureModifier<List<SharedMediaFile>>,
        $StreamProvider<List<SharedMediaFile>> {
  const ReceiveSharingIntentProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'receiveSharingIntentProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$receiveSharingIntentHash();

  @$internal
  @override
  $StreamProviderElement<List<SharedMediaFile>> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<List<SharedMediaFile>> create(Ref ref) {
    return receiveSharingIntent(ref);
  }
}

String _$receiveSharingIntentHash() =>
    r'46ef562192a7b42d470b288eb18b4257868bdf75';
