// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_stream_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MainStreamNotifier)
const mainStreamNotifierProvider = MainStreamNotifierFamily._();

final class MainStreamNotifierProvider
    extends $StreamNotifierProvider<MainStreamNotifier, MainEvent> {
  const MainStreamNotifierProvider._({
    required MainStreamNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'mainStreamNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$mainStreamNotifierHash();

  @override
  String toString() {
    return r'mainStreamNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MainStreamNotifier create() => MainStreamNotifier();

  @override
  bool operator ==(Object other) {
    return other is MainStreamNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mainStreamNotifierHash() =>
    r'5b5525a09956d5299036162fcd3ec219a1b6a047';

final class MainStreamNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          MainStreamNotifier,
          AsyncValue<MainEvent>,
          MainEvent,
          Stream<MainEvent>,
          Account
        > {
  const MainStreamNotifierFamily._()
    : super(
        retry: null,
        name: r'mainStreamNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MainStreamNotifierProvider call(Account account) =>
      MainStreamNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'mainStreamNotifierProvider';
}

abstract class _$MainStreamNotifier extends $StreamNotifier<MainEvent> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<MainEvent> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<MainEvent>, MainEvent>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MainEvent>, MainEvent>,
              AsyncValue<MainEvent>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
