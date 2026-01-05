// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NoteStateNotifier)
final noteStateNotifierProvider = NoteStateNotifierFamily._();

final class NoteStateNotifierProvider
    extends $AsyncNotifierProvider<NoteStateNotifier, NotesStateResponse> {
  NoteStateNotifierProvider._({
    required NoteStateNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'noteStateNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$noteStateNotifierHash();

  @override
  String toString() {
    return r'noteStateNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  NoteStateNotifier create() => NoteStateNotifier();

  @override
  bool operator ==(Object other) {
    return other is NoteStateNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$noteStateNotifierHash() => r'b4914605d7b660270d39e4ac9e9431cdb1bc2b53';

final class NoteStateNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          NoteStateNotifier,
          AsyncValue<NotesStateResponse>,
          NotesStateResponse,
          FutureOr<NotesStateResponse>,
          (Account, String)
        > {
  NoteStateNotifierFamily._()
    : super(
        retry: null,
        name: r'noteStateNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NoteStateNotifierProvider call(Account account, String noteId) =>
      NoteStateNotifierProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'noteStateNotifierProvider';
}

abstract class _$NoteStateNotifier extends $AsyncNotifier<NotesStateResponse> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get noteId => _$args.$2;

  FutureOr<NotesStateResponse> build(Account account, String noteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<NotesStateResponse>, NotesStateResponse>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<NotesStateResponse>, NotesStateResponse>,
              AsyncValue<NotesStateResponse>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
