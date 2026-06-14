// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ScheduledNotesNotifier)
final scheduledNotesNotifierProvider = ScheduledNotesNotifierFamily._();

final class ScheduledNotesNotifierProvider
    extends
        $StreamNotifierProvider<
          ScheduledNotesNotifier,
          PaginationState<NoteDraft>
        > {
  ScheduledNotesNotifierProvider._({
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
    r'4d637c35589b932c478a8e8fe8961275561e8e83';

final class ScheduledNotesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ScheduledNotesNotifier,
          AsyncValue<PaginationState<NoteDraft>>,
          PaginationState<NoteDraft>,
          Stream<PaginationState<NoteDraft>>,
          Account
        > {
  ScheduledNotesNotifierFamily._()
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
    extends $StreamNotifier<PaginationState<NoteDraft>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<NoteDraft>> build(Account account);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
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
    return element.handleCreate(ref, () => build(_$args));
  }
}
