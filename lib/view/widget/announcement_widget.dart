import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/colors.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/announcements_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/format_datetime.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/image_dialog.dart';
import 'image_widget.dart';
import 'mfm.dart';

class AnnouncementWidget extends ConsumerWidget {
  const AnnouncementWidget({
    super.key,
    required this.account,
    required this.announcement,
    this.showButton = true,
  });

  final Account account;
  final AnnouncementsResponse announcement;
  final bool showButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final icon = announcement.icon;
    final imageUrl = announcement.imageUrl;
    final theme = Theme.of(context);
    final style = DefaultTextStyle.of(context).style;
    final titleStyle = style
        .apply(fontSizeFactor: 1.5)
        .merge(const TextStyle(fontWeight: FontWeight.bold));
    final showButton =
        this.showButton &&
        !account.isGuest &&
        !announcement.silence &&
        !(announcement.isRead ?? false);
    final colors = ref.watch(misskeyColorsProvider(theme.brightness));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (announcement.forYou ?? false) ...[
            Row(
              children: [
                Icon(Icons.push_pin, size: style.fontSize, color: pinColor),
                const SizedBox(width: 2.0),
                Text(t.misskey.forYou, style: const TextStyle(color: pinColor)),
              ],
            ),
            const SizedBox(height: 8.0),
          ],
          Text.rich(
            TextSpan(
              children: [
                if (showButton) const TextSpan(text: '🆕'),
                if (icon != null)
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(
                        switch (icon) {
                          AnnouncementIconType.info => Icons.info_outline,
                          AnnouncementIconType.error => Icons.error_outline,
                          AnnouncementIconType.warning => Icons.warning_amber,
                          AnnouncementIconType.success => Icons.check,
                        },
                        color: switch (icon) {
                          AnnouncementIconType.info => null,
                          AnnouncementIconType.error => colors.error,
                          AnnouncementIconType.warning => colors.warn,
                          AnnouncementIconType.success => colors.success,
                        },
                      ),
                    ),
                  ),
                TextSpan(text: announcement.title),
              ],
            ),
            style: titleStyle,
          ),
          const SizedBox(height: 8.0),
          Mfm(account: account, text: announcement.text),
          const SizedBox(height: 8.0),
          if (imageUrl != null) ...[
            Center(
              child: InkWell(
                onTap: () => showImageDialog(context, url: imageUrl.toString()),
                child: ImageWidget(url: imageUrl.toString()),
              ),
            ),
            const SizedBox(height: 8.0),
          ],
          DefaultTextStyle(
            style: style.apply(
              fontSizeFactor: 0.9,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
            ),
            child: Text.rich(
              TextSpan(
                text: '${t.misskey.createdAt}: ',
                children: [
                  TextSpan(text: '${absoluteTime(announcement.createdAt)} '),
                  TextSpan(text: '(${relativeTime(announcement.createdAt)})'),
                ],
              ),
            ),
          ),
          if (announcement.updatedAt case final updatedAt?)
            DefaultTextStyle(
              style: style.apply(
                fontSizeFactor: 0.9,
                color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
              ),
              child: Text.rich(
                TextSpan(
                  text: '${t.misskey.updatedAt}: ',
                  children: [
                    TextSpan(text: '${absoluteTime(updatedAt)} '),
                    TextSpan(text: '(${relativeTime(updatedAt)})'),
                  ],
                ),
              ),
            ),
          if (showButton) ...[
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () async {
                if (announcement.needConfirmationToRead ?? false) {
                  final confirmed = await confirm(
                    context,
                    title: Text(t.misskey.announcement_.readConfirmTitle),
                    message: t.misskey.announcement_.readConfirmText(
                      title: announcement.title,
                    ),
                  );
                  if (!confirmed) return;
                }
                await Future.wait([
                  ref
                      .read(announcementsNotifierProvider(account).notifier)
                      .readAnnouncement(announcement.id),
                  ref
                      .read(iNotifierProvider(account).notifier)
                      .readAnnouncement(announcement.id),
                ]);
              },
              child: Text(t.misskey.gotIt),
            ),
          ],
        ],
      ),
    );
  }
}
