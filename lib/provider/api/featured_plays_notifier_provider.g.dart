// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_plays_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FeaturedPlaysNotifier)
final featuredPlaysNotifierProvider = FeaturedPlaysNotifierFamily._();

final class FeaturedPlaysNotifierProvider
    extends
        $StreamNotifierProvider<FeaturedPlaysNotifier, PaginationState<Flash>> {
  FeaturedPlaysNotifierProvider._({
    required FeaturedPlaysNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'featuredPlaysNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$featuredPlaysNotifierHash();

  @override
  String toString() {
    return r'featuredPlaysNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FeaturedPlaysNotifier create() => FeaturedPlaysNotifier();

  @override
  bool operator ==(Object other) {
    return other is FeaturedPlaysNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$featuredPlaysNotifierHash() =>
    r'2be58faa0a3ca73d9c094d87882f13b0cdefdac2';

final class FeaturedPlaysNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          FeaturedPlaysNotifier,
          AsyncValue<PaginationState<Flash>>,
          PaginationState<Flash>,
          Stream<PaginationState<Flash>>,
          Account
        > {
  FeaturedPlaysNotifierFamily._()
    : super(
        retry: null,
        name: r'featuredPlaysNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FeaturedPlaysNotifierProvider call(Account account) =>
      FeaturedPlaysNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'featuredPlaysNotifierProvider';
}

abstract class _$FeaturedPlaysNotifier
    extends $StreamNotifier<PaginationState<Flash>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<Flash>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<PaginationState<Flash>>, PaginationState<Flash>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<Flash>>,
                PaginationState<Flash>
              >,
              AsyncValue<PaginationState<Flash>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
