// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_socket_channel_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(webSocketChannel)
const webSocketChannelProvider = WebSocketChannelFamily._();

final class WebSocketChannelProvider
    extends
        $FunctionalProvider<
          AsyncValue<(IOWebSocketChannel, DateTime)>,
          (IOWebSocketChannel, DateTime),
          FutureOr<(IOWebSocketChannel, DateTime)>
        >
    with
        $FutureModifier<(IOWebSocketChannel, DateTime)>,
        $FutureProvider<(IOWebSocketChannel, DateTime)> {
  const WebSocketChannelProvider._({
    required WebSocketChannelFamily super.from,
    required Account super.argument,
  }) : super(
         retry: _retry,
         name: r'webSocketChannelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$webSocketChannelHash();

  @override
  String toString() {
    return r'webSocketChannelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<(IOWebSocketChannel, DateTime)> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<(IOWebSocketChannel, DateTime)> create(Ref ref) {
    final argument = this.argument as Account;
    return webSocketChannel(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is WebSocketChannelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$webSocketChannelHash() => r'532c2d2579309be5ce586606110e0efc57bd60f3';

final class WebSocketChannelFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<(IOWebSocketChannel, DateTime)>,
          Account
        > {
  const WebSocketChannelFamily._()
    : super(
        retry: _retry,
        name: r'webSocketChannelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  WebSocketChannelProvider call(Account account) =>
      WebSocketChannelProvider._(argument: account, from: this);

  @override
  String toString() => r'webSocketChannelProvider';
}
