// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notesNotifierHash() => r'a5a400ae72e3d7b7d72148018900485a9efbd483';

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

abstract class _$NotesNotifier extends BuildlessNotifier<Map<String, Note>> {
  late final Account account;

  Map<String, Note> build(
    Account account,
  );
}

/// See also [NotesNotifier].
@ProviderFor(NotesNotifier)
const notesNotifierProvider = NotesNotifierFamily();

/// See also [NotesNotifier].
class NotesNotifierFamily extends Family<Map<String, Note>> {
  /// See also [NotesNotifier].
  const NotesNotifierFamily();

  /// See also [NotesNotifier].
  NotesNotifierProvider call(
    Account account,
  ) {
    return NotesNotifierProvider(
      account,
    );
  }

  @override
  NotesNotifierProvider getProviderOverride(
    covariant NotesNotifierProvider provider,
  ) {
    return call(
      provider.account,
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
  String? get name => r'notesNotifierProvider';
}

/// See also [NotesNotifier].
class NotesNotifierProvider
    extends NotifierProviderImpl<NotesNotifier, Map<String, Note>> {
  /// See also [NotesNotifier].
  NotesNotifierProvider(
    Account account,
  ) : this._internal(
          () => NotesNotifier()..account = account,
          from: notesNotifierProvider,
          name: r'notesNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notesNotifierHash,
          dependencies: NotesNotifierFamily._dependencies,
          allTransitiveDependencies:
              NotesNotifierFamily._allTransitiveDependencies,
          account: account,
        );

  NotesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
  }) : super.internal();

  final Account account;

  @override
  Map<String, Note> runNotifierBuild(
    covariant NotesNotifier notifier,
  ) {
    return notifier.build(
      account,
    );
  }

  @override
  Override overrideWith(NotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotesNotifierProvider._internal(
        () => create()..account = account,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
      ),
    );
  }

  @override
  NotifierProviderElement<NotesNotifier, Map<String, Note>> createElement() {
    return _NotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotesNotifierProvider && other.account == account;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin NotesNotifierRef on NotifierProviderRef<Map<String, Note>> {
  /// The parameter `account` of this provider.
  Account get account;
}

class _NotesNotifierProviderElement
    extends NotifierProviderElement<NotesNotifier, Map<String, Note>>
    with NotesNotifierRef {
  _NotesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as NotesNotifierProvider).account;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
