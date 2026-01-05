// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'window_position_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(windowPositionRepository)
final windowPositionRepositoryProvider = WindowPositionRepositoryProvider._();

final class WindowPositionRepositoryProvider
    extends
        $FunctionalProvider<
          WindowPositionRepository,
          WindowPositionRepository,
          WindowPositionRepository
        >
    with $Provider<WindowPositionRepository> {
  WindowPositionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'windowPositionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$windowPositionRepositoryHash();

  @$internal
  @override
  $ProviderElement<WindowPositionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WindowPositionRepository create(Ref ref) {
    return windowPositionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WindowPositionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WindowPositionRepository>(value),
    );
  }
}

String _$windowPositionRepositoryHash() =>
    r'6973b711e2977ce2f4c54bd8b11103665cb27658';
