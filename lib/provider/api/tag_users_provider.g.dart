// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_users_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tagUsers)
final tagUsersProvider = TagUsersFamily._();

final class TagUsersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<UserDetailed>>,
          List<UserDetailed>,
          FutureOr<List<UserDetailed>>
        >
    with
        $FutureModifier<List<UserDetailed>>,
        $FutureProvider<List<UserDetailed>> {
  TagUsersProvider._({
    required TagUsersFamily super.from,
    required (Account, String, {UsersSortType sort, Origin? userOrigin})
    super.argument,
  }) : super(
         retry: null,
         name: r'tagUsersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$tagUsersHash();

  @override
  String toString() {
    return r'tagUsersProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<UserDetailed>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<UserDetailed>> create(Ref ref) {
    final argument =
        this.argument
            as (Account, String, {UsersSortType sort, Origin? userOrigin});
    return tagUsers(
      ref,
      argument.$1,
      argument.$2,
      sort: argument.sort,
      userOrigin: argument.userOrigin,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TagUsersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tagUsersHash() => r'47cbf3d98fe606420e4a451f037d565374cfff25';

final class TagUsersFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<UserDetailed>>,
          (Account, String, {UsersSortType sort, Origin? userOrigin})
        > {
  TagUsersFamily._()
    : super(
        retry: null,
        name: r'tagUsersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TagUsersProvider call(
    Account account,
    String tag, {
    UsersSortType sort = UsersSortType.followerDescendant,
    Origin? userOrigin,
  }) => TagUsersProvider._(
    argument: (account, tag, sort: sort, userOrigin: userOrigin),
    from: this,
  );

  @override
  String toString() => r'tagUsersProvider';
}
