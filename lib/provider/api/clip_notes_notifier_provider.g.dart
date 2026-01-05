// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClipNotesNotifier)
final clipNotesNotifierProvider = ClipNotesNotifierFamily._();

final class ClipNotesNotifierProvider
    extends $StreamNotifierProvider<ClipNotesNotifier, PaginationState<Note>> {
  ClipNotesNotifierProvider._({
    required ClipNotesNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'clipNotesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clipNotesNotifierHash();

  @override
  String toString() {
    return r'clipNotesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ClipNotesNotifier create() => ClipNotesNotifier();

  @override
  bool operator ==(Object other) {
    return other is ClipNotesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clipNotesNotifierHash() => r'30f5bdc1f6a0b1de87ba3ebfa919d1de329f6dbf';

final class ClipNotesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ClipNotesNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          (Account, String)
        > {
  ClipNotesNotifierFamily._()
    : super(
        retry: null,
        name: r'clipNotesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClipNotesNotifierProvider call(Account account, String clipId) =>
      ClipNotesNotifierProvider._(argument: (account, clipId), from: this);

  @override
  String toString() => r'clipNotesNotifierProvider';
}

abstract class _$ClipNotesNotifier
    extends $StreamNotifier<PaginationState<Note>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get clipId => _$args.$2;

  Stream<PaginationState<Note>> build(Account account, String clipId);
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
