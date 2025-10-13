// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationsNotifier)
const notificationsNotifierProvider = NotificationsNotifierFamily._();

final class NotificationsNotifierProvider
    extends
        $StreamNotifierProvider<
          NotificationsNotifier,
          PaginationState<INotificationsResponse>
        > {
  const NotificationsNotifierProvider._({
    required NotificationsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'notificationsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$notificationsNotifierHash();

  @override
  String toString() {
    return r'notificationsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  NotificationsNotifier create() => NotificationsNotifier();

  @override
  bool operator ==(Object other) {
    return other is NotificationsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$notificationsNotifierHash() =>
    r'0a84a6525ab2490d109d5019eafe5d081b264f90';

final class NotificationsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          NotificationsNotifier,
          AsyncValue<PaginationState<INotificationsResponse>>,
          PaginationState<INotificationsResponse>,
          Stream<PaginationState<INotificationsResponse>>,
          Account
        > {
  const NotificationsNotifierFamily._()
    : super(
        retry: null,
        name: r'notificationsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NotificationsNotifierProvider call(Account account) =>
      NotificationsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'notificationsNotifierProvider';
}

abstract class _$NotificationsNotifier
    extends $StreamNotifier<PaginationState<INotificationsResponse>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<INotificationsResponse>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<INotificationsResponse>>,
              PaginationState<INotificationsResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<INotificationsResponse>>,
                PaginationState<INotificationsResponse>
              >,
              AsyncValue<PaginationState<INotificationsResponse>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
