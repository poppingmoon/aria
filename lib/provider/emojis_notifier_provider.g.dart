// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emojis_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EmojisNotifier)
@JsonPersist()
const emojisNotifierProvider = EmojisNotifierFamily._();

@JsonPersist()
final class EmojisNotifierProvider
    extends $AsyncNotifierProvider<EmojisNotifier, Map<String, Emoji>> {
  const EmojisNotifierProvider._({
    required EmojisNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'emojisNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$emojisNotifierHash();

  @override
  String toString() {
    return r'emojisNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  EmojisNotifier create() => EmojisNotifier();

  @override
  bool operator ==(Object other) {
    return other is EmojisNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$emojisNotifierHash() => r'5875eb71caeccaa56af45ec213531c4b05e4fe6f';

@JsonPersist()
final class EmojisNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          EmojisNotifier,
          AsyncValue<Map<String, Emoji>>,
          Map<String, Emoji>,
          FutureOr<Map<String, Emoji>>,
          String
        > {
  const EmojisNotifierFamily._()
    : super(
        retry: null,
        name: r'emojisNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  @JsonPersist()
  EmojisNotifierProvider call(String host) =>
      EmojisNotifierProvider._(argument: host, from: this);

  @override
  String toString() => r'emojisNotifierProvider';
}

@JsonPersist()
abstract class _$EmojisNotifierBase extends $AsyncNotifier<Map<String, Emoji>> {
  late final _$args = ref.$arg as String;
  String get host => _$args;

  FutureOr<Map<String, Emoji>> build(String host);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<Map<String, Emoji>>, Map<String, Emoji>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Map<String, Emoji>>, Map<String, Emoji>>,
              AsyncValue<Map<String, Emoji>>,
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
abstract class _$EmojisNotifier extends _$EmojisNotifierBase {
  /// The default key used by [persist].
  String get key {
    late final args = host;
    late final resolvedKey = 'EmojisNotifier($args)';

    return resolvedKey;
  }

  /// A variant of [persist], for JSON-specific encoding.
  ///
  /// You can override [key] to customize the key used for storage.
  PersistResult persist(
    FutureOr<Storage<String, String>> storage, {
    String? key,
    String Function(Map<String, Emoji> state)? encode,
    Map<String, Emoji> Function(String encoded)? decode,
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
            return (e as Map).map(
              (k, v) => MapEntry(
                k as String,
                Emoji.fromJson(v as Map<String, Object?>),
              ),
            );
          },
      options: options,
    );
  }
}
