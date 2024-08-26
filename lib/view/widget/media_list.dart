import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../model/account.dart';
import '../../model/general_settings.dart';
import '../../provider/general_settings_notifier_provider.dart';
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
        final minAspectRatio = ref.watch(
          generalSettingsNotifierProvider.select(
            (settings) => switch (settings.mediaListWithOneImageAppearance) {
              null => 0.0,
              MediaListWithOneImageAppearance.r16_9 => 16 / 9,
              MediaListWithOneImageAppearance.r1_1 => 1.0,
              MediaListWithOneImageAppearance.r2_3 => 2 / 3,
            },
          ),
        );
        final aspectRatio = max(
          (width != null && height != null) ? width / height : 16 / 9,
          minAspectRatio,
        );
        return ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: double.infinity,
            minHeight: 64.0,
            maxHeight: minAspectRatio > 0.0 ? double.infinity : 360.0,
          ),
          child: AspectRatio(
            aspectRatio: aspectRatio,
            child: MediaCard(
              account: account,
              files: files,
              user: user,
            ),
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
