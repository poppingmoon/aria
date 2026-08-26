import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';

class const FfVisibilityWidget({
  super.key,
  required final FFVisibility? visibility,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(switch (visibility) {
      FFVisibility.public => t.misskey.ffVisibility_.public,
      FFVisibility.followers => t.misskey.ffVisibility_.followers,
      FFVisibility.private => t.misskey.ffVisibility_.private,
      _ => t.misskey.unknown,
    });
  }
}
