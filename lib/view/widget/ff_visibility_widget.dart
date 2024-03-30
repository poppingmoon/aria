import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';

class FfVisibilityWidget extends StatelessWidget {
  const FfVisibilityWidget({super.key, required this.visibility});

  final FFVisibility? visibility;

  @override
  Widget build(BuildContext context) {
    return Text(
      switch (visibility) {
        FFVisibility.public => t.misskey.ffVisibility_.public,
        FFVisibility.followers => t.misskey.ffVisibility_.followers,
        FFVisibility.private => t.misskey.ffVisibility_.private,
        _ => t.misskey.unknown,
      },
    );
  }
}
