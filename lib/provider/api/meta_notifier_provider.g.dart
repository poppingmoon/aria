// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MetaNotifier)
const metaNotifierProvider = MetaNotifierFamily._();

final class MetaNotifierProvider
    extends $StreamNotifierProvider<MetaNotifier, MetaResponse> {
  const MetaNotifierProvider._({
    required MetaNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'metaNotifierProvider',
         isAutoDispose: true,
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

String _$metaNotifierHash() => r'ee92b6930ea875fa0e0546e3756345689f13f2b6';

final class MetaNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          MetaNotifier,
          AsyncValue<MetaResponse>,
          MetaResponse,
          Stream<MetaResponse>,
          String
        > {
  const MetaNotifierFamily._()
    : super(
        retry: null,
        name: r'metaNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MetaNotifierProvider call(String host) =>
      MetaNotifierProvider._(argument: host, from: this);

  @override
  String toString() => r'metaNotifierProvider';
}

abstract class _$MetaNotifier extends $StreamNotifier<MetaResponse> {
  late final _$args = ref.$arg as String;
  String get host => _$args;

  Stream<MetaResponse> build(String host);
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
