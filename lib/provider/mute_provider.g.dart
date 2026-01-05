// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mute_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(mute)
final muteProvider = MuteFamily._();

final class MuteProvider
    extends
        $FunctionalProvider<
          (AhoCorasick, List<List<String>>, List<RegExp>),
          (AhoCorasick, List<List<String>>, List<RegExp>),
          (AhoCorasick, List<List<String>>, List<RegExp>)
        >
    with $Provider<(AhoCorasick, List<List<String>>, List<RegExp>)> {
  MuteProvider._({
    required MuteFamily super.from,
    required List<MuteWord> super.argument,
  }) : super(
         retry: null,
         name: r'muteProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$muteHash();

  @override
  String toString() {
    return r'muteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<(AhoCorasick, List<List<String>>, List<RegExp>)>
  $createElement($ProviderPointer pointer) => $ProviderElement(pointer);

  @override
  (AhoCorasick, List<List<String>>, List<RegExp>) create(Ref ref) {
    final argument = this.argument as List<MuteWord>;
    return mute(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
    (AhoCorasick, List<List<String>>, List<RegExp>) value,
  ) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<(AhoCorasick, List<List<String>>, List<RegExp>)>(
            value,
          ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MuteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$muteHash() => r'0641ba880aca46ee720b761708d188c922f2c91e';

final class MuteFamily extends $Family
    with
        $FunctionalFamilyOverride<
          (AhoCorasick, List<List<String>>, List<RegExp>),
          List<MuteWord>
        > {
  MuteFamily._()
    : super(
        retry: null,
        name: r'muteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  MuteProvider call(List<MuteWord> mutedWords) =>
      MuteProvider._(argument: mutedWords, from: this);

  @override
  String toString() => r'muteProvider';
}
