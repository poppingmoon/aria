import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> showToast({BuildContext? context, required String message}) async {
  if (defaultTargetPlatform case TargetPlatform.android || TargetPlatform.iOS) {
    await Fluttertoast.showToast(msg: message);
  } else if (context != null) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
