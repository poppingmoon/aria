// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_channels_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(favoriteChannels)
const favoriteChannelsProvider = FavoriteChannelsFamily._();

final class FavoriteChannelsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<CommunityChannel>>,
          List<CommunityChannel>,
          FutureOr<List<CommunityChannel>>
        >
    with
        $FutureModifier<List<CommunityChannel>>,
        $FutureProvider<List<CommunityChannel>> {
  const FavoriteChannelsProvider._({
    required FavoriteChannelsFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'favoriteChannelsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$favoriteChannelsHash();

  @override
  String toString() {
    return r'favoriteChannelsProvider'
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
    return favoriteChannels(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FavoriteChannelsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$favoriteChannelsHash() => r'92da3075cd96c7e85ca280ee2fe3db24465d6615';

final class FavoriteChannelsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<CommunityChannel>>, Account> {
  const FavoriteChannelsFamily._()
    : super(
        retry: null,
        name: r'favoriteChannelsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FavoriteChannelsProvider call(Account account) =>
      FavoriteChannelsProvider._(argument: account, from: this);

  @override
  String toString() => r'favoriteChannelsProvider';
}
