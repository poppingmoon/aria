// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_featured_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserFeaturedNotesNotifier)
const userFeaturedNotesNotifierProvider = UserFeaturedNotesNotifierFamily._();

final class UserFeaturedNotesNotifierProvider
    extends
        $StreamNotifierProvider<
          UserFeaturedNotesNotifier,
          PaginationState<Note>
        > {
  const UserFeaturedNotesNotifierProvider._({
    required UserFeaturedNotesNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'userFeaturedNotesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userFeaturedNotesNotifierHash();

  @override
  String toString() {
    return r'userFeaturedNotesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  UserFeaturedNotesNotifier create() => UserFeaturedNotesNotifier();

  @override
  bool operator ==(Object other) {
    return other is UserFeaturedNotesNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userFeaturedNotesNotifierHash() =>
    r'90a3b032be56662ceb85615ecfb9273944822d09';

final class UserFeaturedNotesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          UserFeaturedNotesNotifier,
          AsyncValue<PaginationState<Note>>,
          PaginationState<Note>,
          Stream<PaginationState<Note>>,
          (Account, String)
        > {
  const UserFeaturedNotesNotifierFamily._()
    : super(
        retry: null,
        name: r'userFeaturedNotesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserFeaturedNotesNotifierProvider call(Account account, String userId) =>
      UserFeaturedNotesNotifierProvider._(
        argument: (account, userId),
        from: this,
      );

  @override
  String toString() => r'userFeaturedNotesNotifierProvider';
}

abstract class _$UserFeaturedNotesNotifier
    extends $StreamNotifier<PaginationState<Note>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get userId => _$args.$2;

  Stream<PaginationState<Note>> build(Account account, String userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2);
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
