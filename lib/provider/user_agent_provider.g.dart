// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_agent_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userAgent)
final userAgentProvider = UserAgentProvider._();

final class UserAgentProvider
    extends $FunctionalProvider<AsyncValue<String?>, String?, FutureOr<String?>>
    with $FutureModifier<String?>, $FutureProvider<String?> {
  UserAgentProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userAgentProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userAgentHash();

  @$internal
  @override
  $FutureProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String?> create(Ref ref) {
    return userAgent(ref);
  }
}

String _$userAgentHash() => r'ac5a4730ac11841190db3264eda1731d8ba5b4a1';
