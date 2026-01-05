// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_update_event_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(_noteSubscription)
final _noteSubscriptionProvider = _NoteSubscriptionFamily._();

final class _NoteSubscriptionProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  _NoteSubscriptionProvider._({
    required _NoteSubscriptionFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'_noteSubscriptionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$_noteSubscriptionHash();

  @override
  String toString() {
    return r'_noteSubscriptionProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return _noteSubscription(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is _NoteSubscriptionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$_noteSubscriptionHash() => r'88fcd136cc53cf3ffc0dca27f7a725976597c0b5';

final class _NoteSubscriptionFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<String>, (Account, String)> {
  _NoteSubscriptionFamily._()
    : super(
        retry: null,
        name: r'_noteSubscriptionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  _NoteSubscriptionProvider call(Account account, String noteId) =>
      _NoteSubscriptionProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'_noteSubscriptionProvider';
}

@ProviderFor(noteUpdateEvent)
final noteUpdateEventProvider = NoteUpdateEventFamily._();

final class NoteUpdateEventProvider
    extends
        $FunctionalProvider<
          AsyncValue<NoteUpdateEvent>,
          NoteUpdateEvent,
          Stream<NoteUpdateEvent>
        >
    with $FutureModifier<NoteUpdateEvent>, $StreamProvider<NoteUpdateEvent> {
  NoteUpdateEventProvider._({
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

String _$noteUpdateEventHash() => r'83324e4d703d1cf7682ef44cd2999ff49104bd65';

final class NoteUpdateEventFamily extends $Family
    with $FunctionalFamilyOverride<Stream<NoteUpdateEvent>, (Account, String)> {
  NoteUpdateEventFamily._()
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
