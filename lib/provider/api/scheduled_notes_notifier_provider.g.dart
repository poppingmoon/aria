// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ScheduledNotesNotifier)
const scheduledNotesNotifierProvider = ScheduledNotesNotifierFamily._();

final class ScheduledNotesNotifierProvider
    extends
        $StreamNotifierProvider<ScheduledNotesNotifier, PaginationState<Note>> {
  const ScheduledNotesNotifierProvider._({
    required ScheduledNotesNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'scheduledNotesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$scheduledNotesNotifierHash();

  @override
  String toString() {
    return r'scheduledNotesNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ScheduledNotesNotifier create() => ScheduledNotesNotifier();

  @override
  bool operator ==(Object other) {
    return other is ScheduledNotesNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$scheduledNotesNotifierHash() =>
    r'df28d87ba1e8cd0939b17884d60a124809f551ab';

final class ScheduledNotesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ScheduledNotesNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          Account
        > {
  const ScheduledNotesNotifierFamily._()
    : super(
        retry: null,
        name: r'scheduledNotesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ScheduledNotesNotifierProvider call(Account account) =>
      ScheduledNotesNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'scheduledNotesNotifierProvider';
}

abstract class _$ScheduledNotesNotifier
    extends $StreamNotifier<PaginationState<Note>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<Note>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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
