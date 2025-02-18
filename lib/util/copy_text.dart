import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../i18n/strings.g.dart';

void copyToClipboard(BuildContext context, String text) {
  Clipboard.setData(ClipboardData(text: text));
  if (defaultTargetPlatform case TargetPlatform.android || TargetPlatform.iOS) {
    Fluttertoast.showToast(msg: t.aria.copied);
  } else {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(t.aria.copied)));
  }
}
