import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:material_ui/material_ui.dart';

void showToast({required BuildContext? context, required String message}) {
  if (defaultTargetPlatform case TargetPlatform.android || TargetPlatform.iOS) {
    Fluttertoast.showToast(msg: message).ignore();
  } else if (context != null) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
