// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(note)
const noteProvider = NoteFamily._();

final class NoteProvider extends $FunctionalProvider<Note?, Note?, Note?>
    with $Provider<Note?> {
  const NoteProvider._({
    required NoteFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'noteProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$noteHash();

  @override
  String toString() {
    return r'noteProvider'
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
    return note(ref, argument.$1, argument.$2);
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
    return other is NoteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$noteHash() => r'a667fa12e07a5dd4bf19f2b5836fc85490a8106f';

final class NoteFamily extends $Family
    with $FunctionalFamilyOverride<Note?, (Account, String)> {
  const NoteFamily._()
    : super(
        retry: null,
        name: r'noteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  NoteProvider call(Account account, String noteId) =>
      NoteProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'noteProvider';
}
