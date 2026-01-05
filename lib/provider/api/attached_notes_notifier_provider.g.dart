// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attached_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AttachedNotesNotifier)
final attachedNotesNotifierProvider = AttachedNotesNotifierFamily._();

final class AttachedNotesNotifierProvider
    extends
        $StreamNotifierProvider<AttachedNotesNotifier, PaginationState<Note>> {
  AttachedNotesNotifierProvider._({
    required AttachedNotesNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'attachedNotesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$attachedNotesNotifierHash();

  @override
  String toString() {
    return r'attachedNotesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  AttachedNotesNotifier create() => AttachedNotesNotifier();

  @override
  bool operator ==(Object other) {
    return other is AttachedNotesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$attachedNotesNotifierHash() =>
    r'0c8d766cd0a5fc3ef4165149b9b50d2d1ce0ff88';

final class AttachedNotesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AttachedNotesNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          (Account, String)
        > {
  AttachedNotesNotifierFamily._()
    : super(
        retry: null,
        name: r'attachedNotesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AttachedNotesNotifierProvider call(Account account, String fileId) =>
      AttachedNotesNotifierProvider._(argument: (account, fileId), from: this);

  @override
  String toString() => r'attachedNotesNotifierProvider';
}

abstract class _$AttachedNotesNotifier
    extends $StreamNotifier<PaginationState<Note>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get fileId => _$args.$2;

  Stream<PaginationState<Note>> build(Account account, String fileId);
  @$mustCallSuper
  @override
  void runBuild() {
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
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
