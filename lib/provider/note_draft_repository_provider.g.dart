// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_draft_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(noteDraftRepository)
final noteDraftRepositoryProvider = NoteDraftRepositoryProvider._();

final class NoteDraftRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<NoteDraftRepository>,
          NoteDraftRepository,
          FutureOr<NoteDraftRepository>
        >
    with
        $FutureModifier<NoteDraftRepository>,
        $FutureProvider<NoteDraftRepository> {
  NoteDraftRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'noteDraftRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$noteDraftRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<NoteDraftRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NoteDraftRepository> create(Ref ref) {
    return noteDraftRepository(ref);
  }
}

String _$noteDraftRepositoryHash() =>
    r'be8f3559ba128748335cb99ecbc2cd747179bb9d';
