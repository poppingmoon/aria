// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_requests_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FollowRequestsNotifier)
final followRequestsNotifierProvider = FollowRequestsNotifierFamily._();

final class FollowRequestsNotifierProvider
    extends
        $StreamNotifierProvider<
          FollowRequestsNotifier,
          PaginationState<FollowRequest>
        > {
  FollowRequestsNotifierProvider._({
    required FollowRequestsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'followRequestsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$followRequestsNotifierHash();

  @override
  String toString() {
    return r'followRequestsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FollowRequestsNotifier create() => FollowRequestsNotifier();

  @override
  bool operator ==(Object other) {
    return other is FollowRequestsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$followRequestsNotifierHash() =>
    r'50f7f4ed6ac46a899e263608bbfca6286ef42232';

final class FollowRequestsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          FollowRequestsNotifier,
          AsyncValue<PaginationState<FollowRequest>>,
          PaginationState<FollowRequest>,
          Stream<PaginationState<FollowRequest>>,
          Account
        > {
  FollowRequestsNotifierFamily._()
    : super(
        retry: null,
        name: r'followRequestsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FollowRequestsNotifierProvider call(Account account) =>
      FollowRequestsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'followRequestsNotifierProvider';
}

abstract class _$FollowRequestsNotifier
    extends $StreamNotifier<PaginationState<FollowRequest>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<FollowRequest>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<FollowRequest>>,
              PaginationState<FollowRequest>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<FollowRequest>>,
                PaginationState<FollowRequest>
              >,
              AsyncValue<PaginationState<FollowRequest>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
