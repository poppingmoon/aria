// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_color_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CorePaletteNotifier)
const corePaletteNotifierProvider = CorePaletteNotifierProvider._();

final class CorePaletteNotifierProvider
    extends $NotifierProvider<CorePaletteNotifier, CorePalette?> {
  const CorePaletteNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'corePaletteNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$corePaletteNotifierHash();

  @$internal
  @override
  CorePaletteNotifier create() => CorePaletteNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CorePalette? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CorePalette?>(value),
    );
  }
}

String _$corePaletteNotifierHash() =>
    r'885db6834bc6e79aabdaab4ef92b0c1341c94669';

abstract class _$CorePaletteNotifier extends $Notifier<CorePalette?> {
  CorePalette? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CorePalette?, CorePalette?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CorePalette?, CorePalette?>,
              CorePalette?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(_AccentColorNotifier)
const _accentColorNotifierProvider = _AccentColorNotifierProvider._();

final class _AccentColorNotifierProvider
    extends $NotifierProvider<_AccentColorNotifier, Color?> {
  const _AccentColorNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_accentColorNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$_accentColorNotifierHash();

  @$internal
  @override
  _AccentColorNotifier create() => _AccentColorNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Color? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Color?>(value),
    );
  }
}

String _$_accentColorNotifierHash() =>
    r'6ee574d2f60c624e7142d3fb2d02ce6fc6dca8a6';

abstract class _$AccentColorNotifier extends $Notifier<Color?> {
  Color? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Color?, Color?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Color?, Color?>,
              Color?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(dynamicColor)
const dynamicColorProvider = DynamicColorFamily._();

final class DynamicColorProvider
    extends $FunctionalProvider<MisskeyColors?, MisskeyColors?, MisskeyColors?>
    with $Provider<MisskeyColors?> {
  const DynamicColorProvider._({
    required DynamicColorFamily super.from,
    required Brightness super.argument,
  }) : super(
         retry: null,
         name: r'dynamicColorProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$dynamicColorHash();

  @override
  String toString() {
    return r'dynamicColorProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<MisskeyColors?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MisskeyColors? create(Ref ref) {
    final argument = this.argument as Brightness;
    return dynamicColor(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MisskeyColors? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MisskeyColors?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is DynamicColorProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$dynamicColorHash() => r'7d22b4869ca21666054ceef3c2a20ca2a6134372';

final class DynamicColorFamily extends $Family
    with $FunctionalFamilyOverride<MisskeyColors?, Brightness> {
  const DynamicColorFamily._()
    : super(
        retry: null,
        name: r'dynamicColorProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DynamicColorProvider call(Brightness brightness) =>
      DynamicColorProvider._(argument: brightness, from: this);

  @override
  String toString() => r'dynamicColorProvider';
}
