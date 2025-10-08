// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(emoji)
const emojiProvider = EmojiFamily._();

final class EmojiProvider extends $FunctionalProvider<Emoji?, Emoji?, Emoji?>
    with $Provider<Emoji?> {
  const EmojiProvider._({
    required EmojiFamily super.from,
    required (String, String) super.argument,
  }) : super(
         retry: null,
         name: r'emojiProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$emojiHash();

  @override
  String toString() {
    return r'emojiProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<Emoji?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Emoji? create(Ref ref) {
    final argument = this.argument as (String, String);
    return emoji(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Emoji? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Emoji?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EmojiProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$emojiHash() => r'4e77e11f3cca2b80ad4a5598ee5033f47c7dc3d6';

final class EmojiFamily extends $Family
    with $FunctionalFamilyOverride<Emoji?, (String, String)> {
  const EmojiFamily._()
    : super(
        retry: null,
        name: r'emojiProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  EmojiProvider call(String host, String code) =>
      EmojiProvider._(argument: (host, code), from: this);

  @override
  String toString() => r'emojiProvider';
}
