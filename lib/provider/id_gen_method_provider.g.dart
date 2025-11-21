// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_gen_method_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(idGenMethod)
const idGenMethodProvider = IdGenMethodFamily._();

final class IdGenMethodProvider
    extends
        $FunctionalProvider<
          AsyncValue<IdGenMethod>,
          IdGenMethod,
          FutureOr<IdGenMethod>
        >
    with $FutureModifier<IdGenMethod>, $FutureProvider<IdGenMethod> {
  const IdGenMethodProvider._({
    required IdGenMethodFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'idGenMethodProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$idGenMethodHash();

  @override
  String toString() {
    return r'idGenMethodProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<IdGenMethod> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<IdGenMethod> create(Ref ref) {
    final argument = this.argument as Account;
    return idGenMethod(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is IdGenMethodProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$idGenMethodHash() => r'380df68195233de2a83cc52f21894f4e78812199';

final class IdGenMethodFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<IdGenMethod>, Account> {
  const IdGenMethodFamily._()
    : super(
        retry: null,
        name: r'idGenMethodProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  IdGenMethodProvider call(Account account) =>
      IdGenMethodProvider._(argument: account, from: this);

  @override
  String toString() => r'idGenMethodProvider';
}
