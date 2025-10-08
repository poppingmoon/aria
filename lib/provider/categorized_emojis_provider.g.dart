// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorized_emojis_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(categorizedEmojis)
const categorizedEmojisProvider = CategorizedEmojisFamily._();

final class CategorizedEmojisProvider
    extends
        $FunctionalProvider<
          Map<String?, List<Emoji>>,
          Map<String?, List<Emoji>>,
          Map<String?, List<Emoji>>
        >
    with $Provider<Map<String?, List<Emoji>>> {
  const CategorizedEmojisProvider._({
    required CategorizedEmojisFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'categorizedEmojisProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$categorizedEmojisHash();

  @override
  String toString() {
    return r'categorizedEmojisProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<Map<String?, List<Emoji>>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Map<String?, List<Emoji>> create(Ref ref) {
    final argument = this.argument as String;
    return categorizedEmojis(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String?, List<Emoji>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String?, List<Emoji>>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CategorizedEmojisProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$categorizedEmojisHash() => r'9a74978216c1aea1bef5ea4584ff467750ecbaa0';

final class CategorizedEmojisFamily extends $Family
    with $FunctionalFamilyOverride<Map<String?, List<Emoji>>, String> {
  const CategorizedEmojisFamily._()
    : super(
        retry: null,
        name: r'categorizedEmojisProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  CategorizedEmojisProvider call(String host) =>
      CategorizedEmojisProvider._(argument: host, from: this);

  @override
  String toString() => r'categorizedEmojisProvider';
}
