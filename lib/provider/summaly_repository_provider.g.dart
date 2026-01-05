// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summaly_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(summalyRepository)
final summalyRepositoryProvider = SummalyRepositoryProvider._();

final class SummalyRepositoryProvider
    extends
        $FunctionalProvider<
          SummalyRepository,
          SummalyRepository,
          SummalyRepository
        >
    with $Provider<SummalyRepository> {
  SummalyRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'summalyRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$summalyRepositoryHash();

  @$internal
  @override
  $ProviderElement<SummalyRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SummalyRepository create(Ref ref) {
    return summalyRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SummalyRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SummalyRepository>(value),
    );
  }
}

String _$summalyRepositoryHash() => r'1529b9d8b8c6381b1d95a147f120be1db0af8ab5';
