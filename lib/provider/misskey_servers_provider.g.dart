// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misskey_servers_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(misskeyServers)
const misskeyServersProvider = MisskeyServersProvider._();

final class MisskeyServersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<JoinMisskeyInstanceInfo>>,
          List<JoinMisskeyInstanceInfo>,
          FutureOr<List<JoinMisskeyInstanceInfo>>
        >
    with
        $FutureModifier<List<JoinMisskeyInstanceInfo>>,
        $FutureProvider<List<JoinMisskeyInstanceInfo>> {
  const MisskeyServersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'misskeyServersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$misskeyServersHash();

  @$internal
  @override
  $FutureProviderElement<List<JoinMisskeyInstanceInfo>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<JoinMisskeyInstanceInfo>> create(Ref ref) {
    return misskeyServers(ref);
  }
}

String _$misskeyServersHash() => r'077962f82fddd91c6eaec960da4c049726445eaf';
