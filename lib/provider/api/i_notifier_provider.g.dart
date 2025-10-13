// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(INotifier)
@JsonPersist()
const iNotifierProvider = INotifierFamily._();

@JsonPersist()
final class INotifierProvider
    extends $AsyncNotifierProvider<INotifier, MeDetailed?> {
  const INotifierProvider._({
    required INotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'iNotifierProvider',
         isAutoDispose: false,
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

String _$iNotifierHash() => r'f12894c41f9a91b7f35a76f471fe49b0b125de6e';

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
  const INotifierFamily._()
    : super(
        retry: null,
        name: r'iNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
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
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<MeDetailed?>, MeDetailed?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MeDetailed?>, MeDetailed?>,
              AsyncValue<MeDetailed?>,
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
