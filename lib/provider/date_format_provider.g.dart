// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_format_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dateFormat)
final dateFormatProvider = DateFormatFamily._();

final class DateFormatProvider
    extends $FunctionalProvider<DateFormat, DateFormat, DateFormat>
    with $Provider<DateFormat> {
  DateFormatProvider._({
    required DateFormatFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'dateFormatProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$dateFormatHash();

  @override
  String toString() {
    return r'dateFormatProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<DateFormat> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DateFormat create(Ref ref) {
    final argument = this.argument as String?;
    return dateFormat(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateFormat value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateFormat>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is DateFormatProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$dateFormatHash() => r'e0d02d64adb2850bbcee13db0798cc7f8dafd4b2';

final class DateFormatFamily extends $Family
    with $FunctionalFamilyOverride<DateFormat, String?> {
  DateFormatFamily._()
    : super(
        retry: null,
        name: r'dateFormatProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DateFormatProvider call(String? locale) =>
      DateFormatProvider._(argument: locale, from: this);

  @override
  String toString() => r'dateFormatProvider';
}
