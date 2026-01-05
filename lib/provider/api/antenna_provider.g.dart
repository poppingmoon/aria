// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'antenna_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(antenna)
final antennaProvider = AntennaFamily._();

final class AntennaProvider
    extends $FunctionalProvider<AsyncValue<Antenna>, Antenna, FutureOr<Antenna>>
    with $FutureModifier<Antenna>, $FutureProvider<Antenna> {
  AntennaProvider._({
    required AntennaFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'antennaProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$antennaHash();

  @override
  String toString() {
    return r'antennaProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<Antenna> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Antenna> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return antenna(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is AntennaProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$antennaHash() => r'b34a56473eb124ebe5dbc928c338650f26d513c6';

final class AntennaFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Antenna>, (Account, String)> {
  AntennaFamily._()
    : super(
        retry: null,
        name: r'antennaProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AntennaProvider call(Account account, String antennaId) =>
      AntennaProvider._(argument: (account, antennaId), from: this);

  @override
  String toString() => r'antennaProvider';
}
