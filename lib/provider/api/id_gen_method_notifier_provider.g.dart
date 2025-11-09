// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_gen_method_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(IdGenMethodNotifier)
@JsonPersist()
const idGenMethodNotifierProvider = IdGenMethodNotifierFamily._();

@JsonPersist()
final class IdGenMethodNotifierProvider
    extends $AsyncNotifierProvider<IdGenMethodNotifier, IdGenMethod> {
  const IdGenMethodNotifierProvider._({
    required IdGenMethodNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'idGenMethodNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$idGenMethodNotifierHash();

  @override
  String toString() {
    return r'idGenMethodNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  IdGenMethodNotifier create() => IdGenMethodNotifier();

  @override
  bool operator ==(Object other) {
    return other is IdGenMethodNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$idGenMethodNotifierHash() =>
    r'746547aa565a63136ac78543c390a718aa67d296';

@JsonPersist()
final class IdGenMethodNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          IdGenMethodNotifier,
          AsyncValue<IdGenMethod>,
          IdGenMethod,
          FutureOr<IdGenMethod>,
          Account
        > {
  const IdGenMethodNotifierFamily._()
    : super(
        retry: null,
        name: r'idGenMethodNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  @JsonPersist()
  IdGenMethodNotifierProvider call(Account account) =>
      IdGenMethodNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'idGenMethodNotifierProvider';
}

@JsonPersist()
abstract class _$IdGenMethodNotifierBase extends $AsyncNotifier<IdGenMethod> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  FutureOr<IdGenMethod> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<IdGenMethod>, IdGenMethod>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<IdGenMethod>, IdGenMethod>,
              AsyncValue<IdGenMethod>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// **************************************************************************
// JsonGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
abstract class _$IdGenMethodNotifier extends _$IdGenMethodNotifierBase {
  /// The default key used by [persist].
  String get key {
    late final args = account;
    late final resolvedKey = 'IdGenMethodNotifier($args)';

    return resolvedKey;
  }

  /// A variant of [persist], for JSON-specific encoding.
  ///
  /// You can override [key] to customize the key used for storage.
  PersistResult persist(
    FutureOr<Storage<String, String>> storage, {
    String? key,
    String Function(IdGenMethod state)? encode,
    IdGenMethod Function(String encoded)? decode,
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
            return IdGenMethod.fromJson(e as Map<String, Object?>);
          },
      options: options,
    );
  }
}
