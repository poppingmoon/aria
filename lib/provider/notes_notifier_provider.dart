import 'dart:math';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import '../model/streaming/note_update_event.dart';
import '../util/append_content_warning.dart';
import 'api/i_notifier_provider.dart';
import 'api/misskey_provider.dart';
import 'note_is_deleted_notifier_provider.dart';
import 'note_notifier_provider.dart';

part 'notes_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class NotesNotifier extends _$NotesNotifier {
  @override
  void build(Account account) {}

  Misskey get _misskey => ref.read(misskeyProvider(account));

  void add(Note note, {bool detail = true}) {
    if (note.renote case final renote?) {
      add(renote);
    } else if (note.renoteId case final renoteId? when detail) {
      if (ref.read(noteNotifierProvider(account, renoteId)) == null) {
        remove(renoteId);
      }
    }
    if (note.reply case final reply?) {
      add(reply, detail: false);
    } else if (note.replyId case final replyId? when detail) {
      if (ref.read(noteNotifierProvider(account, replyId)) == null) {
        remove(replyId);
      }
    }
    final cachedNote = ref.read(noteNotifierProvider(account, note.id));
    ref
        .read(noteNotifierProvider(account, note.id).notifier)
        .updateNote(
          note.copyWith(
            cw: note.user.mandatoryCW != null
                ? appendContentWarning(note.cw, note.user.mandatoryCW)
                : note.cw,
            reactionCount:
                note.reactionCount ??
                note.reactions.values.fold<int>(
                  0,
                  (acc, reaction) => acc + reaction,
                ),
            renote:
                note.renote ??
                switch (note.renoteId) {
                  final renoteId? => ref.read(
                    noteNotifierProvider(account, renoteId),
                  ),
                  _ => null,
                },
            reply:
                note.reply ??
                switch (note.replyId) {
                  final replyId? => ref.read(
                    noteNotifierProvider(account, replyId),
                  ),
                  _ => null,
                },
            poll: detail ? note.poll : cachedNote?.poll,
            myReaction: detail ? note.myReaction : cachedNote?.myReaction,
          ),
        );
  }

  void addAll(Iterable<Note> notes) {
    for (final note in notes) {
      add(note);
    }
  }

  Future<Note> show(String noteId) async {
    final note = await _misskey.notes.show(NotesShowRequest(noteId: noteId));
    add(note);
    return note;
  }

  void remove(String noteId) {
    ref.invalidate(noteNotifierProvider(account, noteId));
    ref
        .read(noteIsDeletedNotifierProvider(account, noteId).notifier)
        .markAsDeleted();
  }

  void addReaction(String noteId, Reacted reacted) {
    final note = ref.read(noteNotifierProvider(account, noteId));
    if (note == null) {
      return;
    }
    final i = ref.read(iNotifierProvider(account)).value;
    final isMyReaction = reacted.userId == i?.id;
    if (isMyReaction && note.myReaction == reacted.reaction) {
      return;
    }
    final reactions = Map.of(note.reactions);
    reactions[reacted.reaction] = (reactions[reacted.reaction] ?? 0) + 1;
    final emoji = reacted.emoji;
    final reactionEmojis = Map.of(note.reactionEmojis);
    if (emoji != null &&
        reacted.reaction.startsWith(':') &&
        !reacted.reaction.endsWith('@.:')) {
      reactionEmojis[emoji.name] = emoji.url;
    }
    ref
        .read(noteNotifierProvider(account, noteId).notifier)
        .updateNote(
          note.copyWith(
            reactionCount: (note.reactionCount ?? 0) + 1,
            reactions: reactions,
            reactionEmojis: reactionEmojis,
            myReaction: isMyReaction ? reacted.reaction : note.myReaction,
          ),
        );
  }

  void removeReaction(String noteId, Unreacted unreacted) {
    final note = ref.read(noteNotifierProvider(account, noteId));
    if (note == null) {
      return;
    }
    final i = ref.read(iNotifierProvider(account)).value;
    final isMyReaction = unreacted.userId == i?.id;
    if (isMyReaction && note.myReaction == null) {
      return;
    }
    final reactions = Map<String, int>.of(note.reactions);
    final reactionCount = reactions[unreacted.reaction];
    if (reactionCount == null) {
      return;
    }
    if (reactionCount <= 1) {
      reactions.remove(unreacted.reaction);
    } else {
      reactions[unreacted.reaction] = reactionCount - 1;
    }
    ref
        .read(noteNotifierProvider(account, noteId).notifier)
        .updateNote(
          note.copyWith(
            reactionCount: max(0, (note.reactionCount ?? 0) - 1),
            reactions: reactions,
            myReaction: isMyReaction ? null : note.myReaction,
          ),
        );
  }

  void addVote(String noteId, PollVoted pollVoted) {
    final note = ref.read(noteNotifierProvider(account, noteId));
    if (note == null) {
      return;
    }
    final poll = note.poll;
    if (poll == null) return;
    final i = ref.read(iNotifierProvider(account)).value;
    final isMyVote = pollVoted.userId == i?.id;
    if (isMyVote && poll.choices[pollVoted.choice].isVoted) {
      return;
    }
    final choices = poll.choices.toList();
    choices[pollVoted.choice] = choices[pollVoted.choice].copyWith(
      votes: choices[pollVoted.choice].votes + 1,
      isVoted: isMyVote,
    );
    ref
        .read(noteNotifierProvider(account, noteId).notifier)
        .updateNote(note.copyWith(poll: poll.copyWith(choices: choices)));
  }

  void updateNote(String noteId, Updated updated) {
    if (updated.note case final note?) {
      add(note);
    } else {
      final note = ref.read(noteNotifierProvider(account, noteId));
      if (note == null) return;
      add(
        note.copyWith(
          text: updated.text,
          cw: updated.cw,
          updatedAt: DateTime.now(),
        ),
      );
    }
  }

  Future<void> react(String noteId, String reaction) async {
    await _misskey.notes.reactions.create(
      NotesReactionsCreateRequest(noteId: noteId, reaction: reaction),
    );
    final emoji = reaction.startsWith(':') && !reaction.endsWith('@.:')
        ? '${reaction.substring(0, reaction.length - 1)}@.:'
        : reaction;
    final cachedNote = ref.read(noteNotifierProvider(account, noteId));
    if (cachedNote != null && cachedNote.myReaction != emoji) {
      add(
        cachedNote.copyWith(
          reactionCount: (cachedNote.reactionCount ?? 0) + 1,
          reactions: {
            ...cachedNote.reactions,
            reaction: (cachedNote.reactions[emoji] ?? 0) + 1,
          },
          myReaction: emoji,
        ),
      );
    }
    final note = await _misskey.notes.show(NotesShowRequest(noteId: noteId));
    if (note.myReaction == null) {
      add(
        note.copyWith(
          reactionCount: (note.reactionCount ?? 0) + 1,
          reactions: {
            ...note.reactions,
            reaction: (note.reactions[emoji] ?? 0) + 1,
          },
          myReaction: emoji,
        ),
      );
    } else {
      add(note);
    }
  }

  Future<void> unreact(String noteId) async {
    await _misskey.notes.reactions.delete(
      NotesReactionsDeleteRequest(noteId: noteId),
    );
    final cachedNote = ref.read(noteNotifierProvider(account, noteId));
    if (cachedNote case Note(:final myReaction?)) {
      final reactions = Map.of(cachedNote.reactions);
      final count = reactions[myReaction] ?? 0;
      if (count <= 1) {
        reactions.remove(myReaction);
      } else {
        reactions[myReaction] = count - 1;
      }
      add(
        cachedNote.copyWith(
          reactionCount: max(0, (cachedNote.reactionCount ?? 0) - 1),
          reactions: reactions,
          myReaction: null,
        ),
      );
    }
    final note = await _misskey.notes.show(NotesShowRequest(noteId: noteId));
    if (note case Note(:final myReaction?)) {
      final reactions = Map.of(note.reactions);
      final count = reactions[myReaction] ?? 0;
      if (count <= 1) {
        reactions.remove(myReaction);
      } else {
        reactions[myReaction] = count - 1;
      }
      add(
        note.copyWith(
          reactionCount: max(0, (note.reactionCount ?? 0) - 1),
          reactions: reactions,
          myReaction: null,
        ),
      );
    } else {
      add(note);
    }
  }

  Future<void> changeReaction(String noteId, String reaction) async {
    await _misskey.notes.reactions.delete(
      NotesReactionsDeleteRequest(noteId: noteId),
    );
    await react(noteId, reaction);
  }

  Future<void> vote(String noteId, int choice) async {
    await _misskey.notes.polls.vote(
      NotesPollsVoteRequest(noteId: noteId, choice: choice),
    );
    final note = await _misskey.notes.show(NotesShowRequest(noteId: noteId));
    if (note.poll case NotePoll(:final choices)) {
      if (!choices[choice].isVoted) {
        add(
          note.copyWith(
            poll: note.poll?.copyWith(
              choices: [
                ...choices.sublist(0, choice),
                choices[choice].copyWith(
                  votes: choices[choice].votes + 1,
                  isVoted: true,
                ),
                ...choices.sublist(choice + 1),
              ],
            ),
          ),
        );
      }
    } else {
      add(note);
    }
  }
}
