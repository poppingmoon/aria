// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emojis_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EmojisNotifier)
const emojisNotifierProvider = EmojisNotifierFamily._();

final class EmojisNotifierProvider
    extends $StreamNotifierProvider<EmojisNotifier, Map<String, Emoji>> {
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

String _$emojisNotifierHash() => r'23cf00d4ae61216402def2d92c2ea327db472a57';

final class EmojisNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          EmojisNotifier,
          AsyncValue<Map<String, Emoji>>,
          Map<String, Emoji>,
          Stream<Map<String, Emoji>>,
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

  EmojisNotifierProvider call(String host) =>
      EmojisNotifierProvider._(argument: host, from: this);

  @override
  String toString() => r'emojisNotifierProvider';
}

abstract class _$EmojisNotifier extends $StreamNotifier<Map<String, Emoji>> {
  late final _$args = ref.$arg as String;
  String get host => _$args;

  Stream<Map<String, Emoji>> build(String host);
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
