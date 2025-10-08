// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FeaturedNotesNotifier)
const featuredNotesNotifierProvider = FeaturedNotesNotifierFamily._();

final class FeaturedNotesNotifierProvider
    extends
        $StreamNotifierProvider<FeaturedNotesNotifier, PaginationState<Note>> {
  const FeaturedNotesNotifierProvider._({
    required FeaturedNotesNotifierFamily super.from,
    required (Account, {String? channelId}) super.argument,
  }) : super(
         retry: null,
         name: r'featuredNotesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$featuredNotesNotifierHash();

  @override
  String toString() {
    return r'featuredNotesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  FeaturedNotesNotifier create() => FeaturedNotesNotifier();

  @override
  bool operator ==(Object other) {
    return other is FeaturedNotesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$featuredNotesNotifierHash() =>
    r'48686a73dcd0b50daba59c479cef79d5c8ec00fb';

final class FeaturedNotesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          FeaturedNotesNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          (Account, {String? channelId})
        > {
  const FeaturedNotesNotifierFamily._()
    : super(
        retry: null,
        name: r'featuredNotesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FeaturedNotesNotifierProvider call(Account account, {String? channelId}) =>
      FeaturedNotesNotifierProvider._(
        argument: (account, channelId: channelId),
        from: this,
      );

  @override
  String toString() => r'featuredNotesNotifierProvider';
}

abstract class _$FeaturedNotesNotifier
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
