// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_plays_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserPlaysNotifier)
const userPlaysNotifierProvider = UserPlaysNotifierFamily._();

final class UserPlaysNotifierProvider
    extends $StreamNotifierProvider<UserPlaysNotifier, PaginationState<Flash>> {
  const UserPlaysNotifierProvider._({
    required UserPlaysNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'userPlaysNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userPlaysNotifierHash();

  @override
  String toString() {
    return r'userPlaysNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  UserPlaysNotifier create() => UserPlaysNotifier();

  @override
  bool operator ==(Object other) {
    return other is UserPlaysNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userPlaysNotifierHash() => r'005484ab65efef54301f6a8b7c3dc96324cc6d96';

final class UserPlaysNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          UserPlaysNotifier,
          AsyncValue<PaginationState<Flash>>,
          PaginationState<Flash>,
          Stream<PaginationState<Flash>>,
          (Account, String)
        > {
  const UserPlaysNotifierFamily._()
    : super(
        retry: null,
        name: r'userPlaysNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserPlaysNotifierProvider call(Account account, String userId) =>
      UserPlaysNotifierProvider._(argument: (account, userId), from: this);

  @override
  String toString() => r'userPlaysNotifierProvider';
}

abstract class _$UserPlaysNotifier
    extends $StreamNotifier<PaginationState<Flash>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get userId => _$args.$2;

  Stream<PaginationState<Flash>> build(Account account, String userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2);
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
    element.handleValue(ref, created);
  }
}
