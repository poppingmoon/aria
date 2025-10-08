// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(stats)
const statsProvider = StatsFamily._();

final class StatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<StatsResponse>,
          StatsResponse,
          FutureOr<StatsResponse>
        >
    with $FutureModifier<StatsResponse>, $FutureProvider<StatsResponse> {
  const StatsProvider._({
    required StatsFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'statsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$statsHash();

  @override
  String toString() {
    return r'statsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<StatsResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<StatsResponse> create(Ref ref) {
    final argument = this.argument as Account;
    return stats(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is StatsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$statsHash() => r'4e64b5ecfcad20ee44fdb3329fd8e801c53a2cd4';

final class StatsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<StatsResponse>, Account> {
  const StatsFamily._()
    : super(
        retry: null,
        name: r'statsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  StatsProvider call(Account account) =>
      StatsProvider._(argument: account, from: this);

  @override
  String toString() => r'statsProvider';
}
