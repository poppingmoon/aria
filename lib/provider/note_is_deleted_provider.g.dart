// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_is_deleted_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(noteIsDeleted)
const noteIsDeletedProvider = NoteIsDeletedFamily._();

final class NoteIsDeletedProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const NoteIsDeletedProvider._({
    required NoteIsDeletedFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'noteIsDeletedProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$noteIsDeletedHash();

  @override
  String toString() {
    return r'noteIsDeletedProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as (Account, String);
    return noteIsDeleted(ref, argument.$1, argument.$2);
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
    return other is NoteIsDeletedProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$noteIsDeletedHash() => r'cfdc143508dd237b20d034aa4cbce48bf33cf6d8';

final class NoteIsDeletedFamily extends $Family
    with $FunctionalFamilyOverride<bool, (Account, String)> {
  const NoteIsDeletedFamily._()
    : super(
        retry: null,
        name: r'noteIsDeletedProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NoteIsDeletedProvider call(Account account, String noteId) =>
      NoteIsDeletedProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'noteIsDeletedProvider';
}
