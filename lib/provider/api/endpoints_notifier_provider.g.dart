// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoints_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EndpointsNotifier)
@JsonPersist()
final endpointsNotifierProvider = EndpointsNotifierFamily._();

@JsonPersist()
final class EndpointsNotifierProvider
    extends $AsyncNotifierProvider<EndpointsNotifier, List<String>> {
  EndpointsNotifierProvider._({
    required EndpointsNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'endpointsNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$endpointsNotifierHash();

  @override
  String toString() {
    return r'endpointsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EndpointsNotifier create() => EndpointsNotifier();

  @override
  bool operator ==(Object other) {
    return other is EndpointsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$endpointsNotifierHash() => r'a191db0165b927b837cff7afbe75ea0151ff1209';

@JsonPersist()
final class EndpointsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          EndpointsNotifier,
          AsyncValue<List<String>>,
          List<String>,
          FutureOr<List<String>>,
          String
        > {
  EndpointsNotifierFamily._()
    : super(
        retry: null,
        name: r'endpointsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  @JsonPersist()
  EndpointsNotifierProvider call(String host) =>
      EndpointsNotifierProvider._(argument: host, from: this);

  @override
  String toString() => r'endpointsNotifierProvider';
}

@JsonPersist()
abstract class _$EndpointsNotifierBase extends $AsyncNotifier<List<String>> {
  late final _$args = ref.$arg as String;
  String get host => _$args;

  FutureOr<List<String>> build(String host);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<String>>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<String>>, List<String>>,
              AsyncValue<List<String>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

// **************************************************************************
// JsonGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
abstract class _$EndpointsNotifier extends _$EndpointsNotifierBase {
  /// The default key used by [persist].
  String get key {
    late final args = host;
    late final resolvedKey = 'EndpointsNotifier($args)';

    return resolvedKey;
  }

  /// A variant of [persist], for JSON-specific encoding.
  ///
  /// You can override [key] to customize the key used for storage.
  PersistResult persist(
    FutureOr<Storage<String, String>> storage, {
    String? key,
    String Function(List<String> state)? encode,
    List<String> Function(String encoded)? decode,
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
            return (e as List).map((e) => e as String).toList();
          },
      options: options,
    );
  }
}
