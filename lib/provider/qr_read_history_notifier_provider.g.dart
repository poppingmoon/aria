// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_read_history_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(QrReadHistoryNotifier)
final qrReadHistoryNotifierProvider = QrReadHistoryNotifierFamily._();

final class QrReadHistoryNotifierProvider
    extends $StreamNotifierProvider<QrReadHistoryNotifier, List<String>> {
  QrReadHistoryNotifierProvider._({
    required QrReadHistoryNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'qrReadHistoryNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$qrReadHistoryNotifierHash();

  @override
  String toString() {
    return r'qrReadHistoryNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  QrReadHistoryNotifier create() => QrReadHistoryNotifier();

  @override
  bool operator ==(Object other) {
    return other is QrReadHistoryNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$qrReadHistoryNotifierHash() =>
    r'7266086fb05f22bcdec5dbe1c84b90da3f3e557a';

final class QrReadHistoryNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          QrReadHistoryNotifier,
          AsyncValue<List<String>>,
          List<String>,
          Stream<List<String>>,
          Account
        > {
  QrReadHistoryNotifierFamily._()
    : super(
        retry: null,
        name: r'qrReadHistoryNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  QrReadHistoryNotifierProvider call(Account account) =>
      QrReadHistoryNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'qrReadHistoryNotifierProvider';
}

abstract class _$QrReadHistoryNotifier extends $StreamNotifier<List<String>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<List<String>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<String>>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<String>>, List<String>>,
              AsyncValue<List<String>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
