// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinned_emojis_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PinnedEmojisNotifier)
const pinnedEmojisNotifierProvider = PinnedEmojisNotifierFamily._();

final class PinnedEmojisNotifierProvider
    extends $NotifierProvider<PinnedEmojisNotifier, List<String>> {
  const PinnedEmojisNotifierProvider._({
    required PinnedEmojisNotifierFamily super.from,
    required (Account, {bool reaction}) super.argument,
  }) : super(
         retry: null,
         name: r'pinnedEmojisNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pinnedEmojisNotifierHash();

  @override
  String toString() {
    return r'pinnedEmojisNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  PinnedEmojisNotifier create() => PinnedEmojisNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PinnedEmojisNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pinnedEmojisNotifierHash() =>
    r'feffc9bfae5ef98834ce943baa489d3be564a42d';

final class PinnedEmojisNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          PinnedEmojisNotifier,
          List<String>,
          List<String>,
          List<String>,
          (Account, {bool reaction})
        > {
  const PinnedEmojisNotifierFamily._()
    : super(
        retry: null,
        name: r'pinnedEmojisNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  PinnedEmojisNotifierProvider call(Account account, {bool reaction = false}) =>
      PinnedEmojisNotifierProvider._(
        argument: (account, reaction: reaction),
        from: this,
      );

  @override
  String toString() => r'pinnedEmojisNotifierProvider';
}

abstract class _$PinnedEmojisNotifier extends $Notifier<List<String>> {
  late final _$args = ref.$arg as (Account, {bool reaction});
  Account get account => _$args.$1;
  bool get reaction => _$args.reaction;

  List<String> build(Account account, {bool reaction = false});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, reaction: _$args.reaction);
    final ref = this.ref as $Ref<List<String>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<String>, List<String>>,
              List<String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
