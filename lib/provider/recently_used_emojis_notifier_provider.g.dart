// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_used_emojis_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RecentlyUsedEmojisNotifier)
final recentlyUsedEmojisNotifierProvider = RecentlyUsedEmojisNotifierFamily._();

final class RecentlyUsedEmojisNotifierProvider
    extends $NotifierProvider<RecentlyUsedEmojisNotifier, List<String>> {
  RecentlyUsedEmojisNotifierProvider._({
    required RecentlyUsedEmojisNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'recentlyUsedEmojisNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$recentlyUsedEmojisNotifierHash();

  @override
  String toString() {
    return r'recentlyUsedEmojisNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  RecentlyUsedEmojisNotifier create() => RecentlyUsedEmojisNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RecentlyUsedEmojisNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$recentlyUsedEmojisNotifierHash() =>
    r'3c3d090191a2faa7cb9cb6fc0246208738213430';

final class RecentlyUsedEmojisNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          RecentlyUsedEmojisNotifier,
          List<String>,
          List<String>,
          List<String>,
          Account
        > {
  RecentlyUsedEmojisNotifierFamily._()
    : super(
        retry: null,
        name: r'recentlyUsedEmojisNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  RecentlyUsedEmojisNotifierProvider call(Account account) =>
      RecentlyUsedEmojisNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'recentlyUsedEmojisNotifierProvider';
}

abstract class _$RecentlyUsedEmojisNotifier extends $Notifier<List<String>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  List<String> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<String>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<String>, List<String>>,
              List<String>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
