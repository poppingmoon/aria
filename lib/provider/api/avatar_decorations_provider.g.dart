// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_decorations_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(avatarDecorations)
final avatarDecorationsProvider = AvatarDecorationsFamily._();

final class AvatarDecorationsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<GetAvatarDecorationsResponse>>,
          List<GetAvatarDecorationsResponse>,
          FutureOr<List<GetAvatarDecorationsResponse>>
        >
    with
        $FutureModifier<List<GetAvatarDecorationsResponse>>,
        $FutureProvider<List<GetAvatarDecorationsResponse>> {
  AvatarDecorationsProvider._({
    required AvatarDecorationsFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'avatarDecorationsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$avatarDecorationsHash();

  @override
  String toString() {
    return r'avatarDecorationsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<GetAvatarDecorationsResponse>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<GetAvatarDecorationsResponse>> create(Ref ref) {
    final argument = this.argument as Account;
    return avatarDecorations(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AvatarDecorationsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$avatarDecorationsHash() => r'9a76ac50fb4f87d648bbae19499c5fc8566c4884';

final class AvatarDecorationsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<GetAvatarDecorationsResponse>>,
          Account
        > {
  AvatarDecorationsFamily._()
    : super(
        retry: null,
        name: r'avatarDecorationsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AvatarDecorationsProvider call(Account account) =>
      AvatarDecorationsProvider._(argument: account, from: this);

  @override
  String toString() => r'avatarDecorationsProvider';
}
