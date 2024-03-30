import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../model/account.dart';
import 'media_card.dart';

class MediaList extends ConsumerWidget {
  const MediaList({
    super.key,
    required this.account,
    required this.files,
    this.user,
  });

  final Account account;
  final List<DriveFile> files;
  final User? user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (files.length) {
      case 1:
        final file = files.single;
        final width = file.properties.width;
        final height = file.properties.height;
        final aspectRatio = max(
          16 / 9,
          (width != null && height != null) ? width / height : 0.0,
        );
        return AspectRatio(
          aspectRatio: aspectRatio,
          child: MediaCard(
            account: account,
            files: files,
            user: user,
          ),
        );
      default:
        return GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          children: files
              .mapIndexed(
                (index, file) => AspectRatio(
                  aspectRatio: 16 / 9,
                  child: MediaCard(
                    account: account,
                    files: files,
                    index: index,
                    user: user,
                  ),
                ),
              )
              .toList(),
        );
    }
  }
}
