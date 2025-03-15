import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../i18n/strings.g.dart';
import 'show_toast.dart';

Future<void> copyToClipboard(BuildContext context, String text) async {
  await Clipboard.setData(ClipboardData(text: text));
  showToast(context: context.mounted ? context : null, message: t.aria.copied);
}
