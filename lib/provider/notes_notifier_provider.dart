import 'dart:math';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import '../model/streaming/note_update_event.dart';
import 'api/i_notifier_provider.dart';
import 'api/misskey_provider.dart';

part 'notes_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class NotesNotifier extends _$NotesNotifier {
  @override
  Map<String, Note?> build(Account account) {
    return {};
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Note? add(Note note) {
    final renote = note.renote;
    if (renote != null) {
      add(renote);
    }
    final reply = note.reply;
    if (reply != null) {
      add(reply);
    }
    final cachedNote = state[note.id];
    state = {
      ...state,
      note.id: note.copyWith(
        reactionCount: note.reactionCount ??
            note.reactions.values
                .fold<int>(0, (acc, reaction) => acc + reaction),
        renote: renote ?? state[note.renoteId],
        reply: reply ?? state[note.replyId],
        poll: note.poll ?? cachedNote?.poll,
      ),
    };
    return cachedNote;
  }

  void addAll(Iterable<Note> notes) {
    for (final note in notes) {
      add(note);
    }
  }

  void remove(String noteId) {
    state = {
      ...state,
      noteId: null,
    };
  }

  void addReaction(String noteId, Reacted reacted) {
    final note = state[noteId];
    if (note == null) {
      return;
    }
    final i = ref.read(iNotifierProvider(account)).valueOrNull;
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
    state = {
      ...state,
      noteId: note.copyWith(
        reactionCount: (note.reactionCount ?? 0) + 1,
        reactions: reactions,
        reactionEmojis: reactionEmojis,
        myReaction: isMyReaction ? reacted.reaction : note.myReaction,
      ),
    };
  }

  void removeReaction(String noteId, Unreacted unreacted) {
    final note = state[noteId];
    if (note == null) {
      return;
    }
    final i = ref.read(iNotifierProvider(account)).valueOrNull;
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
    state = {
      ...state,
      noteId: note.copyWith(
        reactionCount: max(0, (note.reactionCount ?? 0) - 1),
        reactions: reactions,
        myReaction: isMyReaction ? null : note.myReaction,
      ),
    };
  }

  void addVote(String noteId, PollVoted pollVoted) {
    final note = state[noteId];
    if (note == null) {
      return;
    }
    final poll = note.poll;
    if (poll == null) return;
    final i = ref.read(iNotifierProvider(account)).valueOrNull;
    final isMyVote = pollVoted.userId == i?.id;
    if (isMyVote && poll.choices[pollVoted.choice].isVoted) {
      return;
    }
    final choices = poll.choices.toList();
    choices[pollVoted.choice] = choices[pollVoted.choice].copyWith(
      votes: choices[pollVoted.choice].votes + 1,
      isVoted: isMyVote,
    );
    final notes = Map.of(state);
    notes[noteId] = note.copyWith(poll: poll.copyWith(choices: choices));
    state = notes;
  }

  void updateNote(String noteId, Updated updated) {
    final note = state[noteId];
    if (note == null) return;
    final notes = Map.of(state);
    notes[noteId] = note.copyWith(
      text: note.text,
      cw: note.cw,
      updatedAt: DateTime.now(),
    );
    state = notes;
  }

  Future<void> react(String noteId, String reaction) async {
    await _misskey.notes.reactions.create(
      NotesReactionsCreateRequest(
        noteId: noteId,
        reaction: reaction,
      ),
    );
    final note = await _misskey.notes.show(NotesShowRequest(noteId: noteId));
    if (note.myReaction == null) {
      final emoji = reaction.startsWith(':') && !reaction.endsWith('@.:')
          ? '${reaction.substring(0, reaction.length - 1)}@.:'
          : reaction;
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
      NotesPollsVoteRequest(
        noteId: noteId,
        choice: choice,
      ),
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
