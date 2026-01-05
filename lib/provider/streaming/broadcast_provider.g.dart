// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcast_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(broadcast)
final broadcastProvider = BroadcastFamily._();

final class BroadcastProvider
    extends
        $FunctionalProvider<AsyncValue<Broadcast>, Broadcast, Stream<Broadcast>>
    with $FutureModifier<Broadcast>, $StreamProvider<Broadcast> {
  BroadcastProvider._({
    required BroadcastFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'broadcastProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$broadcastHash();

  @override
  String toString() {
    return r'broadcastProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<Broadcast> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Broadcast> create(Ref ref) {
    final argument = this.argument as Account;
    return broadcast(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is BroadcastProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$broadcastHash() => r'7230fae404420f7385521bf9c5f4df36f101925e';

final class BroadcastFamily extends $Family
    with $FunctionalFamilyOverride<Stream<Broadcast>, Account> {
  BroadcastFamily._()
    : super(
        retry: null,
        name: r'broadcastProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BroadcastProvider call(Account account) =>
      BroadcastProvider._(argument: account, from: this);

  @override
  String toString() => r'broadcastProvider';
}
