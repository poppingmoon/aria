// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinned_users_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pinnedUsers)
const pinnedUsersProvider = PinnedUsersFamily._();

final class PinnedUsersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<UserDetailed>>,
          List<UserDetailed>,
          FutureOr<List<UserDetailed>>
        >
    with
        $FutureModifier<List<UserDetailed>>,
        $FutureProvider<List<UserDetailed>> {
  const PinnedUsersProvider._({
    required PinnedUsersFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'pinnedUsersProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pinnedUsersHash();

  @override
  String toString() {
    return r'pinnedUsersProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<UserDetailed>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<UserDetailed>> create(Ref ref) {
    final argument = this.argument as Account;
    return pinnedUsers(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PinnedUsersProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pinnedUsersHash() => r'ac6b5320cbb9fdef3a8ed60484628053ce7053b2';

final class PinnedUsersFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<UserDetailed>>, Account> {
  const PinnedUsersFamily._()
    : super(
        retry: null,
        name: r'pinnedUsersProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PinnedUsersProvider call(Account account) =>
      PinnedUsersProvider._(argument: account, from: this);

  @override
  String toString() => r'pinnedUsersProvider';
}
