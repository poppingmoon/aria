// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_after_renotes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotesAfterRenotesNotifier)
const notesAfterRenotesNotifierProvider = NotesAfterRenotesNotifierFamily._();

final class NotesAfterRenotesNotifierProvider
    extends
        $StreamNotifierProvider<
          NotesAfterRenotesNotifier,
          PaginationState<Note>
        > {
  const NotesAfterRenotesNotifierProvider._({
    required NotesAfterRenotesNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'notesAfterRenotesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$notesAfterRenotesNotifierHash();

  @override
  String toString() {
    return r'notesAfterRenotesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  NotesAfterRenotesNotifier create() => NotesAfterRenotesNotifier();

  @override
  bool operator ==(Object other) {
    return other is NotesAfterRenotesNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$notesAfterRenotesNotifierHash() =>
    r'e0e3d72ae0b7e5bda63f973041164065ac406b9e';

final class NotesAfterRenotesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          NotesAfterRenotesNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          (Account, String)
        > {
  const NotesAfterRenotesNotifierFamily._()
    : super(
        retry: null,
        name: r'notesAfterRenotesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NotesAfterRenotesNotifierProvider call(Account account, String noteId) =>
      NotesAfterRenotesNotifierProvider._(
        argument: (account, noteId),
        from: this,
      );

  @override
  String toString() => r'notesAfterRenotesNotifierProvider';
}

abstract class _$NotesAfterRenotesNotifier
    extends $StreamNotifier<PaginationState<Note>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get noteId => _$args.$2;

  Stream<PaginationState<Note>> build(Account account, String noteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2);
    final ref =
        this.ref
            as $Ref<AsyncValue<PaginationState<Note>>, PaginationState<Note>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<Note>>,
                PaginationState<Note>
              >,
              AsyncValue<PaginationState<Note>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
