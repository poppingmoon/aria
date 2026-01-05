// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_form_hashtags_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PostFormHashtagsNotifier)
final postFormHashtagsNotifierProvider = PostFormHashtagsNotifierFamily._();

final class PostFormHashtagsNotifierProvider
    extends $NotifierProvider<PostFormHashtagsNotifier, List<String>> {
  PostFormHashtagsNotifierProvider._({
    required PostFormHashtagsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'postFormHashtagsNotifierProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$postFormHashtagsNotifierHash();

  @override
  String toString() {
    return r'postFormHashtagsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PostFormHashtagsNotifier create() => PostFormHashtagsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PostFormHashtagsNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$postFormHashtagsNotifierHash() =>
    r'c2c120a5f2b3ea5c4e70d8a173901b1275af8988';

final class PostFormHashtagsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          PostFormHashtagsNotifier,
          List<String>,
          List<String>,
          List<String>,
          Account
        > {
  PostFormHashtagsNotifierFamily._()
    : super(
        retry: null,
        name: r'postFormHashtagsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  PostFormHashtagsNotifierProvider call(Account account) =>
      PostFormHashtagsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'postFormHashtagsNotifierProvider';
}

abstract class _$PostFormHashtagsNotifier extends $Notifier<List<String>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  List<String> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<String>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<String>, List<String>>,
              List<String>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
