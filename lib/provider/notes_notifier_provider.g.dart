// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotesNotifier)
final notesNotifierProvider = NotesNotifierFamily._();

final class NotesNotifierProvider
    extends $NotifierProvider<NotesNotifier, void> {
  NotesNotifierProvider._({
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
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
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

String _$notesNotifierHash() => r'90b8787afd898e84bfcb1daf7e5574265fe9167b';

final class NotesNotifierFamily extends $Family
    with $ClassFamilyOverride<NotesNotifier, void, void, void, Account> {
  NotesNotifierFamily._()
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

abstract class _$NotesNotifier extends $Notifier<void> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  void build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
