// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_note_drafts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LocalNoteDraftsNotifier)
final localNoteDraftsNotifierProvider = LocalNoteDraftsNotifierProvider._();

final class LocalNoteDraftsNotifierProvider
    extends
        $StreamNotifierProvider<LocalNoteDraftsNotifier, List<LocalNoteDraft>> {
  LocalNoteDraftsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localNoteDraftsNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localNoteDraftsNotifierHash();

  @$internal
  @override
  LocalNoteDraftsNotifier create() => LocalNoteDraftsNotifier();
}

String _$localNoteDraftsNotifierHash() =>
    r'737120f23da3b9237d233b47b60fa38233043519';

abstract class _$LocalNoteDraftsNotifier
    extends $StreamNotifier<List<LocalNoteDraft>> {
  Stream<List<LocalNoteDraft>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<LocalNoteDraft>>, List<LocalNoteDraft>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<LocalNoteDraft>>,
                List<LocalNoteDraft>
              >,
              AsyncValue<List<LocalNoteDraft>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
