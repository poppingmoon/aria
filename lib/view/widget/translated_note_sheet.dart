import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/translated_note_provider.dart';
import '../../util/copy_text.dart';
import 'error_message.dart';
import 'mfm.dart';

class TranslatedNoteSheet extends ConsumerWidget {
  const TranslatedNoteSheet({
    super.key,
    required this.account,
    required this.note,
  });

  final Account account;
  final Note note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translatedNote = ref.watch(
      translatedNoteProvider(
        account,
        note.id,
        Localizations.localeOf(context).toLanguageTag(),
      ),
    );

    return switch (translatedNote) {
      AsyncValue(valueOrNull: final translatedNote?) => SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  t.misskey.translatedFrom(x: translatedNote.sourceLang),
                ),
                trailing: IconButton(
                  onPressed: () =>
                      copyToClipboard(context, translatedNote.text),
                  icon: const Icon(Icons.copy),
                ),
              ),
              const Divider(height: 0.0),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Mfm(
                    account: account,
                    text: translatedNote.text,
                    emojis: note.emojis,
                    author: note.user,
                  ),
                ),
              ),
            ],
          ),
        ),
      AsyncValue(:final error?, :final stackTrace) =>
        ErrorMessage(error: error, stackTrace: stackTrace),
      _ => const Center(child: CircularProgressIndicator()),
    };
  }
}
