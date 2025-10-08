// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_ids_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserIdsNotifier)
const userIdsNotifierProvider = UserIdsNotifierProvider._();

final class UserIdsNotifierProvider
    extends $NotifierProvider<UserIdsNotifier, Map<Account, String>> {
  const UserIdsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userIdsNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userIdsNotifierHash();

  @$internal
  @override
  UserIdsNotifier create() => UserIdsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<Account, String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<Account, String>>(value),
    );
  }
}

String _$userIdsNotifierHash() => r'320f041f3fd6aa4fc114c6579ab309b9ce44a9b7';

abstract class _$UserIdsNotifier extends $Notifier<Map<Account, String>> {
  Map<Account, String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Map<Account, String>, Map<Account, String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<Account, String>, Map<Account, String>>,
              Map<Account, String>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
