// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'antennas_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AntennasNotifier)
const antennasNotifierProvider = AntennasNotifierFamily._();

final class AntennasNotifierProvider
    extends $AsyncNotifierProvider<AntennasNotifier, List<Antenna>> {
  const AntennasNotifierProvider._({
    required AntennasNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'antennasNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$antennasNotifierHash();

  @override
  String toString() {
    return r'antennasNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  AntennasNotifier create() => AntennasNotifier();

  @override
  bool operator ==(Object other) {
    return other is AntennasNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$antennasNotifierHash() => r'd40f97f887c35336aa724e5123dd318896d06107';

final class AntennasNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AntennasNotifier,
          AsyncValue<List<Antenna>>,
          List<Antenna>,
          FutureOr<List<Antenna>>,
          Account
        > {
  const AntennasNotifierFamily._()
    : super(
        retry: null,
        name: r'antennasNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AntennasNotifierProvider call(Account account) =>
      AntennasNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'antennasNotifierProvider';
}

abstract class _$AntennasNotifier extends $AsyncNotifier<List<Antenna>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  FutureOr<List<Antenna>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<List<Antenna>>, List<Antenna>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Antenna>>, List<Antenna>>,
              AsyncValue<List<Antenna>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
