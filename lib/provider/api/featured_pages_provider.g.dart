// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_pages_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(featuredPages)
final featuredPagesProvider = FeaturedPagesFamily._();

final class FeaturedPagesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Page>>,
          List<Page>,
          FutureOr<List<Page>>
        >
    with $FutureModifier<List<Page>>, $FutureProvider<List<Page>> {
  FeaturedPagesProvider._({
    required FeaturedPagesFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'featuredPagesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$featuredPagesHash();

  @override
  String toString() {
    return r'featuredPagesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Page>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Page>> create(Ref ref) {
    final argument = this.argument as Account;
    return featuredPages(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FeaturedPagesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$featuredPagesHash() => r'4e58a17a7c2c8658e462fc9ba79a70186fd69f5a';

final class FeaturedPagesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Page>>, Account> {
  FeaturedPagesFamily._()
    : super(
        retry: null,
        name: r'featuredPagesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FeaturedPagesProvider call(Account account) =>
      FeaturedPagesProvider._(argument: account, from: this);

  @override
  String toString() => r'featuredPagesProvider';
}
