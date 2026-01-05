// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_url_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ServerUrlNotifier)
final serverUrlNotifierProvider = ServerUrlNotifierFamily._();

final class ServerUrlNotifierProvider
    extends $NotifierProvider<ServerUrlNotifier, Uri> {
  ServerUrlNotifierProvider._({
    required ServerUrlNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'serverUrlNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$serverUrlNotifierHash();

  @override
  String toString() {
    return r'serverUrlNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ServerUrlNotifier create() => ServerUrlNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Uri value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Uri>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ServerUrlNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$serverUrlNotifierHash() => r'fdb259591cc72d97dc0d46744a1d99c690c8ae07';

final class ServerUrlNotifierFamily extends $Family
    with $ClassFamilyOverride<ServerUrlNotifier, Uri, Uri, Uri, String> {
  ServerUrlNotifierFamily._()
    : super(
        retry: null,
        name: r'serverUrlNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  ServerUrlNotifierProvider call(String host) =>
      ServerUrlNotifierProvider._(argument: host, from: this);

  @override
  String toString() => r'serverUrlNotifierProvider';
}

abstract class _$ServerUrlNotifier extends $Notifier<Uri> {
  late final _$args = ref.$arg as String;
  String get host => _$args;

  Uri build(String host);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Uri, Uri>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Uri, Uri>,
              Uri,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
