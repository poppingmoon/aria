// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'renotes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RenotesNotifier)
const renotesNotifierProvider = RenotesNotifierFamily._();

final class RenotesNotifierProvider
    extends $StreamNotifierProvider<RenotesNotifier, PaginationState<Note>> {
  const RenotesNotifierProvider._({
    required RenotesNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'renotesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$renotesNotifierHash();

  @override
  String toString() {
    return r'renotesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  RenotesNotifier create() => RenotesNotifier();

  @override
  bool operator ==(Object other) {
    return other is RenotesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$renotesNotifierHash() => r'2015a651de24f4a2da5cc75986f37d4bac0c3997';

final class RenotesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          RenotesNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          (Account, String)
        > {
  const RenotesNotifierFamily._()
    : super(
        retry: null,
        name: r'renotesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RenotesNotifierProvider call(Account account, String noteId) =>
      RenotesNotifierProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'renotesNotifierProvider';
}

abstract class _$RenotesNotifier
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
