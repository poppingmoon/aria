// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_emoji_index_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(customEmojiIndex)
const customEmojiIndexProvider = CustomEmojiIndexFamily._();

final class CustomEmojiIndexProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<String, Set<Emoji>>>,
          Map<String, Set<Emoji>>,
          FutureOr<Map<String, Set<Emoji>>>
        >
    with
        $FutureModifier<Map<String, Set<Emoji>>>,
        $FutureProvider<Map<String, Set<Emoji>>> {
  const CustomEmojiIndexProvider._({
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
  $FutureProviderElement<Map<String, Set<Emoji>>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<String, Set<Emoji>>> create(Ref ref) {
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

String _$customEmojiIndexHash() => r'b0b4f5411d2ea2ac82b7d5d09dc3b422937e6a82';

final class CustomEmojiIndexFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Map<String, Set<Emoji>>>, String> {
  const CustomEmojiIndexFamily._()
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
