// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_emoji_index_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(customEmojiIndex)
final customEmojiIndexProvider = CustomEmojiIndexFamily._();

final class CustomEmojiIndexProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<String, Set<String>>>,
          Map<String, Set<String>>,
          FutureOr<Map<String, Set<String>>>
        >
    with
        $FutureModifier<Map<String, Set<String>>>,
        $FutureProvider<Map<String, Set<String>>> {
  CustomEmojiIndexProvider._({
    required CustomEmojiIndexFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'customEmojiIndexProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$customEmojiIndexHash();

  @override
  String toString() {
    return r'customEmojiIndexProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Map<String, Set<String>>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<String, Set<String>>> create(Ref ref) {
    final argument = this.argument as String;
    return customEmojiIndex(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomEmojiIndexProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$customEmojiIndexHash() => r'f63dbcb72b97f5ed8152746f4d88e60d9c2dfb1a';

final class CustomEmojiIndexFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Map<String, Set<String>>>, String> {
  CustomEmojiIndexFamily._()
    : super(
        retry: null,
        name: r'customEmojiIndexProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  CustomEmojiIndexProvider call(String host) =>
      CustomEmojiIndexProvider._(argument: host, from: this);

  @override
  String toString() => r'customEmojiIndexProvider';
}
