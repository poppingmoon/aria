// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attaches_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AttachesNotifier)
final attachesNotifierProvider = AttachesNotifierFamily._();

final class AttachesNotifierProvider
    extends $NotifierProvider<AttachesNotifier, List<PostFile>> {
  AttachesNotifierProvider._({
    required AttachesNotifierFamily super.from,
    required (Account, {String? noteId, bool gallery, bool chat})
    super.argument,
  }) : super(
         retry: null,
         name: r'attachesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$attachesNotifierHash();

  @override
  String toString() {
    return r'attachesNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  AttachesNotifier create() => AttachesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<PostFile> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<PostFile>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AttachesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$attachesNotifierHash() => r'd82e0021bc9734dd7f152965c4b9204443f3b0ab';

final class AttachesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AttachesNotifier,
          List<PostFile>,
          List<PostFile>,
          List<PostFile>,
          (Account, {String? noteId, bool gallery, bool chat})
        > {
  AttachesNotifierFamily._()
    : super(
        retry: null,
        name: r'attachesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AttachesNotifierProvider call(
    Account account, {
    String? noteId,
    bool gallery = false,
    bool chat = false,
  }) => AttachesNotifierProvider._(
    argument: (account, noteId: noteId, gallery: gallery, chat: chat),
    from: this,
  );

  @override
  String toString() => r'attachesNotifierProvider';
}

abstract class _$AttachesNotifier extends $Notifier<List<PostFile>> {
  late final _$args =
      ref.$arg as (Account, {String? noteId, bool gallery, bool chat});
  Account get account => _$args.$1;
  String? get noteId => _$args.noteId;
  bool get gallery => _$args.gallery;
  bool get chat => _$args.chat;

  List<PostFile> build(
    Account account, {
    String? noteId,
    bool gallery = false,
    bool chat = false,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<PostFile>, List<PostFile>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<PostFile>, List<PostFile>>,
              List<PostFile>,
              Object?,
              Object?
            >;
    element.handleCreate(
      ref,
      () => build(
        _$args.$1,
        noteId: _$args.noteId,
        gallery: _$args.gallery,
        chat: _$args.chat,
      ),
    );
  }
}
