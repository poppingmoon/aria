import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../view/dialog/error_message_dialog.dart';

Future<T?> futureWithDialog<T>(
  BuildContext context,
  Future<T>? future, {
  String? message,
}) async {
  unawaited(
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    ),
  );
  try {
    final result = await future;
    if (context.mounted) {
      context.pop();
      if (message != null) {
        if (defaultTargetPlatform
            case TargetPlatform.android || TargetPlatform.iOS) {
          await Fluttertoast.showToast(msg: message);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );
        }
      }
    }
    return result;
  } catch (e, st) {
    if (!context.mounted) return null;
    context.pop();
    await showErrorMessageDialog(
      context,
      error: e,
      stackTrace: st,
    );
    return null;
  }
}
