// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_stream_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(_mainStreamConnection)
const _mainStreamConnectionProvider = _MainStreamConnectionFamily._();

final class _MainStreamConnectionProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const _MainStreamConnectionProvider._({
    required _MainStreamConnectionFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'_mainStreamConnectionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$_mainStreamConnectionHash();

  @override
  String toString() {
    return r'_mainStreamConnectionProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    final argument = this.argument as Account;
    return _mainStreamConnection(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is _MainStreamConnectionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$_mainStreamConnectionHash() =>
    r'67f8057e22d997ea947cb62fed483e874b3268ef';

final class _MainStreamConnectionFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<String>, Account> {
  const _MainStreamConnectionFamily._()
    : super(
        retry: null,
        name: r'_mainStreamConnectionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  _MainStreamConnectionProvider call(Account account) =>
      _MainStreamConnectionProvider._(argument: account, from: this);

  @override
  String toString() => r'_mainStreamConnectionProvider';
}

@ProviderFor(mainStream)
const mainStreamProvider = MainStreamFamily._();

final class MainStreamProvider
    extends
        $FunctionalProvider<AsyncValue<MainEvent>, MainEvent, Stream<MainEvent>>
    with $FutureModifier<MainEvent>, $StreamProvider<MainEvent> {
  const MainStreamProvider._({
    required MainStreamFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'mainStreamProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$mainStreamHash();

  @override
  String toString() {
    return r'mainStreamProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<MainEvent> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<MainEvent> create(Ref ref) {
    final argument = this.argument as Account;
    return mainStream(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is MainStreamProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$mainStreamHash() => r'64516a65202e98291f9cbb189cb6e444cee56b51';

final class MainStreamFamily extends $Family
    with $FunctionalFamilyOverride<Stream<MainEvent>, Account> {
  const MainStreamFamily._()
    : super(
        retry: null,
        name: r'mainStreamProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MainStreamProvider call(Account account) =>
      MainStreamProvider._(argument: account, from: this);

  @override
  String toString() => r'mainStreamProvider';
}
