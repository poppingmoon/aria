import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';

class NoteVisibilityWidget extends StatelessWidget {
  const NoteVisibilityWidget({super.key, required this.visibility});

  final NoteVisibility visibility;

  @override
  Widget build(BuildContext context) {
    return Text(switch (visibility) {
      NoteVisibility.public => t.misskey.visibility_.public,
      NoteVisibility.home => t.misskey.visibility_.home,
      NoteVisibility.followers => t.misskey.visibility_.followers,
      NoteVisibility.specified => t.misskey.visibility_.specified,
    });
  }
}
