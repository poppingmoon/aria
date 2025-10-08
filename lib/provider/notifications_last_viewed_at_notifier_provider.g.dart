// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_last_viewed_at_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NotificationsLastViewedAtNotifier)
const notificationsLastViewedAtNotifierProvider =
    NotificationsLastViewedAtNotifierFamily._();

final class NotificationsLastViewedAtNotifierProvider
    extends $NotifierProvider<NotificationsLastViewedAtNotifier, DateTime?> {
  const NotificationsLastViewedAtNotifierProvider._({
    required NotificationsLastViewedAtNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'notificationsLastViewedAtNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$notificationsLastViewedAtNotifierHash();

  @override
  String toString() {
    return r'notificationsLastViewedAtNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  NotificationsLastViewedAtNotifier create() =>
      NotificationsLastViewedAtNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DateTime? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DateTime?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationsLastViewedAtNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$notificationsLastViewedAtNotifierHash() =>
    r'902f2fb6eab8cf2699b3e90b9685979b4e224bc8';

final class NotificationsLastViewedAtNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          NotificationsLastViewedAtNotifier,
          DateTime?,
          DateTime?,
          DateTime?,
          Account
        > {
  const NotificationsLastViewedAtNotifierFamily._()
    : super(
        retry: null,
        name: r'notificationsLastViewedAtNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  NotificationsLastViewedAtNotifierProvider call(Account account) =>
      NotificationsLastViewedAtNotifierProvider._(
        argument: account,
        from: this,
      );

  @override
  String toString() => r'notificationsLastViewedAtNotifierProvider';
}

abstract class _$NotificationsLastViewedAtNotifier
    extends $Notifier<DateTime?> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  DateTime? build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<DateTime?, DateTime?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DateTime?, DateTime?>,
              DateTime?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
