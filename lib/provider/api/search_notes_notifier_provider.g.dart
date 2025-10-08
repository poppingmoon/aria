// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchNotesNotifier)
const searchNotesNotifierProvider = SearchNotesNotifierFamily._();

final class SearchNotesNotifierProvider
    extends
        $StreamNotifierProvider<SearchNotesNotifier, PaginationState<Note>> {
  const SearchNotesNotifierProvider._({
    required SearchNotesNotifierFamily super.from,
    required (
      Account,
      String, {
      String? userId,
      String? channelId,
      bool? localOnly,
      String? sinceId,
      String? untilId,
    })
    super.argument,
  }) : super(
         retry: null,
         name: r'searchNotesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchNotesNotifierHash();

  @override
  String toString() {
    return r'searchNotesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  SearchNotesNotifier create() => SearchNotesNotifier();

  @override
  bool operator ==(Object other) {
    return other is SearchNotesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchNotesNotifierHash() =>
    r'02f553cddb209095727514a347669ee623a00ea5';

final class SearchNotesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          SearchNotesNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          (
            Account,
            String, {
            String? userId,
            String? channelId,
            bool? localOnly,
            String? sinceId,
            String? untilId,
          })
        > {
  const SearchNotesNotifierFamily._()
    : super(
        retry: null,
        name: r'searchNotesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchNotesNotifierProvider call(
    Account account,
    String query, {
    String? userId,
    String? channelId,
    bool? localOnly,
    String? sinceId,
    String? untilId,
  }) => SearchNotesNotifierProvider._(
    argument: (
      account,
      query,
      userId: userId,
      channelId: channelId,
      localOnly: localOnly,
      sinceId: sinceId,
      untilId: untilId,
    ),
    from: this,
  );

  @override
  String toString() => r'searchNotesNotifierProvider';
}

abstract class _$SearchNotesNotifier
    extends $StreamNotifier<PaginationState<Note>> {
  late final _$args =
      ref.$arg
          as (
            Account,
            String, {
            String? userId,
            String? channelId,
            bool? localOnly,
            String? sinceId,
            String? untilId,
          });
  Account get account => _$args.$1;
  String get query => _$args.$2;
  String? get userId => _$args.userId;
  String? get channelId => _$args.channelId;
  bool? get localOnly => _$args.localOnly;
  String? get sinceId => _$args.sinceId;
  String? get untilId => _$args.untilId;

  Stream<PaginationState<Note>> build(
    Account account,
    String query, {
    String? userId,
    String? channelId,
    bool? localOnly,
    String? sinceId,
    String? untilId,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      _$args.$1,
      _$args.$2,
      userId: _$args.userId,
      channelId: _$args.channelId,
      localOnly: _$args.localOnly,
      sinceId: _$args.sinceId,
      untilId: _$args.untilId,
    );
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
