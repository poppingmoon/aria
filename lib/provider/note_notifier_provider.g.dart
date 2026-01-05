// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NoteNotifier)
final noteNotifierProvider = NoteNotifierFamily._();

final class NoteNotifierProvider
    extends $NotifierProvider<NoteNotifier, Note?> {
  NoteNotifierProvider._({
    required NoteNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'noteNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$noteNotifierHash();

  @override
  String toString() {
    return r'noteNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  NoteNotifier create() => NoteNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Note? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Note?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is NoteNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$noteNotifierHash() => r'ef18c033f7983888de689cfe84e260937c5790ec';

final class NoteNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          NoteNotifier,
          Note?,
          Note?,
          Note?,
          (Account, String)
        > {
  NoteNotifierFamily._()
    : super(
        retry: null,
        name: r'noteNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  NoteNotifierProvider call(Account account, String noteId) =>
      NoteNotifierProvider._(argument: (account, noteId), from: this);

  @override
  String toString() => r'noteNotifierProvider';
}

abstract class _$NoteNotifier extends $Notifier<Note?> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get noteId => _$args.$2;

  Note? build(Account account, String noteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Note?, Note?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Note?, Note?>,
              Note?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
