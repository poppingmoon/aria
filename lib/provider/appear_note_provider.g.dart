// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appear_note_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appearNote)
const appearNoteProvider = AppearNoteFamily._();

final class AppearNoteProvider extends $FunctionalProvider<Note?, Note?, Note?>
    with $Provider<Note?> {
  const AppearNoteProvider._({
    required AppearNoteFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'appearNoteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$appearNoteHash();

  @override
  String toString() {
    return r'appearNoteProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<Note?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Note? create(Ref ref) {
    final argument = this.argument as (Account, String);
    return appearNote(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Note? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Note?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AppearNoteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$appearNoteHash() => r'c57297ccaaf5dd400ef373e07904b8560a609ebe';

final class AppearNoteFamily extends $Family
    with $FunctionalFamilyOverride<Note?, (Account, String)> {
  const AppearNoteFamily._()
    : super(
        retry: null,
        name: r'appearNoteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AppearNoteProvider call(Account account, String noteId) =>
      AppearNoteProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'appearNoteProvider';
}
