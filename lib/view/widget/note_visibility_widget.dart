import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';

class const NoteVisibilityWidget({
  super.key,
  required final NoteVisibility visibility,
}) extends StatelessWidget {
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
