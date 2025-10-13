// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PostNotifier)
const postNotifierProvider = PostNotifierFamily._();

final class PostNotifierProvider
    extends $NotifierProvider<PostNotifier, NotesCreateRequest> {
  const PostNotifierProvider._({
    required PostNotifierFamily super.from,
    required (Account, {String? noteId}) super.argument,
  }) : super(
         retry: null,
         name: r'postNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$postNotifierHash();

  @override
  String toString() {
    return r'postNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  PostNotifier create() => PostNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotesCreateRequest value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotesCreateRequest>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PostNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$postNotifierHash() => r'ad93927d40007441a577484b858cf61503d976b2';

final class PostNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          PostNotifier,
          NotesCreateRequest,
          NotesCreateRequest,
          NotesCreateRequest,
          (Account, {String? noteId})
        > {
  const PostNotifierFamily._()
    : super(
        retry: null,
        name: r'postNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  PostNotifierProvider call(Account account, {String? noteId}) =>
      PostNotifierProvider._(argument: (account, noteId: noteId), from: this);

  @override
  String toString() => r'postNotifierProvider';
}

abstract class _$PostNotifier extends $Notifier<NotesCreateRequest> {
  late final _$args = ref.$arg as (Account, {String? noteId});
  Account get account => _$args.$1;
  String? get noteId => _$args.noteId;

  NotesCreateRequest build(Account account, {String? noteId});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, noteId: _$args.noteId);
    final ref = this.ref as $Ref<NotesCreateRequest, NotesCreateRequest>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<NotesCreateRequest, NotesCreateRequest>,
              NotesCreateRequest,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
