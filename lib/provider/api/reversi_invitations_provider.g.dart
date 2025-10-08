// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reversi_invitations_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(reversiInvitations)
const reversiInvitationsProvider = ReversiInvitationsFamily._();

final class ReversiInvitationsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<User>>,
          List<User>,
          FutureOr<List<User>>
        >
    with $FutureModifier<List<User>>, $FutureProvider<List<User>> {
  const ReversiInvitationsProvider._({
    required ReversiInvitationsFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'reversiInvitationsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$reversiInvitationsHash();

  @override
  String toString() {
    return r'reversiInvitationsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<User>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<User>> create(Ref ref) {
    final argument = this.argument as Account;
    return reversiInvitations(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ReversiInvitationsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$reversiInvitationsHash() =>
    r'3b62206a345f4be6bd41ff8146e38321efb44c54';

final class ReversiInvitationsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<User>>, Account> {
  const ReversiInvitationsFamily._()
    : super(
        retry: null,
        name: r'reversiInvitationsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ReversiInvitationsProvider call(Account account) =>
      ReversiInvitationsProvider._(argument: account, from: this);

  @override
  String toString() => r'reversiInvitationsProvider';
}
