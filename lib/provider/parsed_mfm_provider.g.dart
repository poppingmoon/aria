// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parsed_mfm_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$parsedMfmHash() => r'f892bb53f573cf67e71461071eda194d4ea747b6';

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

/// See also [parsedMfm].
@ProviderFor(parsedMfm)
const parsedMfmProvider = ParsedMfmFamily();

/// See also [parsedMfm].
class ParsedMfmFamily extends Family<List<MfmNode>> {
  /// See also [parsedMfm].
  const ParsedMfmFamily();

  /// See also [parsedMfm].
  ParsedMfmProvider call(
    String text,
  ) {
    return ParsedMfmProvider(
      text,
    );
  }

  @override
  ParsedMfmProvider getProviderOverride(
    covariant ParsedMfmProvider provider,
  ) {
    return call(
      provider.text,
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
  String? get name => r'parsedMfmProvider';
}

/// See also [parsedMfm].
class ParsedMfmProvider extends AutoDisposeProvider<List<MfmNode>> {
  /// See also [parsedMfm].
  ParsedMfmProvider(
    String text,
  ) : this._internal(
          (ref) => parsedMfm(
            ref as ParsedMfmRef,
            text,
          ),
          from: parsedMfmProvider,
          name: r'parsedMfmProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$parsedMfmHash,
          dependencies: ParsedMfmFamily._dependencies,
          allTransitiveDependencies: ParsedMfmFamily._allTransitiveDependencies,
          text: text,
        );

  ParsedMfmProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.text,
  }) : super.internal();

  final String text;

  @override
  Override overrideWith(
    List<MfmNode> Function(ParsedMfmRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ParsedMfmProvider._internal(
        (ref) => create(ref as ParsedMfmRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        text: text,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<MfmNode>> createElement() {
    return _ParsedMfmProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ParsedMfmProvider && other.text == text;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, text.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ParsedMfmRef on AutoDisposeProviderRef<List<MfmNode>> {
  /// The parameter `text` of this provider.
  String get text;
}

class _ParsedMfmProviderElement
    extends AutoDisposeProviderElement<List<MfmNode>> with ParsedMfmRef {
  _ParsedMfmProviderElement(super.provider);

  @override
  String get text => (origin as ParsedMfmProvider).text;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
