// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_clips_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserClipsNotifier)
final userClipsNotifierProvider = UserClipsNotifierFamily._();

final class UserClipsNotifierProvider
    extends $StreamNotifierProvider<UserClipsNotifier, PaginationState<Clip>> {
  UserClipsNotifierProvider._({
    required UserClipsNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'userClipsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userClipsNotifierHash();

  @override
  String toString() {
    return r'userClipsNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  UserClipsNotifier create() => UserClipsNotifier();

  @override
  bool operator ==(Object other) {
    return other is UserClipsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userClipsNotifierHash() => r'acc98ccdcb5063831892d50dff6e6b92144d5eb4';

final class UserClipsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          UserClipsNotifier,
          AsyncValue<PaginationState<Clip>>,
          PaginationState<Clip>,
          Stream<PaginationState<Clip>>,
          (Account, String)
        > {
  UserClipsNotifierFamily._()
    : super(
        retry: null,
        name: r'userClipsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserClipsNotifierProvider call(Account account, String userId) =>
      UserClipsNotifierProvider._(argument: (account, userId), from: this);

  @override
  String toString() => r'userClipsNotifierProvider';
}

abstract class _$UserClipsNotifier
    extends $StreamNotifier<PaginationState<Clip>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get userId => _$args.$2;

  Stream<PaginationState<Clip>> build(Account account, String userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<PaginationState<Clip>>, PaginationState<Clip>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<Clip>>,
                PaginationState<Clip>
              >,
              AsyncValue<PaginationState<Clip>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
