import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/note_channel_info_extension.dart';

class ChannelColorBarBox extends StatelessWidget {
  const ChannelColorBarBox({
    super.key,
    required this.note,
    required this.child,
  });

  final Note? note;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final color = note?.channel?.toColor();

    return DecoratedBox(
      decoration: BoxDecoration(
        border: color != null
            ? BorderDirectional(start: BorderSide(color: color, width: 4.0))
            : null,
      ),
      child: child,
    );
  }
}
