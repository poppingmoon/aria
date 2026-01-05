// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserNotifier)
final userNotifierProvider = UserNotifierFamily._();

final class UserNotifierProvider
    extends $AsyncNotifierProvider<UserNotifier, UserDetailed> {
  UserNotifierProvider._({
    required UserNotifierFamily super.from,
    required (Account, {String? userId, String? username, String? host})
    super.argument,
  }) : super(
         retry: null,
         name: r'userNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$userNotifierHash();

  @override
  String toString() {
    return r'userNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  UserNotifier create() => UserNotifier();

  @override
  bool operator ==(Object other) {
    return other is UserNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$userNotifierHash() => r'9bf45667537a00469120d5345c2ec2ffd7ed15d7';

final class UserNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          UserNotifier,
          AsyncValue<UserDetailed>,
          UserDetailed,
          FutureOr<UserDetailed>,
          (Account, {String? userId, String? username, String? host})
        > {
  UserNotifierFamily._()
    : super(
        retry: null,
        name: r'userNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UserNotifierProvider call(
    Account account, {
    String? userId,
    String? username,
    String? host,
  }) => UserNotifierProvider._(
    argument: (account, userId: userId, username: username, host: host),
    from: this,
  );

  @override
  String toString() => r'userNotifierProvider';
}

abstract class _$UserNotifier extends $AsyncNotifier<UserDetailed> {
  late final _$args =
      ref.$arg as (Account, {String? userId, String? username, String? host});
  Account get account => _$args.$1;
  String? get userId => _$args.userId;
  String? get username => _$args.username;
  String? get host => _$args.host;

  FutureOr<UserDetailed> build(
    Account account, {
    String? userId,
    String? username,
    String? host,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<UserDetailed>, UserDetailed>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<UserDetailed>, UserDetailed>,
              AsyncValue<UserDetailed>,
              Object?,
              Object?
            >;
    element.handleCreate(
      ref,
      () => build(
        _$args.$1,
        userId: _$args.userId,
        username: _$args.username,
        host: _$args.host,
      ),
    );
  }
}
