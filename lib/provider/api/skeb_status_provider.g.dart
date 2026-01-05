// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skeb_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(skebStatus)
final skebStatusProvider = SkebStatusFamily._();

final class SkebStatusProvider
    extends
        $FunctionalProvider<
          AsyncValue<UsersGetSkebStatusResponse>,
          UsersGetSkebStatusResponse,
          FutureOr<UsersGetSkebStatusResponse>
        >
    with
        $FutureModifier<UsersGetSkebStatusResponse>,
        $FutureProvider<UsersGetSkebStatusResponse> {
  SkebStatusProvider._({
    required SkebStatusFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'skebStatusProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$skebStatusHash();

  @override
  String toString() {
    return r'skebStatusProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<UsersGetSkebStatusResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UsersGetSkebStatusResponse> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return skebStatus(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is SkebStatusProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$skebStatusHash() => r'515cd9b8e3fc815d4ce537ae30b2b6ec93152976';

final class SkebStatusFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<UsersGetSkebStatusResponse>,
          (Account, String)
        > {
  SkebStatusFamily._()
    : super(
        retry: null,
        name: r'skebStatusProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SkebStatusProvider call(Account account, String userId) =>
      SkebStatusProvider._(argument: (account, userId), from: this);

  @override
  String toString() => r'skebStatusProvider';
}
