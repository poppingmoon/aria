// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miauth_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(miAuthRepository)
const miAuthRepositoryProvider = MiAuthRepositoryProvider._();

final class MiAuthRepositoryProvider
    extends
        $FunctionalProvider<
          MiAuthRepository,
          MiAuthRepository,
          MiAuthRepository
        >
    with $Provider<MiAuthRepository> {
  const MiAuthRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'miAuthRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$miAuthRepositoryHash();

  @$internal
  @override
  $ProviderElement<MiAuthRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MiAuthRepository create(Ref ref) {
    return miAuthRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MiAuthRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MiAuthRepository>(value),
    );
  }
}

String _$miAuthRepositoryHash() => r'c26494a9a41e561c457b7256fb0e15c50c1f2932';
