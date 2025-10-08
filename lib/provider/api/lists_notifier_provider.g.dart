// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ListsNotifier)
const listsNotifierProvider = ListsNotifierFamily._();

final class ListsNotifierProvider
    extends $AsyncNotifierProvider<ListsNotifier, List<UsersList>> {
  const ListsNotifierProvider._({
    required ListsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'listsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$listsNotifierHash();

  @override
  String toString() {
    return r'listsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ListsNotifier create() => ListsNotifier();

  @override
  bool operator ==(Object other) {
    return other is ListsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$listsNotifierHash() => r'3bf78f3b8402d6cc8501624d0c980b56fbcde94c';

final class ListsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          ListsNotifier,
          AsyncValue<List<UsersList>>,
          List<UsersList>,
          FutureOr<List<UsersList>>,
          Account
        > {
  const ListsNotifierFamily._()
    : super(
        retry: null,
        name: r'listsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ListsNotifierProvider call(Account account) =>
      ListsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'listsNotifierProvider';
}

abstract class _$ListsNotifier extends $AsyncNotifier<List<UsersList>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  FutureOr<List<UsersList>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<List<UsersList>>, List<UsersList>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<UsersList>>, List<UsersList>>,
              AsyncValue<List<UsersList>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
