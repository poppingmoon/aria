// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translated_note_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(translatedNote)
final translatedNoteProvider = TranslatedNoteFamily._();

final class TranslatedNoteProvider
    extends
        $FunctionalProvider<
          AsyncValue<NotesTranslateResponse?>,
          NotesTranslateResponse?,
          FutureOr<NotesTranslateResponse?>
        >
    with
        $FutureModifier<NotesTranslateResponse?>,
        $FutureProvider<NotesTranslateResponse?> {
  TranslatedNoteProvider._({
    required TranslatedNoteFamily super.from,
    required (Account, String, String) super.argument,
  }) : super(
         retry: null,
         name: r'translatedNoteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$translatedNoteHash();

  @override
  String toString() {
    return r'translatedNoteProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<NotesTranslateResponse?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NotesTranslateResponse?> create(Ref ref) {
    final argument = this.argument as (Account, String, String);
    return translatedNote(ref, argument.$1, argument.$2, argument.$3);
  }

  @override
  bool operator ==(Object other) {
    return other is TranslatedNoteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$translatedNoteHash() => r'b918d5336b98438db6320e82e5f52bee2e365172';

final class TranslatedNoteFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<NotesTranslateResponse?>,
          (Account, String, String)
        > {
  TranslatedNoteFamily._()
    : super(
        retry: null,
        name: r'translatedNoteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TranslatedNoteProvider call(
    Account account,
    String noteId,
    String targetLang,
  ) => TranslatedNoteProvider._(
    argument: (account, noteId, targetLang),
    from: this,
  );

  @override
  String toString() => r'translatedNoteProvider';
}
