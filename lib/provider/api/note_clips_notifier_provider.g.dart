// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_clips_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NoteClipsNotifier)
final noteClipsNotifierProvider = NoteClipsNotifierFamily._();

final class NoteClipsNotifierProvider
    extends $AsyncNotifierProvider<NoteClipsNotifier, List<Clip>> {
  NoteClipsNotifierProvider._({
    required NoteClipsNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'noteClipsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$noteClipsNotifierHash();

  @override
  String toString() {
    return r'noteClipsNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  NoteClipsNotifier create() => NoteClipsNotifier();

  @override
  bool operator ==(Object other) {
    return other is NoteClipsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$noteClipsNotifierHash() => r'428b3d2cf0b37960f3885915b81daf83ae1cd6eb';

final class NoteClipsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          NoteClipsNotifier,
          AsyncValue<List<Clip>>,
          List<Clip>,
          FutureOr<List<Clip>>,
          (Account, String)
        > {
  NoteClipsNotifierFamily._()
    : super(
        retry: null,
        name: r'noteClipsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NoteClipsNotifierProvider call(Account account, String noteId) =>
      NoteClipsNotifierProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'noteClipsNotifierProvider';
}

abstract class _$NoteClipsNotifier extends $AsyncNotifier<List<Clip>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get noteId => _$args.$2;

  FutureOr<List<Clip>> build(Account account, String noteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Clip>>, List<Clip>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Clip>>, List<Clip>>,
              AsyncValue<List<Clip>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
