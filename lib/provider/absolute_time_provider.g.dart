// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absolute_time_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(absoluteTime)
final absoluteTimeProvider = AbsoluteTimeFamily._();

final class AbsoluteTimeProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  AbsoluteTimeProvider._({
    required AbsoluteTimeFamily super.from,
    required (String?, DateTime) super.argument,
  }) : super(
         retry: null,
         name: r'absoluteTimeProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$absoluteTimeHash();

  @override
  String toString() {
    return r'absoluteTimeProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    final argument = this.argument as (String?, DateTime);
    return absoluteTime(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AbsoluteTimeProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$absoluteTimeHash() => r'159fc4f6a1ea76de6b2fec4b8efb0abf01361bce';

final class AbsoluteTimeFamily extends $Family
    with $FunctionalFamilyOverride<String, (String?, DateTime)> {
  AbsoluteTimeFamily._()
    : super(
        retry: null,
        name: r'absoluteTimeProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AbsoluteTimeProvider call(String? locale, DateTime time) =>
      AbsoluteTimeProvider._(argument: (locale, time), from: this);

  @override
  String toString() => r'absoluteTimeProvider';
}
