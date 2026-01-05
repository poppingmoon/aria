// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_saver_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dataSaver)
final dataSaverProvider = DataSaverProvider._();

final class DataSaverProvider
    extends $FunctionalProvider<DataSaver, DataSaver, DataSaver>
    with $Provider<DataSaver> {
  DataSaverProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dataSaverProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dataSaverHash();

  @$internal
  @override
  $ProviderElement<DataSaver> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DataSaver create(Ref ref) {
    return dataSaver(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DataSaver value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DataSaver>(value),
    );
  }
}

String _$dataSaverHash() => r'41b8ce9b550cd5a639af3a6a7bef8dc370c1b752';
