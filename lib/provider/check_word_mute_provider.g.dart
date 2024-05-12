// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_word_mute_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkWordMuteHash() => r'4b239cd072aae841918870a9024fd05e17797e80';

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

/// See also [checkWordMute].
@ProviderFor(checkWordMute)
const checkWordMuteProvider = CheckWordMuteFamily();

/// See also [checkWordMute].
class CheckWordMuteFamily extends Family<bool> {
  /// See also [checkWordMute].
  const CheckWordMuteFamily();

  /// See also [checkWordMute].
  CheckWordMuteProvider call(
    Account account,
    String noteId, {
    bool hardMute = false,
  }) {
    return CheckWordMuteProvider(
      account,
      noteId,
      hardMute: hardMute,
    );
  }

  @override
  CheckWordMuteProvider getProviderOverride(
    covariant CheckWordMuteProvider provider,
  ) {
    return call(
      provider.account,
      provider.noteId,
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
  String? get name => r'checkWordMuteProvider';
}

/// See also [checkWordMute].
class CheckWordMuteProvider extends AutoDisposeProvider<bool> {
  /// See also [checkWordMute].
  CheckWordMuteProvider(
    Account account,
    String noteId, {
    bool hardMute = false,
  }) : this._internal(
          (ref) => checkWordMute(
            ref as CheckWordMuteRef,
            account,
            noteId,
            hardMute: hardMute,
          ),
          from: checkWordMuteProvider,
          name: r'checkWordMuteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkWordMuteHash,
          dependencies: CheckWordMuteFamily._dependencies,
          allTransitiveDependencies:
              CheckWordMuteFamily._allTransitiveDependencies,
          account: account,
          noteId: noteId,
          hardMute: hardMute,
        );

  CheckWordMuteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.noteId,
    required this.hardMute,
  }) : super.internal();

  final Account account;
  final String noteId;
  final bool hardMute;

  @override
  Override overrideWith(
    bool Function(CheckWordMuteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckWordMuteProvider._internal(
        (ref) => create(ref as CheckWordMuteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        noteId: noteId,
        hardMute: hardMute,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _CheckWordMuteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckWordMuteProvider &&
        other.account == account &&
        other.noteId == noteId &&
        other.hardMute == hardMute;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, noteId.hashCode);
    hash = _SystemHash.combine(hash, hardMute.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CheckWordMuteRef on AutoDisposeProviderRef<bool> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;

  /// The parameter `hardMute` of this provider.
  bool get hardMute;
}

class _CheckWordMuteProviderElement extends AutoDisposeProviderElement<bool>
    with CheckWordMuteRef {
  _CheckWordMuteProviderElement(super.provider);

  @override
  Account get account => (origin as CheckWordMuteProvider).account;
  @override
  String get noteId => (origin as CheckWordMuteProvider).noteId;
  @override
  bool get hardMute => (origin as CheckWordMuteProvider).hardMute;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
