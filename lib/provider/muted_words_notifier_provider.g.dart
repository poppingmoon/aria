// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muted_words_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mutedWordsNotifierHash() =>
    r'c09bcc1f8c8ad95365019d3fb825dca4d2afd1ce';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$MutedWordsNotifier
    extends BuildlessAutoDisposeNotifier<List<MuteWord>> {
  late final Account account;
  late final bool hardMute;

  List<MuteWord> build(
    Account account, {
    bool hardMute = false,
  });
}

/// See also [MutedWordsNotifier].
@ProviderFor(MutedWordsNotifier)
const mutedWordsNotifierProvider = MutedWordsNotifierFamily();

/// See also [MutedWordsNotifier].
class MutedWordsNotifierFamily extends Family<List<MuteWord>> {
  /// See also [MutedWordsNotifier].
  const MutedWordsNotifierFamily();

  /// See also [MutedWordsNotifier].
  MutedWordsNotifierProvider call(
    Account account, {
    bool hardMute = false,
  }) {
    return MutedWordsNotifierProvider(
      account,
      hardMute: hardMute,
    );
  }

  @override
  MutedWordsNotifierProvider getProviderOverride(
    covariant MutedWordsNotifierProvider provider,
  ) {
    return call(
      provider.account,
      hardMute: provider.hardMute,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'mutedWordsNotifierProvider';
}

/// See also [MutedWordsNotifier].
class MutedWordsNotifierProvider extends AutoDisposeNotifierProviderImpl<
    MutedWordsNotifier, List<MuteWord>> {
  /// See also [MutedWordsNotifier].
  MutedWordsNotifierProvider(
    Account account, {
    bool hardMute = false,
  }) : this._internal(
          () => MutedWordsNotifier()
            ..account = account
            ..hardMute = hardMute,
          from: mutedWordsNotifierProvider,
          name: r'mutedWordsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mutedWordsNotifierHash,
          dependencies: MutedWordsNotifierFamily._dependencies,
          allTransitiveDependencies:
              MutedWordsNotifierFamily._allTransitiveDependencies,
          account: account,
          hardMute: hardMute,
        );

  MutedWordsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.hardMute,
  }) : super.internal();

  final Account account;
  final bool hardMute;

  @override
  List<MuteWord> runNotifierBuild(
    covariant MutedWordsNotifier notifier,
  ) {
    return notifier.build(
      account,
      hardMute: hardMute,
    );
  }

  @override
  Override overrideWith(MutedWordsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MutedWordsNotifierProvider._internal(
        () => create()
          ..account = account
          ..hardMute = hardMute,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        hardMute: hardMute,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<MutedWordsNotifier, List<MuteWord>>
      createElement() {
    return _MutedWordsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MutedWordsNotifierProvider &&
        other.account == account &&
        other.hardMute == hardMute;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, hardMute.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MutedWordsNotifierRef on AutoDisposeNotifierProviderRef<List<MuteWord>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `hardMute` of this provider.
  bool get hardMute;
}

class _MutedWordsNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<MutedWordsNotifier,
        List<MuteWord>> with MutedWordsNotifierRef {
  _MutedWordsNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as MutedWordsNotifierProvider).account;
  @override
  bool get hardMute => (origin as MutedWordsNotifierProvider).hardMute;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
