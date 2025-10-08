// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_update_event_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(noteUpdateEvent)
const noteUpdateEventProvider = NoteUpdateEventFamily._();

final class NoteUpdateEventProvider
    extends
        $FunctionalProvider<
          AsyncValue<NoteUpdateEvent>,
          NoteUpdateEvent,
          Stream<NoteUpdateEvent>
        >
    with $FutureModifier<NoteUpdateEvent>, $StreamProvider<NoteUpdateEvent> {
  const NoteUpdateEventProvider._({
    required NoteUpdateEventFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'noteUpdateEventProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$noteUpdateEventHash();

  @override
  String toString() {
    return r'noteUpdateEventProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $StreamProviderElement<NoteUpdateEvent> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<NoteUpdateEvent> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return noteUpdateEvent(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteUpdateEventProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$noteUpdateEventHash() => r'4b07c4472790fbf502b442ddfcd9754e1104f057';

final class NoteUpdateEventFamily extends $Family
    with $FunctionalFamilyOverride<Stream<NoteUpdateEvent>, (Account, String)> {
  const NoteUpdateEventFamily._()
    : super(
        retry: null,
        name: r'noteUpdateEventProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NoteUpdateEventProvider call(Account account, String noteId) =>
      NoteUpdateEventProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'noteUpdateEventProvider';
}
