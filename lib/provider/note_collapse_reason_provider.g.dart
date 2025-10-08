// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_collapse_reason_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(noteCollapseReason)
const noteCollapseReasonProvider = NoteCollapseReasonFamily._();

final class NoteCollapseReasonProvider
    extends
        $FunctionalProvider<CollapseReason?, CollapseReason?, CollapseReason?>
    with $Provider<CollapseReason?> {
  const NoteCollapseReasonProvider._({
    required NoteCollapseReasonFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'noteCollapseReasonProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$noteCollapseReasonHash();

  @override
  String toString() {
    return r'noteCollapseReasonProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<CollapseReason?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CollapseReason? create(Ref ref) {
    final argument = this.argument as (Account, String);
    return noteCollapseReason(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CollapseReason? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CollapseReason?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is NoteCollapseReasonProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$noteCollapseReasonHash() =>
    r'84a1cc2d6ac623dc91b4289d9948759c32ded006';

final class NoteCollapseReasonFamily extends $Family
    with $FunctionalFamilyOverride<CollapseReason?, (Account, String)> {
  const NoteCollapseReasonFamily._()
    : super(
        retry: null,
        name: r'noteCollapseReasonProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NoteCollapseReasonProvider call(Account account, String noteId) =>
      NoteCollapseReasonProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'noteCollapseReasonProvider';
}
