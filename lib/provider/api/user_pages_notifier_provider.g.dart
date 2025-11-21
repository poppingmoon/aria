// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_pages_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserPagesNotifier)
const userPagesNotifierProvider = UserPagesNotifierFamily._();

final class UserPagesNotifierProvider
    extends $StreamNotifierProvider<UserPagesNotifier, PaginationState<Page>> {
  const UserPagesNotifierProvider._({
    required UserPagesNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'userPagesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userPagesNotifierHash();

  @override
  String toString() {
    return r'userPagesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  UserPagesNotifier create() => UserPagesNotifier();

  @override
  bool operator ==(Object other) {
    return other is UserPagesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userPagesNotifierHash() => r'4ec091c2a47aa8555289391661606dff09d764aa';

final class UserPagesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          UserPagesNotifier,
          AsyncValue<PaginationState<Page>>,
          PaginationState<Page>,
          Stream<PaginationState<Page>>,
          (Account, String)
        > {
  const UserPagesNotifierFamily._()
    : super(
        retry: null,
        name: r'userPagesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserPagesNotifierProvider call(Account account, String userId) =>
      UserPagesNotifierProvider._(argument: (account, userId), from: this);

  @override
  String toString() => r'userPagesNotifierProvider';
}

abstract class _$UserPagesNotifier
    extends $StreamNotifier<PaginationState<Page>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get userId => _$args.$2;

  Stream<PaginationState<Page>> build(Account account, String userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2);
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
    element.handleValue(ref, created);
  }
}
