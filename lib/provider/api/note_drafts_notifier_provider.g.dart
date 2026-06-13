// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_drafts_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NoteDraftsNotifier)
final noteDraftsNotifierProvider = NoteDraftsNotifierFamily._();

final class NoteDraftsNotifierProvider
    extends
        $StreamNotifierProvider<
          NoteDraftsNotifier,
          PaginationState<NoteDraft>
        > {
  NoteDraftsNotifierProvider._({
    required NoteDraftsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'noteDraftsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$noteDraftsNotifierHash();

  @override
  String toString() {
    return r'noteDraftsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  NoteDraftsNotifier create() => NoteDraftsNotifier();

  @override
  bool operator ==(Object other) {
    return other is NoteDraftsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$noteDraftsNotifierHash() =>
    r'c906225065a92f0977ef0c3ce2b1bb5e1a1c5dce';

final class NoteDraftsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          NoteDraftsNotifier,
          AsyncValue<PaginationState<NoteDraft>>,
          PaginationState<NoteDraft>,
          Stream<PaginationState<NoteDraft>>,
          Account
        > {
  NoteDraftsNotifierFamily._()
    : super(
        retry: null,
        name: r'noteDraftsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NoteDraftsNotifierProvider call(Account account) =>
      NoteDraftsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'noteDraftsNotifierProvider';
}

abstract class _$NoteDraftsNotifier
    extends $StreamNotifier<PaginationState<NoteDraft>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<NoteDraft>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<NoteDraft>>,
              PaginationState<NoteDraft>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<NoteDraft>>,
                PaginationState<NoteDraft>
              >,
              AsyncValue<PaginationState<NoteDraft>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
