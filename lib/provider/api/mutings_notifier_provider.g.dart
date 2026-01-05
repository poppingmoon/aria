// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutings_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MutingsNotifier)
final mutingsNotifierProvider = MutingsNotifierFamily._();

final class MutingsNotifierProvider
    extends $StreamNotifierProvider<MutingsNotifier, PaginationState<Muting>> {
  MutingsNotifierProvider._({
    required MutingsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'mutingsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$mutingsNotifierHash();

  @override
  String toString() {
    return r'mutingsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MutingsNotifier create() => MutingsNotifier();

  @override
  bool operator ==(Object other) {
    return other is MutingsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mutingsNotifierHash() => r'd8c89c831def0bb241b86c533a0d51e99323545b';

final class MutingsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          MutingsNotifier,
          AsyncValue<PaginationState<Muting>>,
          PaginationState<Muting>,
          Stream<PaginationState<Muting>>,
          Account
        > {
  MutingsNotifierFamily._()
    : super(
        retry: null,
        name: r'mutingsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MutingsNotifierProvider call(Account account) =>
      MutingsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'mutingsNotifierProvider';
}

abstract class _$MutingsNotifier
    extends $StreamNotifier<PaginationState<Muting>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<Muting>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<Muting>>,
              PaginationState<Muting>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<Muting>>,
                PaginationState<Muting>
              >,
              AsyncValue<PaginationState<Muting>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
