// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_notes_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$conversationNotesHash() => r'11b1a61fd4cfc7069f0dc6a4094ae8d5559945d1';

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

/// See also [conversationNotes].
@ProviderFor(conversationNotes)
const conversationNotesProvider = ConversationNotesFamily();

/// See also [conversationNotes].
class ConversationNotesFamily extends Family<AsyncValue<List<Note>>> {
  /// See also [conversationNotes].
  const ConversationNotesFamily();

  /// See also [conversationNotes].
  ConversationNotesProvider call(
    Account account,
    String noteId,
  ) {
    return ConversationNotesProvider(
      account,
      noteId,
    );
  }

  @override
  ConversationNotesProvider getProviderOverride(
    covariant ConversationNotesProvider provider,
  ) {
    return call(
      provider.account,
      provider.noteId,
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
  String? get name => r'conversationNotesProvider';
}

/// See also [conversationNotes].
class ConversationNotesProvider extends AutoDisposeFutureProvider<List<Note>> {
  /// See also [conversationNotes].
  ConversationNotesProvider(
    Account account,
    String noteId,
  ) : this._internal(
          (ref) => conversationNotes(
            ref as ConversationNotesRef,
            account,
            noteId,
          ),
          from: conversationNotesProvider,
          name: r'conversationNotesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$conversationNotesHash,
          dependencies: ConversationNotesFamily._dependencies,
          allTransitiveDependencies:
              ConversationNotesFamily._allTransitiveDependencies,
          account: account,
          noteId: noteId,
        );

  ConversationNotesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.noteId,
  }) : super.internal();

  final Account account;
  final String noteId;

  @override
  Override overrideWith(
    FutureOr<List<Note>> Function(ConversationNotesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ConversationNotesProvider._internal(
        (ref) => create(ref as ConversationNotesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        noteId: noteId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Note>> createElement() {
    return _ConversationNotesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ConversationNotesProvider &&
        other.account == account &&
        other.noteId == noteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, noteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ConversationNotesRef on AutoDisposeFutureProviderRef<List<Note>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _ConversationNotesProviderElement
    extends AutoDisposeFutureProviderElement<List<Note>>
    with ConversationNotesRef {
  _ConversationNotesProviderElement(super.provider);

  @override
  Account get account => (origin as ConversationNotesProvider).account;
  @override
  String get noteId => (origin as ConversationNotesProvider).noteId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
