// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'window_size_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(windowSizeRepository)
const windowSizeRepositoryProvider = WindowSizeRepositoryProvider._();

final class WindowSizeRepositoryProvider
    extends
        $FunctionalProvider<
          WindowSizeRepository,
          WindowSizeRepository,
          WindowSizeRepository
        >
    with $Provider<WindowSizeRepository> {
  const WindowSizeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'windowSizeRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$windowSizeRepositoryHash();

  @$internal
  @override
  $ProviderElement<WindowSizeRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WindowSizeRepository create(Ref ref) {
    return windowSizeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WindowSizeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WindowSizeRepository>(value),
    );
  }
}

String _$windowSizeRepositoryHash() =>
    r'e4f87b5736f597d178b0313689d0cbd3f2bff218';
