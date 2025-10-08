// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muted_emojis_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MutedEmojisNotifier)
const mutedEmojisNotifierProvider = MutedEmojisNotifierFamily._();

final class MutedEmojisNotifierProvider
    extends $NotifierProvider<MutedEmojisNotifier, Set<String>> {
  const MutedEmojisNotifierProvider._({
    required MutedEmojisNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'mutedEmojisNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$mutedEmojisNotifierHash();

  @override
  String toString() {
    return r'mutedEmojisNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MutedEmojisNotifier create() => MutedEmojisNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<String>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MutedEmojisNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mutedEmojisNotifierHash() =>
    r'c921f6a34042e74faef53fb85cfe083ae70c74b3';

final class MutedEmojisNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          MutedEmojisNotifier,
          Set<String>,
          Set<String>,
          Set<String>,
          Account
        > {
  const MutedEmojisNotifierFamily._()
    : super(
        retry: null,
        name: r'mutedEmojisNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  MutedEmojisNotifierProvider call(Account account) =>
      MutedEmojisNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'mutedEmojisNotifierProvider';
}

abstract class _$MutedEmojisNotifier extends $Notifier<Set<String>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Set<String> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<Set<String>, Set<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Set<String>, Set<String>>,
              Set<String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
