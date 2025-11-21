// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incoming_message_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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

String _$incomingMessageHash() => r'3847ce18bf862a647c4b4cd6ba22d1953798176b';

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
