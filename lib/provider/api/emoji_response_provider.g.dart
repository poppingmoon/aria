// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_response_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(emojiResponse)
const emojiResponseProvider = EmojiResponseFamily._();

final class EmojiResponseProvider
    extends
        $FunctionalProvider<
          AsyncValue<EmojiResponse>,
          EmojiResponse,
          FutureOr<EmojiResponse>
        >
    with $FutureModifier<EmojiResponse>, $FutureProvider<EmojiResponse> {
  const EmojiResponseProvider._({
    required EmojiResponseFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'emojiResponseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$emojiResponseHash();

  @override
  String toString() {
    return r'emojiResponseProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<EmojiResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<EmojiResponse> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return emojiResponse(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is EmojiResponseProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$emojiResponseHash() => r'be6963cabf02947ac220966cdc1b3462459db622';

final class EmojiResponseFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<EmojiResponse>, (Account, String)> {
  const EmojiResponseFamily._()
    : super(
        retry: null,
        name: r'emojiResponseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  EmojiResponseProvider call(Account account, String emojiName) =>
      EmojiResponseProvider._(argument: (account, emojiName), from: this);

  @override
  String toString() => r'emojiResponseProvider';
}
