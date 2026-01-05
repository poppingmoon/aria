// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PageNotifier)
final pageNotifierProvider = PageNotifierFamily._();

final class PageNotifierProvider
    extends $AsyncNotifierProvider<PageNotifier, Page> {
  PageNotifierProvider._({
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

String _$pageNotifierHash() => r'a6e65ee4f1fb70934c7735027ab89b7939ed2e47';

final class PageNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          PageNotifier,
          AsyncValue<Page>,
          Page,
          FutureOr<Page>,
          (Account, {String? pageId, String? pageName, String? username})
        > {
  PageNotifierFamily._()
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
    final ref = this.ref as $Ref<AsyncValue<Page>, Page>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Page>, Page>,
              AsyncValue<Page>,
              Object?,
              Object?
            >;
    element.handleCreate(
      ref,
      () => build(
        _$args.$1,
        pageId: _$args.pageId,
        pageName: _$args.pageName,
        username: _$args.username,
      ),
    );
  }
}
