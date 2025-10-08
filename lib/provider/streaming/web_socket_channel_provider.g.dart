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
          (WebSocketChannel, DateTime),
          (WebSocketChannel, DateTime),
          (WebSocketChannel, DateTime)
        >
    with $Provider<(WebSocketChannel, DateTime)> {
  const WebSocketChannelProvider._({
    required WebSocketChannelFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
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
  $ProviderElement<(WebSocketChannel, DateTime)> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  (WebSocketChannel, DateTime) create(Ref ref) {
    final argument = this.argument as Account;
    return webSocketChannel(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue((WebSocketChannel, DateTime) value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<(WebSocketChannel, DateTime)>(value),
    );
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

String _$webSocketChannelHash() => r'e30b2364f99bb94031a62ae01df616e5e260b12a';

final class WebSocketChannelFamily extends $Family
    with $FunctionalFamilyOverride<(WebSocketChannel, DateTime), Account> {
  const WebSocketChannelFamily._()
    : super(
        retry: null,
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
