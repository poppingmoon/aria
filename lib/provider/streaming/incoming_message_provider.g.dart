// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incoming_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(_ErrorCountNotifier)
const _errorCountNotifierProvider = _ErrorCountNotifierFamily._();

final class _ErrorCountNotifierProvider
    extends $NotifierProvider<_ErrorCountNotifier, int> {
  const _ErrorCountNotifierProvider._({
    required _ErrorCountNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'_errorCountNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$_errorCountNotifierHash();

  @override
  String toString() {
    return r'_errorCountNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  _ErrorCountNotifier create() => _ErrorCountNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _ErrorCountNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$_errorCountNotifierHash() =>
    r'e8fae60d8a4e02c13cf9eb77505725782503ab84';

final class _ErrorCountNotifierFamily extends $Family
    with $ClassFamilyOverride<_ErrorCountNotifier, int, int, int, Account> {
  const _ErrorCountNotifierFamily._()
    : super(
        retry: null,
        name: r'_errorCountNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  _ErrorCountNotifierProvider call(Account account) =>
      _ErrorCountNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'_errorCountNotifierProvider';
}

abstract class _$ErrorCountNotifier extends $Notifier<int> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  int build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(incomingMessage)
const incomingMessageProvider = IncomingMessageFamily._();

final class IncomingMessageProvider
    extends
        $FunctionalProvider<
          AsyncValue<IncomingMessage>,
          IncomingMessage,
          Stream<IncomingMessage>
        >
    with $FutureModifier<IncomingMessage>, $StreamProvider<IncomingMessage> {
  const IncomingMessageProvider._({
    required IncomingMessageFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'incomingMessageProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$incomingMessageHash();

  @override
  String toString() {
    return r'incomingMessageProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<IncomingMessage> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<IncomingMessage> create(Ref ref) {
    final argument = this.argument as Account;
    return incomingMessage(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is IncomingMessageProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$incomingMessageHash() => r'61d2bd51c99de48e11c19e30957ffcc0e8e62420';

final class IncomingMessageFamily extends $Family
    with $FunctionalFamilyOverride<Stream<IncomingMessage>, Account> {
  const IncomingMessageFamily._()
    : super(
        retry: null,
        name: r'incomingMessageProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  IncomingMessageProvider call(Account account) =>
      IncomingMessageProvider._(argument: account, from: this);

  @override
  String toString() => r'incomingMessageProvider';
}
