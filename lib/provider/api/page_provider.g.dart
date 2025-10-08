// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PageNotifier)
const pageNotifierProvider = PageNotifierFamily._();

final class PageNotifierProvider
    extends $AsyncNotifierProvider<PageNotifier, Page> {
  const PageNotifierProvider._({
    required PageNotifierFamily super.from,
    required (Account, {String? pageId, String? pageName, String? username})
    super.argument,
  }) : super(
         retry: null,
         name: r'pageNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pageNotifierHash();

  @override
  String toString() {
    return r'pageNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  PageNotifier create() => PageNotifier();

  @override
  bool operator ==(Object other) {
    return other is PageNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pageNotifierHash() => r'a66c1085b147df5cb314bc6f0e942e7eb8b79f14';

final class PageNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          PageNotifier,
          AsyncValue<Page>,
          Page,
          FutureOr<Page>,
          (Account, {String? pageId, String? pageName, String? username})
        > {
  const PageNotifierFamily._()
    : super(
        retry: null,
        name: r'pageNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PageNotifierProvider call(
    Account account, {
    String? pageId,
    String? pageName,
    String? username,
  }) => PageNotifierProvider._(
    argument: (account, pageId: pageId, pageName: pageName, username: username),
    from: this,
  );

  @override
  String toString() => r'pageNotifierProvider';
}

abstract class _$PageNotifier extends $AsyncNotifier<Page> {
  late final _$args =
      ref.$arg
          as (Account, {String? pageId, String? pageName, String? username});
  Account get account => _$args.$1;
  String? get pageId => _$args.pageId;
  String? get pageName => _$args.pageName;
  String? get username => _$args.username;

  FutureOr<Page> build(
    Account account, {
    String? pageId,
    String? pageName,
    String? username,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      _$args.$1,
      pageId: _$args.pageId,
      pageName: _$args.pageName,
      username: _$args.username,
    );
    final ref = this.ref as $Ref<AsyncValue<Page>, Page>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Page>, Page>,
              AsyncValue<Page>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
