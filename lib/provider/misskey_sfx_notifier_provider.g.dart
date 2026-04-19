// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misskey_sfx_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MisskeySfxNotifier)
final misskeySfxNotifierProvider = MisskeySfxNotifierFamily._();

final class MisskeySfxNotifierProvider
    extends
        $NotifierProvider<
          MisskeySfxNotifier,
          ({String? asset, bool vibrate, double? volume})
        > {
  MisskeySfxNotifierProvider._({
    required MisskeySfxNotifierFamily super.from,
    required OperationType super.argument,
  }) : super(
         retry: null,
         name: r'misskeySfxNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$misskeySfxNotifierHash();

  @override
  String toString() {
    return r'misskeySfxNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MisskeySfxNotifier create() => MisskeySfxNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
    ({String? asset, bool vibrate, double? volume}) value,
  ) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<({String? asset, bool vibrate, double? volume})>(
            value,
          ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MisskeySfxNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$misskeySfxNotifierHash() =>
    r'ccf30359ebfe8a167ce7799dcf86fce7451e3f99';

final class MisskeySfxNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          MisskeySfxNotifier,
          ({String? asset, bool vibrate, double? volume}),
          ({String? asset, bool vibrate, double? volume}),
          ({String? asset, bool vibrate, double? volume}),
          OperationType
        > {
  MisskeySfxNotifierFamily._()
    : super(
        retry: null,
        name: r'misskeySfxNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MisskeySfxNotifierProvider call(OperationType type) =>
      MisskeySfxNotifierProvider._(argument: type, from: this);

  @override
  String toString() => r'misskeySfxNotifierProvider';
}

abstract class _$MisskeySfxNotifier
    extends $Notifier<({String? asset, bool vibrate, double? volume})> {
  late final _$args = ref.$arg as OperationType;
  OperationType get type => _$args;

  ({String? asset, bool vibrate, double? volume}) build(OperationType type);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              ({String? asset, bool vibrate, double? volume}),
              ({String? asset, bool vibrate, double? volume})
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ({String? asset, bool vibrate, double? volume}),
                ({String? asset, bool vibrate, double? volume})
              >,
              ({String? asset, bool vibrate, double? volume}),
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
