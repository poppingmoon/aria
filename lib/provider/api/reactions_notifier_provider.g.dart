// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reactions_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReactionsNotifier)
final reactionsNotifierProvider = ReactionsNotifierFamily._();

final class ReactionsNotifierProvider
    extends
        $StreamNotifierProvider<
          ReactionsNotifier,
          PaginationState<NotesReactionsResponse>
        > {
  ReactionsNotifierProvider._({
    required ReactionsNotifierFamily super.from,
    required (Account, String, String) super.argument,
  }) : super(
         retry: null,
         name: r'reactionsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$reactionsNotifierHash();

  @override
  String toString() {
    return r'reactionsNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ReactionsNotifier create() => ReactionsNotifier();

  @override
  bool operator ==(Object other) {
    return other is ReactionsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$reactionsNotifierHash() => r'2e66fa3e42c1d5edad63a7f184bea39025783b78';

final class ReactionsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ReactionsNotifier,
          AsyncValue<PaginationState<NotesReactionsResponse>>,
          PaginationState<NotesReactionsResponse>,
          Stream<PaginationState<NotesReactionsResponse>>,
          (Account, String, String)
        > {
  ReactionsNotifierFamily._()
    : super(
        retry: null,
        name: r'reactionsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ReactionsNotifierProvider call(
    Account account,
    String noteId,
    String reaction,
  ) => ReactionsNotifierProvider._(
    argument: (account, noteId, reaction),
    from: this,
  );

  @override
  String toString() => r'reactionsNotifierProvider';
}

abstract class _$ReactionsNotifier
    extends $StreamNotifier<PaginationState<NotesReactionsResponse>> {
  late final _$args = ref.$arg as (Account, String, String);
  Account get account => _$args.$1;
  String get noteId => _$args.$2;
  String get reaction => _$args.$3;

  Stream<PaginationState<NotesReactionsResponse>> build(
    Account account,
    String noteId,
    String reaction,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<NotesReactionsResponse>>,
              PaginationState<NotesReactionsResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<NotesReactionsResponse>>,
                PaginationState<NotesReactionsResponse>
              >,
              AsyncValue<PaginationState<NotesReactionsResponse>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2, _$args.$3));
  }
}
