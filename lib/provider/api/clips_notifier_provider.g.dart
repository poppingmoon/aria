// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clips_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClipsNotifier)
const clipsNotifierProvider = ClipsNotifierFamily._();

final class ClipsNotifierProvider
    extends $StreamNotifierProvider<ClipsNotifier, PaginationState<Clip>> {
  const ClipsNotifierProvider._({
    required ClipsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'clipsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clipsNotifierHash();

  @override
  String toString() {
    return r'clipsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClipsNotifier create() => ClipsNotifier();

  @override
  bool operator ==(Object other) {
    return other is ClipsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clipsNotifierHash() => r'f52864d1b6ada7abeb5f25b42f6ce93059bf5c08';

final class ClipsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ClipsNotifier,
          AsyncValue<PaginationState<Clip>>,
          PaginationState<Clip>,
          Stream<PaginationState<Clip>>,
          Account
        > {
  const ClipsNotifierFamily._()
    : super(
        retry: null,
        name: r'clipsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClipsNotifierProvider call(Account account) =>
      ClipsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'clipsNotifierProvider';
}

abstract class _$ClipsNotifier extends $StreamNotifier<PaginationState<Clip>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<Clip>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<PaginationState<Clip>>, PaginationState<Clip>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<Clip>>,
                PaginationState<Clip>
              >,
              AsyncValue<PaginationState<Clip>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
