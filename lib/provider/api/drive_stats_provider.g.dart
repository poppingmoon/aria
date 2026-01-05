// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_stats_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(driveStats)
final driveStatsProvider = DriveStatsFamily._();

final class DriveStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<DriveResponse>,
          DriveResponse,
          FutureOr<DriveResponse>
        >
    with $FutureModifier<DriveResponse>, $FutureProvider<DriveResponse> {
  DriveStatsProvider._({
    required DriveStatsFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'driveStatsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$driveStatsHash();

  @override
  String toString() {
    return r'driveStatsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<DriveResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DriveResponse> create(Ref ref) {
    final argument = this.argument as Account;
    return driveStats(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DriveStatsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$driveStatsHash() => r'2701f57fe05b2ecc070d5510abb4b0d56d9616f7';

final class DriveStatsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DriveResponse>, Account> {
  DriveStatsFamily._()
    : super(
        retry: null,
        name: r'driveStatsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DriveStatsProvider call(Account account) =>
      DriveStatsProvider._(argument: account, from: this);

  @override
  String toString() => r'driveStatsProvider';
}
