// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChildrenNotesNotifier)
final childrenNotesNotifierProvider = ChildrenNotesNotifierFamily._();

final class ChildrenNotesNotifierProvider
    extends
        $StreamNotifierProvider<ChildrenNotesNotifier, PaginationState<Note>> {
  ChildrenNotesNotifierProvider._({
    required ChildrenNotesNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'childrenNotesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$childrenNotesNotifierHash();

  @override
  String toString() {
    return r'childrenNotesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ChildrenNotesNotifier create() => ChildrenNotesNotifier();

  @override
  bool operator ==(Object other) {
    return other is ChildrenNotesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$childrenNotesNotifierHash() =>
    r'a7b8772227ffef5c4b28b3609b45ec1c726b4ec3';

final class ChildrenNotesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChildrenNotesNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          (Account, String)
        > {
  ChildrenNotesNotifierFamily._()
    : super(
        retry: null,
        name: r'childrenNotesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChildrenNotesNotifierProvider call(Account account, String noteId) =>
      ChildrenNotesNotifierProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'childrenNotesNotifierProvider';
}

abstract class _$ChildrenNotesNotifier
    extends $StreamNotifier<PaginationState<Note>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get noteId => _$args.$2;

  Stream<PaginationState<Note>> build(Account account, String noteId);
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
