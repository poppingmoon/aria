// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MetaNotifier)
@JsonPersist()
const metaNotifierProvider = MetaNotifierFamily._();

@JsonPersist()
final class MetaNotifierProvider
    extends $AsyncNotifierProvider<MetaNotifier, MetaResponse> {
  const MetaNotifierProvider._({
    required MetaNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'metaNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$metaNotifierHash();

  @override
  String toString() {
    return r'metaNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MetaNotifier create() => MetaNotifier();

  @override
  bool operator ==(Object other) {
    return other is MetaNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$metaNotifierHash() => r'90bbbee141b53b46d01eeca89138979483a7d308';

@JsonPersist()
final class MetaNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          MetaNotifier,
          AsyncValue<MetaResponse>,
          MetaResponse,
          FutureOr<MetaResponse>,
          String
        > {
  const MetaNotifierFamily._()
    : super(
        retry: null,
        name: r'metaNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  @JsonPersist()
  MetaNotifierProvider call(String host) =>
      MetaNotifierProvider._(argument: host, from: this);

  @override
  String toString() => r'metaNotifierProvider';
}

@JsonPersist()
abstract class _$MetaNotifierBase extends $AsyncNotifier<MetaResponse> {
  late final _$args = ref.$arg as String;
  String get host => _$args;

  FutureOr<MetaResponse> build(String host);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<MetaResponse>, MetaResponse>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MetaResponse>, MetaResponse>,
              AsyncValue<MetaResponse>,
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
abstract class _$MetaNotifier extends _$MetaNotifierBase {
  /// The default key used by [persist].
  String get key {
    late final args = host;
    late final resolvedKey = 'MetaNotifier($args)';

    return resolvedKey;
  }

  /// A variant of [persist], for JSON-specific encoding.
  ///
  /// You can override [key] to customize the key used for storage.
  PersistResult persist(
    FutureOr<Storage<String, String>> storage, {
    String? key,
    String Function(MetaResponse state)? encode,
    MetaResponse Function(String encoded)? decode,
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
            return MetaResponse.fromJson(e as Map<String, Object?>);
          },
      options: options,
    );
  }
}
