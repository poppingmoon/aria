// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PostNotifier)
final postNotifierProvider = PostNotifierFamily._();

final class PostNotifierProvider
    extends $NotifierProvider<PostNotifier, NoteDraft> {
  PostNotifierProvider._({
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
  Override overrideWithValue(NoteDraft value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NoteDraft>(value),
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

String _$postNotifierHash() => r'55c5e2a70fcc02cb2222f93e67bb86e99462c7e9';

final class PostNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          PostNotifier,
          NoteDraft,
          NoteDraft,
          NoteDraft,
          (Account, {String? noteId})
        > {
  PostNotifierFamily._()
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

abstract class _$PostNotifier extends $Notifier<NoteDraft> {
  late final _$args = ref.$arg as (Account, {String? noteId});
  Account get account => _$args.$1;
  String? get noteId => _$args.noteId;

  NoteDraft build(Account account, {String? noteId});
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<NoteDraft, NoteDraft>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<NoteDraft, NoteDraft>,
              NoteDraft,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, noteId: _$args.noteId));
  }
}
