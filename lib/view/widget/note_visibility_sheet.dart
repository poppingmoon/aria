import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import 'note_visibility_icon.dart';
import 'note_visibility_widget.dart';

class NoteVisibilitySheet extends StatelessWidget {
  const NoteVisibilitySheet({
    super.key,
    this.visibilities = NoteVisibility.values,
  });

  final Iterable<NoteVisibility> visibilities;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text(t.misskey.visibility),
        ),
        const Divider(height: 0.0),
        ...visibilities.map(
          (visibility) => ListTile(
            leading: NoteVisibilityIcon(
              visibility: visibility,
              showPublic: true,
            ),
            title: NoteVisibilityWidget(visibility: visibility),
            subtitle: Text(
              switch (visibility) {
                NoteVisibility.public =>
                  t.misskey.visibility_.publicDescription,
                NoteVisibility.home => t.misskey.visibility_.homeDescription,
                NoteVisibility.followers =>
                  t.misskey.visibility_.followersDescription,
                NoteVisibility.specified =>
                  t.misskey.visibility_.specifiedDescription,
              },
            ),
            onTap: () => context.pop(visibility),
          ),
        ),
      ],
    );
  }
}
