// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChannelNotifier)
final channelNotifierProvider = ChannelNotifierFamily._();

final class ChannelNotifierProvider
    extends $AsyncNotifierProvider<ChannelNotifier, CommunityChannel> {
  ChannelNotifierProvider._({
    required ChannelNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'channelNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$channelNotifierHash();

  @override
  String toString() {
    return r'channelNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ChannelNotifier create() => ChannelNotifier();

  @override
  bool operator ==(Object other) {
    return other is ChannelNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$channelNotifierHash() => r'11eb92c887d5e7b675752b4f0b00371c8fb1775e';

final class ChannelNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ChannelNotifier,
          AsyncValue<CommunityChannel>,
          CommunityChannel,
          FutureOr<CommunityChannel>,
          (Account, String)
        > {
  ChannelNotifierFamily._()
    : super(
        retry: null,
        name: r'channelNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ChannelNotifierProvider call(Account account, String channelId) =>
      ChannelNotifierProvider._(argument: (account, channelId), from: this);

  @override
  String toString() => r'channelNotifierProvider';
}

abstract class _$ChannelNotifier extends $AsyncNotifier<CommunityChannel> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get channelId => _$args.$2;

  FutureOr<CommunityChannel> build(Account account, String channelId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<CommunityChannel>, CommunityChannel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<CommunityChannel>, CommunityChannel>,
              AsyncValue<CommunityChannel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
