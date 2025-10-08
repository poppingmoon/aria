// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotesNotifier)
const notesNotifierProvider = NotesNotifierFamily._();

final class NotesNotifierProvider
    extends $NotifierProvider<NotesNotifier, Map<String, Note?>> {
  const NotesNotifierProvider._({
    required NotesNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'notesNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$notesNotifierHash();

  @override
  String toString() {
    return r'notesNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  NotesNotifier create() => NotesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, Note?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, Note?>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is NotesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$notesNotifierHash() => r'df76dea655824d33c1b4cb79ebd4d44eba3867bc';

final class NotesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          NotesNotifier,
          Map<String, Note?>,
          Map<String, Note?>,
          Map<String, Note?>,
          Account
        > {
  const NotesNotifierFamily._()
    : super(
        retry: null,
        name: r'notesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  NotesNotifierProvider call(Account account) =>
      NotesNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'notesNotifierProvider';
}

abstract class _$NotesNotifier extends $Notifier<Map<String, Note?>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Map<String, Note?> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<Map<String, Note?>, Map<String, Note?>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Map<String, Note?>, Map<String, Note?>>,
              Map<String, Note?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
