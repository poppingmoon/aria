// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_polls_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FeaturedPollsNotifier)
const featuredPollsNotifierProvider = FeaturedPollsNotifierFamily._();

final class FeaturedPollsNotifierProvider
    extends
        $StreamNotifierProvider<FeaturedPollsNotifier, PaginationState<Note>> {
  const FeaturedPollsNotifierProvider._({
    required FeaturedPollsNotifierFamily super.from,
    required (Account, {String? channelId}) super.argument,
  }) : super(
         retry: null,
         name: r'featuredPollsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$featuredPollsNotifierHash();

  @override
  String toString() {
    return r'featuredPollsNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  FeaturedPollsNotifier create() => FeaturedPollsNotifier();

  @override
  bool operator ==(Object other) {
    return other is FeaturedPollsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$featuredPollsNotifierHash() =>
    r'5b1a4b5a43904f7634b471bf90319c2f927afaed';

final class FeaturedPollsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          FeaturedPollsNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          (Account, {String? channelId})
        > {
  const FeaturedPollsNotifierFamily._()
    : super(
        retry: null,
        name: r'featuredPollsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FeaturedPollsNotifierProvider call(Account account, {String? channelId}) =>
      FeaturedPollsNotifierProvider._(
        argument: (account, channelId: channelId),
        from: this,
      );

  @override
  String toString() => r'featuredPollsNotifierProvider';
}

abstract class _$FeaturedPollsNotifier
    extends $StreamNotifier<PaginationState<Note>> {
  late final _$args = ref.$arg as (Account, {String? channelId});
  Account get account => _$args.$1;
  String? get channelId => _$args.channelId;

  Stream<PaginationState<Note>> build(Account account, {String? channelId});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, channelId: _$args.channelId);
    final ref =
        this.ref
            as $Ref<AsyncValue<PaginationState<Note>>, PaginationState<Note>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<Note>>,
                PaginationState<Note>
              >,
              AsyncValue<PaginationState<Note>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
