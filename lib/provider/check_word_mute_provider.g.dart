// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_word_mute_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(checkWordMute)
const checkWordMuteProvider = CheckWordMuteFamily._();

final class CheckWordMuteProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const CheckWordMuteProvider._({
    required CheckWordMuteFamily super.from,
    required (Account, String, {bool hardMute}) super.argument,
  }) : super(
         retry: null,
         name: r'checkWordMuteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$checkWordMuteHash();

  @override
  String toString() {
    return r'checkWordMuteProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as (Account, String, {bool hardMute});
    return checkWordMute(
      ref,
      argument.$1,
      argument.$2,
      hardMute: argument.hardMute,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CheckWordMuteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checkWordMuteHash() => r'32c20dc273731a735b17b1337abf112c45385d39';

final class CheckWordMuteFamily extends $Family
    with $FunctionalFamilyOverride<bool, (Account, String, {bool hardMute})> {
  const CheckWordMuteFamily._()
    : super(
        retry: null,
        name: r'checkWordMuteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CheckWordMuteProvider call(
    Account account,
    String noteId, {
    bool hardMute = false,
  }) => CheckWordMuteProvider._(
    argument: (account, noteId, hardMute: hardMute),
    from: this,
  );

  @override
  String toString() => r'checkWordMuteProvider';
}
