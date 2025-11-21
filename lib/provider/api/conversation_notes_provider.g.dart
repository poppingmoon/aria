// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_notes_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(conversationNotes)
const conversationNotesProvider = ConversationNotesFamily._();

final class ConversationNotesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Note>>,
          List<Note>,
          FutureOr<List<Note>>
        >
    with $FutureModifier<List<Note>>, $FutureProvider<List<Note>> {
  const ConversationNotesProvider._({
    required ConversationNotesFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'conversationNotesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$conversationNotesHash();

  @override
  String toString() {
    return r'conversationNotesProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<Note>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Note>> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return conversationNotes(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is ConversationNotesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$conversationNotesHash() => r'd4125b10db9e74084e1c7fc71bbff00a92a2868b';

final class ConversationNotesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Note>>, (Account, String)> {
  const ConversationNotesFamily._()
    : super(
        retry: null,
        name: r'conversationNotesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ConversationNotesProvider call(Account account, String noteId) =>
      ConversationNotesProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'conversationNotesProvider';
}
