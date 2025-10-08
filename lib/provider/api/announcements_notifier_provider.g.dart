// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcements_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AnnouncementsNotifier)
const announcementsNotifierProvider = AnnouncementsNotifierFamily._();

final class AnnouncementsNotifierProvider
    extends
        $StreamNotifierProvider<
          AnnouncementsNotifier,
          PaginationState<AnnouncementsResponse>
        > {
  const AnnouncementsNotifierProvider._({
    required AnnouncementsNotifierFamily super.from,
    required (Account, {bool isActive}) super.argument,
  }) : super(
         retry: null,
         name: r'announcementsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$announcementsNotifierHash();

  @override
  String toString() {
    return r'announcementsNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  AnnouncementsNotifier create() => AnnouncementsNotifier();

  @override
  bool operator ==(Object other) {
    return other is AnnouncementsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$announcementsNotifierHash() =>
    r'c832a2bf4f15158981987084a305c4f905c2403d';

final class AnnouncementsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AnnouncementsNotifier,
          AsyncValue<PaginationState<AnnouncementsResponse>>,
          PaginationState<AnnouncementsResponse>,
          Stream<PaginationState<AnnouncementsResponse>>,
          (Account, {bool isActive})
        > {
  const AnnouncementsNotifierFamily._()
    : super(
        retry: null,
        name: r'announcementsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AnnouncementsNotifierProvider call(Account account, {bool isActive = true}) =>
      AnnouncementsNotifierProvider._(
        argument: (account, isActive: isActive),
        from: this,
      );

  @override
  String toString() => r'announcementsNotifierProvider';
}

abstract class _$AnnouncementsNotifier
    extends $StreamNotifier<PaginationState<AnnouncementsResponse>> {
  late final _$args = ref.$arg as (Account, {bool isActive});
  Account get account => _$args.$1;
  bool get isActive => _$args.isActive;

  Stream<PaginationState<AnnouncementsResponse>> build(
    Account account, {
    bool isActive = true,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, isActive: _$args.isActive);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<AnnouncementsResponse>>,
              PaginationState<AnnouncementsResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<AnnouncementsResponse>>,
                PaginationState<AnnouncementsResponse>
              >,
              AsyncValue<PaginationState<AnnouncementsResponse>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
