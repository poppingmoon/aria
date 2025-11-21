// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muted_words_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MutedWordsNotifier)
const mutedWordsNotifierProvider = MutedWordsNotifierFamily._();

final class MutedWordsNotifierProvider
    extends $NotifierProvider<MutedWordsNotifier, List<MuteWord>> {
  const MutedWordsNotifierProvider._({
    required MutedWordsNotifierFamily super.from,
    required (Account, {bool hardMute}) super.argument,
  }) : super(
         retry: null,
         name: r'mutedWordsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$mutedWordsNotifierHash();

  @override
  String toString() {
    return r'mutedWordsNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  MutedWordsNotifier create() => MutedWordsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<MuteWord> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<MuteWord>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MutedWordsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mutedWordsNotifierHash() =>
    r'b5ab4c64541812d05d619da6523b6767ad742b8f';

final class MutedWordsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          MutedWordsNotifier,
          List<MuteWord>,
          List<MuteWord>,
          List<MuteWord>,
          (Account, {bool hardMute})
        > {
  const MutedWordsNotifierFamily._()
    : super(
        retry: null,
        name: r'mutedWordsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MutedWordsNotifierProvider call(Account account, {bool hardMute = false}) =>
      MutedWordsNotifierProvider._(
        argument: (account, hardMute: hardMute),
        from: this,
      );

  @override
  String toString() => r'mutedWordsNotifierProvider';
}

abstract class _$MutedWordsNotifier extends $Notifier<List<MuteWord>> {
  late final _$args = ref.$arg as (Account, {bool hardMute});
  Account get account => _$args.$1;
  bool get hardMute => _$args.hardMute;

  List<MuteWord> build(Account account, {bool hardMute = false});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, hardMute: _$args.hardMute);
    final ref = this.ref as $Ref<List<MuteWord>, List<MuteWord>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<MuteWord>, List<MuteWord>>,
              List<MuteWord>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
