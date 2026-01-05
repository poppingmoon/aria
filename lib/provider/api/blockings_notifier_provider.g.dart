// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockings_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BlockingsNotifier)
final blockingsNotifierProvider = BlockingsNotifierFamily._();

final class BlockingsNotifierProvider
    extends
        $StreamNotifierProvider<BlockingsNotifier, PaginationState<Blocking>> {
  BlockingsNotifierProvider._({
    required BlockingsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'blockingsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$blockingsNotifierHash();

  @override
  String toString() {
    return r'blockingsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  BlockingsNotifier create() => BlockingsNotifier();

  @override
  bool operator ==(Object other) {
    return other is BlockingsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$blockingsNotifierHash() => r'eada842e68beb95cad93a758d9b05e7b29349cef';

final class BlockingsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          BlockingsNotifier,
          AsyncValue<PaginationState<Blocking>>,
          PaginationState<Blocking>,
          Stream<PaginationState<Blocking>>,
          Account
        > {
  BlockingsNotifierFamily._()
    : super(
        retry: null,
        name: r'blockingsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BlockingsNotifierProvider call(Account account) =>
      BlockingsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'blockingsNotifierProvider';
}

abstract class _$BlockingsNotifier
    extends $StreamNotifier<PaginationState<Blocking>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<Blocking>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<Blocking>>,
              PaginationState<Blocking>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<Blocking>>,
                PaginationState<Blocking>
              >,
              AsyncValue<PaginationState<Blocking>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
