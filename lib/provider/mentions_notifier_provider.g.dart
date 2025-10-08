// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentions_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MentionsNotifier)
const mentionsNotifierProvider = MentionsNotifierFamily._();

final class MentionsNotifierProvider
    extends $StreamNotifierProvider<MentionsNotifier, PaginationState<Note>> {
  const MentionsNotifierProvider._({
    required MentionsNotifierFamily super.from,
    required (Account, bool) super.argument,
  }) : super(
         retry: null,
         name: r'mentionsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$mentionsNotifierHash();

  @override
  String toString() {
    return r'mentionsNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  MentionsNotifier create() => MentionsNotifier();

  @override
  bool operator ==(Object other) {
    return other is MentionsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mentionsNotifierHash() => r'e86c097249c8ec7ebfef5f5ca8bd6ef9bfe84c1c';

final class MentionsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          MentionsNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          (Account, bool)
        > {
  const MentionsNotifierFamily._()
    : super(
        retry: null,
        name: r'mentionsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MentionsNotifierProvider call(Account account, [bool specified = false]) =>
      MentionsNotifierProvider._(argument: (account, specified), from: this);

  @override
  String toString() => r'mentionsNotifierProvider';
}

abstract class _$MentionsNotifier
    extends $StreamNotifier<PaginationState<Note>> {
  late final _$args = ref.$arg as (Account, bool);
  Account get account => _$args.$1;
  bool get specified => _$args.$2;

  Stream<PaginationState<Note>> build(
    Account account, [
    bool specified = false,
  ]);
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
