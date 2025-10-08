// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(INotifier)
const iNotifierProvider = INotifierFamily._();

final class INotifierProvider
    extends $StreamNotifierProvider<INotifier, MeDetailed?> {
  const INotifierProvider._({
    required INotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'iNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$iNotifierHash();

  @override
  String toString() {
    return r'iNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  INotifier create() => INotifier();

  @override
  bool operator ==(Object other) {
    return other is INotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$iNotifierHash() => r'1b3aef2ede05aa0a0f1ddf2a81f9264b3ecac8e5';

final class INotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          INotifier,
          AsyncValue<MeDetailed?>,
          MeDetailed?,
          Stream<MeDetailed?>,
          Account
        > {
  const INotifierFamily._()
    : super(
        retry: null,
        name: r'iNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  INotifierProvider call(Account account) =>
      INotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'iNotifierProvider';
}

abstract class _$INotifier extends $StreamNotifier<MeDetailed?> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<MeDetailed?> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<MeDetailed?>, MeDetailed?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MeDetailed?>, MeDetailed?>,
              AsyncValue<MeDetailed?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
