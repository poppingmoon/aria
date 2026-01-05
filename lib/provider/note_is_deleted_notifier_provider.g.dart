// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_is_deleted_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NoteIsDeletedNotifier)
final noteIsDeletedNotifierProvider = NoteIsDeletedNotifierFamily._();

final class NoteIsDeletedNotifierProvider
    extends $NotifierProvider<NoteIsDeletedNotifier, bool> {
  NoteIsDeletedNotifierProvider._({
    required NoteIsDeletedNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'noteIsDeletedNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$noteIsDeletedNotifierHash();

  @override
  String toString() {
    return r'noteIsDeletedNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  NoteIsDeletedNotifier create() => NoteIsDeletedNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is NoteIsDeletedNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$noteIsDeletedNotifierHash() =>
    r'9f376b4c18d37ae6038840bfc4ebec4f3d79b975';

final class NoteIsDeletedNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          NoteIsDeletedNotifier,
          bool,
          bool,
          bool,
          (Account, String)
        > {
  NoteIsDeletedNotifierFamily._()
    : super(
        retry: null,
        name: r'noteIsDeletedNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  NoteIsDeletedNotifierProvider call(Account account, String noteId) =>
      NoteIsDeletedNotifierProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'noteIsDeletedNotifierProvider';
}

abstract class _$NoteIsDeletedNotifier extends $Notifier<bool> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get noteId => _$args.$2;

  bool build(Account account, String noteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
