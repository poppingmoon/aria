// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClipNotifier)
const clipNotifierProvider = ClipNotifierFamily._();

final class ClipNotifierProvider
    extends $AsyncNotifierProvider<ClipNotifier, Clip> {
  const ClipNotifierProvider._({
    required ClipNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'clipNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clipNotifierHash();

  @override
  String toString() {
    return r'clipNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ClipNotifier create() => ClipNotifier();

  @override
  bool operator ==(Object other) {
    return other is ClipNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clipNotifierHash() => r'76f8132b92b5f862f65377420c2e208e8ad84953';

final class ClipNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ClipNotifier,
          AsyncValue<Clip>,
          Clip,
          FutureOr<Clip>,
          (Account, String)
        > {
  const ClipNotifierFamily._()
    : super(
        retry: null,
        name: r'clipNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClipNotifierProvider call(Account account, String clipId) =>
      ClipNotifierProvider._(argument: (account, clipId), from: this);

  @override
  String toString() => r'clipNotifierProvider';
}

abstract class _$ClipNotifier extends $AsyncNotifier<Clip> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get clipId => _$args.$2;

  FutureOr<Clip> build(Account account, String clipId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2);
    final ref = this.ref as $Ref<AsyncValue<Clip>, Clip>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Clip>, Clip>,
              AsyncValue<Clip>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
