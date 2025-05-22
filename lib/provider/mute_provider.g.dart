// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mute_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$muteHash() => r'0641ba880aca46ee720b761708d188c922f2c91e';

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

/// See also [mute].
@ProviderFor(mute)
const muteProvider = MuteFamily();

/// See also [mute].
class MuteFamily
    extends Family<(AhoCorasick, List<List<String>>, List<RegExp>)> {
  /// See also [mute].
  const MuteFamily();

  /// See also [mute].
  MuteProvider call(List<MuteWord> mutedWords) {
    return MuteProvider(mutedWords);
  }

  @override
  MuteProvider getProviderOverride(covariant MuteProvider provider) {
    return call(provider.mutedWords);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'muteProvider';
}

/// See also [mute].
class MuteProvider
    extends Provider<(AhoCorasick, List<List<String>>, List<RegExp>)> {
  /// See also [mute].
  MuteProvider(List<MuteWord> mutedWords)
    : this._internal(
        (ref) => mute(ref as MuteRef, mutedWords),
        from: muteProvider,
        name: r'muteProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$muteHash,
        dependencies: MuteFamily._dependencies,
        allTransitiveDependencies: MuteFamily._allTransitiveDependencies,
        mutedWords: mutedWords,
      );

  MuteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mutedWords,
  }) : super.internal();

  final List<MuteWord> mutedWords;

  @override
  Override overrideWith(
    (AhoCorasick, List<List<String>>, List<RegExp>) Function(MuteRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MuteProvider._internal(
        (ref) => create(ref as MuteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mutedWords: mutedWords,
      ),
    );
  }

  @override
  ProviderElement<(AhoCorasick, List<List<String>>, List<RegExp>)>
  createElement() {
    return _MuteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MuteProvider && other.mutedWords == mutedWords;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mutedWords.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MuteRef on ProviderRef<(AhoCorasick, List<List<String>>, List<RegExp>)> {
  /// The parameter `mutedWords` of this provider.
  List<MuteWord> get mutedWords;
}

class _MuteProviderElement
    extends ProviderElement<(AhoCorasick, List<List<String>>, List<RegExp>)>
    with MuteRef {
  _MuteProviderElement(super.provider);

  @override
  List<MuteWord> get mutedWords => (origin as MuteProvider).mutedWords;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
