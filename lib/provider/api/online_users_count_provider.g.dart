// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_users_count_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(onlineUsersCount)
const onlineUsersCountProvider = OnlineUsersCountFamily._();

final class OnlineUsersCountProvider
    extends $FunctionalProvider<AsyncValue<int>, int, FutureOr<int>>
    with $FutureModifier<int>, $FutureProvider<int> {
  const OnlineUsersCountProvider._({
    required OnlineUsersCountFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'onlineUsersCountProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$onlineUsersCountHash();

  @override
  String toString() {
    return r'onlineUsersCountProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<int> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<int> create(Ref ref) {
    final argument = this.argument as Account;
    return onlineUsersCount(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is OnlineUsersCountProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$onlineUsersCountHash() => r'621dc98d3fce2c4610a488e0b1c47cc53a714d4a';

final class OnlineUsersCountFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<int>, Account> {
  const OnlineUsersCountFamily._()
    : super(
        retry: null,
        name: r'onlineUsersCountProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OnlineUsersCountProvider call(Account account) =>
      OnlineUsersCountProvider._(argument: account, from: this);

  @override
  String toString() => r'onlineUsersCountProvider';
}
