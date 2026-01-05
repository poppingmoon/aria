// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owned_channels_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OwnedChannelsNotifier)
final ownedChannelsNotifierProvider = OwnedChannelsNotifierFamily._();

final class OwnedChannelsNotifierProvider
    extends
        $StreamNotifierProvider<
          OwnedChannelsNotifier,
          PaginationState<CommunityChannel>
        > {
  OwnedChannelsNotifierProvider._({
    required OwnedChannelsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'ownedChannelsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$ownedChannelsNotifierHash();

  @override
  String toString() {
    return r'ownedChannelsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  OwnedChannelsNotifier create() => OwnedChannelsNotifier();

  @override
  bool operator ==(Object other) {
    return other is OwnedChannelsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$ownedChannelsNotifierHash() =>
    r'eadda957788c207c4572647f59f6a7eeac61e802';

final class OwnedChannelsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          OwnedChannelsNotifier,
          AsyncValue<PaginationState<CommunityChannel>>,
          PaginationState<CommunityChannel>,
          Stream<PaginationState<CommunityChannel>>,
          Account
        > {
  OwnedChannelsNotifierFamily._()
    : super(
        retry: null,
        name: r'ownedChannelsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OwnedChannelsNotifierProvider call(Account account) =>
      OwnedChannelsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'ownedChannelsNotifierProvider';
}

abstract class _$OwnedChannelsNotifier
    extends $StreamNotifier<PaginationState<CommunityChannel>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<CommunityChannel>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<CommunityChannel>>,
              PaginationState<CommunityChannel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<CommunityChannel>>,
                PaginationState<CommunityChannel>
              >,
              AsyncValue<PaginationState<CommunityChannel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
