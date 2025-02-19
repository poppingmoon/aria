import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../view/dialog/error_message_dialog.dart';

Future<T?> futureWithDialog<T>(
  BuildContext context,
  Future<T>? future, {
  String? message,
  bool overlay = true,
}) async {
  OverlayEntry? entry;
  if (overlay) {
    entry = OverlayEntry(
      builder:
          (context) => Stack(
            children: [
              ModalBarrier(
                color: Colors.black54,
                onDismiss: () => entry?.remove(),
              ),
              const Center(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ],
          ),
    );
    Overlay.of(context).insert(entry);
  }
  try {
    final result = await future;
    try {
      entry?.remove();
    } catch (_) {}
    if (message != null) {
      if (defaultTargetPlatform
          case TargetPlatform.android || TargetPlatform.iOS) {
        await Fluttertoast.showToast(msg: message);
      } else {
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(message)));
        }
      }
    }
    return result;
  } catch (e, st) {
    try {
      entry?.remove();
    } catch (_) {}
    if (!context.mounted) return null;
    await showErrorMessageDialog(context, error: e, stackTrace: st);
    return null;
  }
}
