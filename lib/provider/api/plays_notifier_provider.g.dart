// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plays_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PlaysNotifier)
const playsNotifierProvider = PlaysNotifierFamily._();

final class PlaysNotifierProvider
    extends $StreamNotifierProvider<PlaysNotifier, PaginationState<Flash>> {
  const PlaysNotifierProvider._({
    required PlaysNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'playsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$playsNotifierHash();

  @override
  String toString() {
    return r'playsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PlaysNotifier create() => PlaysNotifier();

  @override
  bool operator ==(Object other) {
    return other is PlaysNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$playsNotifierHash() => r'bb015d7dc17afd5f127455002dada719d92ad200';

final class PlaysNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          PlaysNotifier,
          AsyncValue<PaginationState<Flash>>,
          PaginationState<Flash>,
          Stream<PaginationState<Flash>>,
          Account
        > {
  const PlaysNotifierFamily._()
    : super(
        retry: null,
        name: r'playsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PlaysNotifierProvider call(Account account) =>
      PlaysNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'playsNotifierProvider';
}

abstract class _$PlaysNotifier extends $StreamNotifier<PaginationState<Flash>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<Flash>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<PaginationState<Flash>>, PaginationState<Flash>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<Flash>>,
                PaginationState<Flash>
              >,
              AsyncValue<PaginationState<Flash>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
