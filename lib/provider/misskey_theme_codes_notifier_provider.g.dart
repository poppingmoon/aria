// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misskey_theme_codes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MisskeyThemeCodesNotifier)
final misskeyThemeCodesNotifierProvider = MisskeyThemeCodesNotifierProvider._();

final class MisskeyThemeCodesNotifierProvider
    extends $NotifierProvider<MisskeyThemeCodesNotifier, List<String>> {
  MisskeyThemeCodesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'misskeyThemeCodesNotifierProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$misskeyThemeCodesNotifierHash();

  @$internal
  @override
  MisskeyThemeCodesNotifier create() => MisskeyThemeCodesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }
}

String _$misskeyThemeCodesNotifierHash() =>
    r'caa89102b765a907e6a114239fac86339e6827e2';

abstract class _$MisskeyThemeCodesNotifier extends $Notifier<List<String>> {
  List<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<String>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<String>, List<String>>,
              List<String>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
