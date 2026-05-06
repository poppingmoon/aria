// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(notificationSettingsRepository)
final notificationSettingsRepositoryProvider =
    NotificationSettingsRepositoryProvider._();

final class NotificationSettingsRepositoryProvider
    extends
        $FunctionalProvider<
          NotificationSettingsRepository,
          NotificationSettingsRepository,
          NotificationSettingsRepository
        >
    with $Provider<NotificationSettingsRepository> {
  NotificationSettingsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationSettingsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationSettingsRepositoryHash();

  @$internal
  @override
  $ProviderElement<NotificationSettingsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NotificationSettingsRepository create(Ref ref) {
    return notificationSettingsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationSettingsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationSettingsRepository>(
        value,
      ),
    );
  }
}

String _$notificationSettingsRepositoryHash() =>
    r'ee6c18a3a58a15d9558dcb9a59996a351037ba39';
