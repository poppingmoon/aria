// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PagesNotifier)
final pagesNotifierProvider = PagesNotifierFamily._();

final class PagesNotifierProvider
    extends $StreamNotifierProvider<PagesNotifier, PaginationState<Page>> {
  PagesNotifierProvider._({
    required PagesNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'pagesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pagesNotifierHash();

  @override
  String toString() {
    return r'pagesNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PagesNotifier create() => PagesNotifier();

  @override
  bool operator ==(Object other) {
    return other is PagesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pagesNotifierHash() => r'6cccdb20cad731159939d0c23e0382618314846f';

final class PagesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          PagesNotifier,
          AsyncValue<PaginationState<Page>>,
          PaginationState<Page>,
          Stream<PaginationState<Page>>,
          Account
        > {
  PagesNotifierFamily._()
    : super(
        retry: null,
        name: r'pagesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PagesNotifierProvider call(Account account) =>
      PagesNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'pagesNotifierProvider';
}

abstract class _$PagesNotifier extends $StreamNotifier<PaginationState<Page>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<Page>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<PaginationState<Page>>, PaginationState<Page>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<Page>>,
                PaginationState<Page>
              >,
              AsyncValue<PaginationState<Page>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
