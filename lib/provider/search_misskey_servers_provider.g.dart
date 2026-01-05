// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_misskey_servers_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(searchMisskeyServers)
final searchMisskeyServersProvider = SearchMisskeyServersFamily._();

final class SearchMisskeyServersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<JoinMisskeyInstanceInfo>>,
          List<JoinMisskeyInstanceInfo>,
          FutureOr<List<JoinMisskeyInstanceInfo>>
        >
    with
        $FutureModifier<List<JoinMisskeyInstanceInfo>>,
        $FutureProvider<List<JoinMisskeyInstanceInfo>> {
  SearchMisskeyServersProvider._({
    required SearchMisskeyServersFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'searchMisskeyServersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchMisskeyServersHash();

  @override
  String toString() {
    return r'searchMisskeyServersProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<JoinMisskeyInstanceInfo>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<JoinMisskeyInstanceInfo>> create(Ref ref) {
    final argument = this.argument as String;
    return searchMisskeyServers(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchMisskeyServersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchMisskeyServersHash() =>
    r'5d85ae53e7d9115ab65f50045b3c445f3d3703e9';

final class SearchMisskeyServersFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<JoinMisskeyInstanceInfo>>,
          String
        > {
  SearchMisskeyServersFamily._()
    : super(
        retry: null,
        name: r'searchMisskeyServersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchMisskeyServersProvider call(String query) =>
      SearchMisskeyServersProvider._(argument: query, from: this);

  @override
  String toString() => r'searchMisskeyServersProvider';
}
