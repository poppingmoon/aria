// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_url_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(emojiUrl)
final emojiUrlProvider = EmojiUrlFamily._();

final class EmojiUrlProvider
    extends
        $FunctionalProvider<
          (String, String),
          (String, String),
          (String, String)
        >
    with $Provider<(String, String)> {
  EmojiUrlProvider._({
    required EmojiUrlFamily super.from,
    required (
      Account,
      String, {
      String? url,
      String? host,
      bool useOriginalSize,
    })
    super.argument,
  }) : super(
         retry: null,
         name: r'emojiUrlProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$emojiUrlHash();

  @override
  String toString() {
    return r'emojiUrlProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<(String, String)> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  (String, String) create(Ref ref) {
    final argument =
        this.argument
            as (
              Account,
              String, {
              String? url,
              String? host,
              bool useOriginalSize,
            });
    return emojiUrl(
      ref,
      argument.$1,
      argument.$2,
      url: argument.url,
      host: argument.host,
      useOriginalSize: argument.useOriginalSize,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue((String, String) value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<(String, String)>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EmojiUrlProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$emojiUrlHash() => r'587be2efdd6269a8ca1fe26ef8484eab03280ded';

final class EmojiUrlFamily extends $Family
    with
        $FunctionalFamilyOverride<
          (String, String),
          (Account, String, {String? url, String? host, bool useOriginalSize})
        > {
  EmojiUrlFamily._()
    : super(
        retry: null,
        name: r'emojiUrlProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  EmojiUrlProvider call(
    Account account,
    String emoji, {
    String? url,
    String? host,
    bool useOriginalSize = false,
  }) => EmojiUrlProvider._(
    argument: (
      account,
      emoji,
      url: url,
      host: host,
      useOriginalSize: useOriginalSize,
    ),
    from: this,
  );

  @override
  String toString() => r'emojiUrlProvider';
}
