// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_channels_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(featuredChannels)
const featuredChannelsProvider = FeaturedChannelsFamily._();

final class FeaturedChannelsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CommunityChannel>>,
          List<CommunityChannel>,
          FutureOr<List<CommunityChannel>>
        >
    with
        $FutureModifier<List<CommunityChannel>>,
        $FutureProvider<List<CommunityChannel>> {
  const FeaturedChannelsProvider._({
    required FeaturedChannelsFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'featuredChannelsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$featuredChannelsHash();

  @override
  String toString() {
    return r'featuredChannelsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<CommunityChannel>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<CommunityChannel>> create(Ref ref) {
    final argument = this.argument as Account;
    return featuredChannels(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FeaturedChannelsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$featuredChannelsHash() => r'ac273d56e2784bcd565e57130ea78c9e54809b8c';

final class FeaturedChannelsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<CommunityChannel>>, Account> {
  const FeaturedChannelsFamily._()
    : super(
        retry: null,
        name: r'featuredChannelsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FeaturedChannelsProvider call(Account account) =>
      FeaturedChannelsProvider._(argument: account, from: this);

  @override
  String toString() => r'featuredChannelsProvider';
}
