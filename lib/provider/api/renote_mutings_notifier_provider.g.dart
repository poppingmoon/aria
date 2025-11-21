// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'renote_mutings_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RenoteMutingsNotifier)
const renoteMutingsNotifierProvider = RenoteMutingsNotifierFamily._();

final class RenoteMutingsNotifierProvider
    extends
        $StreamNotifierProvider<
          RenoteMutingsNotifier,
          PaginationState<RenoteMuting>
        > {
  const RenoteMutingsNotifierProvider._({
    required RenoteMutingsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'renoteMutingsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$renoteMutingsNotifierHash();

  @override
  String toString() {
    return r'renoteMutingsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RenoteMutingsNotifier create() => RenoteMutingsNotifier();

  @override
  bool operator ==(Object other) {
    return other is RenoteMutingsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$renoteMutingsNotifierHash() =>
    r'1a4f49024f4e8f5d427d87719883fb2b6f2a0ec0';

final class RenoteMutingsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          RenoteMutingsNotifier,
          AsyncValue<PaginationState<RenoteMuting>>,
          PaginationState<RenoteMuting>,
          Stream<PaginationState<RenoteMuting>>,
          Account
        > {
  const RenoteMutingsNotifierFamily._()
    : super(
        retry: null,
        name: r'renoteMutingsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RenoteMutingsNotifierProvider call(Account account) =>
      RenoteMutingsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'renoteMutingsNotifierProvider';
}

abstract class _$RenoteMutingsNotifier
    extends $StreamNotifier<PaginationState<RenoteMuting>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<RenoteMuting>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<RenoteMuting>>,
              PaginationState<RenoteMuting>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<RenoteMuting>>,
                PaginationState<RenoteMuting>
              >,
              AsyncValue<PaginationState<RenoteMuting>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
