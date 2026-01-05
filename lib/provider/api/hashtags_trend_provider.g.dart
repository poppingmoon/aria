// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hashtags_trend_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(hashtagsTrend)
final hashtagsTrendProvider = HashtagsTrendFamily._();

final class HashtagsTrendProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<HashtagsTrendResponse>>,
          List<HashtagsTrendResponse>,
          FutureOr<List<HashtagsTrendResponse>>
        >
    with
        $FutureModifier<List<HashtagsTrendResponse>>,
        $FutureProvider<List<HashtagsTrendResponse>> {
  HashtagsTrendProvider._({
    required HashtagsTrendFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'hashtagsTrendProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$hashtagsTrendHash();

  @override
  String toString() {
    return r'hashtagsTrendProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<HashtagsTrendResponse>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<HashtagsTrendResponse>> create(Ref ref) {
    final argument = this.argument as Account;
    return hashtagsTrend(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is HashtagsTrendProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$hashtagsTrendHash() => r'270320c2a2eaf57a245b612d0397d439cdcc3cba';

final class HashtagsTrendFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<HashtagsTrendResponse>>,
          Account
        > {
  HashtagsTrendFamily._()
    : super(
        retry: null,
        name: r'hashtagsTrendProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  HashtagsTrendProvider call(Account account) =>
      HashtagsTrendProvider._(argument: account, from: this);

  @override
  String toString() => r'hashtagsTrendProvider';
}
