// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(_i)
final _iProvider = _IFamily._();

final class _IProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<String, dynamic>>,
          Map<String, dynamic>,
          FutureOr<Map<String, dynamic>>
        >
    with
        $FutureModifier<Map<String, dynamic>>,
        $FutureProvider<Map<String, dynamic>> {
  _IProvider._({required _IFamily super.from, required Account super.argument})
    : super(
        retry: null,
        name: r'_iProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$_iHash();

  @override
  String toString() {
    return r'_iProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Map<String, dynamic>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<String, dynamic>> create(Ref ref) {
    final argument = this.argument as Account;
    return _i(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is _IProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$_iHash() => r'6a9e4828c8baae1a78fc0e8bf2b1cb4d6dbaf7aa';

final class _IFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Map<String, dynamic>>, Account> {
  _IFamily._()
    : super(
        retry: null,
        name: r'_iProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  _IProvider call(Account account) =>
      _IProvider._(argument: account, from: this);

  @override
  String toString() => r'_iProvider';
}

@ProviderFor(INotifier)
@JsonPersist()
final iNotifierProvider = INotifierFamily._();

@JsonPersist()
final class INotifierProvider
    extends $AsyncNotifierProvider<INotifier, MeDetailed?> {
  INotifierProvider._({
    required INotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'iNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$iNotifierHash();

  @override
  String toString() {
    return r'iNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  INotifier create() => INotifier();

  @override
  bool operator ==(Object other) {
    return other is INotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$iNotifierHash() => r'ade6092db92dd65dd63ed244bbd0aad89696d320';

@JsonPersist()
final class INotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          INotifier,
          AsyncValue<MeDetailed?>,
          MeDetailed?,
          FutureOr<MeDetailed?>,
          Account
        > {
  INotifierFamily._()
    : super(
        retry: null,
        name: r'iNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  @JsonPersist()
  INotifierProvider call(Account account) =>
      INotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'iNotifierProvider';
}

@JsonPersist()
abstract class _$INotifierBase extends $AsyncNotifier<MeDetailed?> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  FutureOr<MeDetailed?> build(Account account);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<MeDetailed?>, MeDetailed?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MeDetailed?>, MeDetailed?>,
              AsyncValue<MeDetailed?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(iProperties)
final iPropertiesProvider = IPropertiesFamily._();

final class IPropertiesProvider
    extends
        $FunctionalProvider<
          AsyncValue<Set<String>>,
          Set<String>,
          FutureOr<Set<String>>
        >
    with $FutureModifier<Set<String>>, $FutureProvider<Set<String>> {
  IPropertiesProvider._({
    required IPropertiesFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'iPropertiesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$iPropertiesHash();

  @override
  String toString() {
    return r'iPropertiesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Set<String>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Set<String>> create(Ref ref) {
    final argument = this.argument as Account;
    return iProperties(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is IPropertiesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$iPropertiesHash() => r'771b75879ea56e5fe712ba375f2d815aa65c614d';

final class IPropertiesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Set<String>>, Account> {
  IPropertiesFamily._()
    : super(
        retry: null,
        name: r'iPropertiesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  IPropertiesProvider call(Account account) =>
      IPropertiesProvider._(argument: account, from: this);

  @override
  String toString() => r'iPropertiesProvider';
}

// **************************************************************************
// JsonGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
abstract class _$INotifier extends _$INotifierBase {
  /// The default key used by [persist].
  String get key {
    late final args = account;
    late final resolvedKey = 'INotifier($args)';

    return resolvedKey;
  }

  /// A variant of [persist], for JSON-specific encoding.
  ///
  /// You can override [key] to customize the key used for storage.
  PersistResult persist(
    FutureOr<Storage<String, String>> storage, {
    String? key,
    String Function(MeDetailed? state)? encode,
    MeDetailed? Function(String encoded)? decode,
    StorageOptions options = const StorageOptions(),
  }) {
    return NotifierPersistX(this).persist<String, String>(
      storage,
      key: key ?? this.key,
      encode: encode ?? $jsonCodex.encode,
      decode:
          decode ??
          (encoded) {
            final e = $jsonCodex.decode(encoded);
            return e == null
                ? null
                : MeDetailed?.fromJson(e as Map<String, Object?>);
          },
      options: options,
    );
  }
}
