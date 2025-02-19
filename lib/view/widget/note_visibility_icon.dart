import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';

class NoteVisibilityIcon extends StatelessWidget {
  const NoteVisibilityIcon({super.key, required this.visibility});

  final NoteVisibility? visibility;

  @override
  Widget build(BuildContext context) {
    return switch (visibility) {
      NoteVisibility.public => Tooltip(
        message: t.misskey.visibility_.public,
        child: const Icon(Icons.public),
      ),
      NoteVisibility.home => Tooltip(
        message: t.misskey.visibility_.home,
        child: const Icon(Icons.home),
      ),
      NoteVisibility.followers => Tooltip(
        message: t.misskey.visibility_.followers,
        child: const Icon(Icons.lock),
      ),
      NoteVisibility.specified => Tooltip(
        message: t.misskey.visibility_.specified,
        child: const Icon(Icons.mail),
      ),
      _ => Tooltip(
        message: t.misskey.unknown,
        child: const Icon(Icons.question_mark),
      ),
    };
  }
}
