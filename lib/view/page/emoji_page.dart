import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/max_content_width.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/emoji_response_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/copy_text.dart';
import '../../util/launch_url.dart';
import '../dialog/image_dialog.dart';
import '../widget/error_message.dart';
import '../widget/image_widget.dart';
import '../widget/key_value_widget.dart';
import '../widget/mfm.dart';
import '../widget/url_widget.dart';

class EmojiPage extends ConsumerWidget {
  const EmojiPage({
    super.key,
    required this.account,
    required this.name,
    this.confirm = false,
  });

  final Account account;
  final String name;
  final bool confirm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emoji = ref.watch(emojiResponseProvider(account, name));
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: RefreshIndicator(
        onRefresh: () =>
            ref.refresh(emojiResponseProvider(account, name).future),
        child: switch (emoji) {
          AsyncValue(valueOrNull: final emoji?) => ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              const SizedBox(height: 8.0),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: colors.panel,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: Material(
                    color: colors.panel,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () => showImageDialog(
                            context,
                            url: emoji.url.toString(),
                          ),
                          child: ImageWidget(url: emoji.url.toString()),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: Material(
                    color: colors.panel,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: KeyValueWidget(label: t.misskey.name, text: name),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: Material(
                    color: colors.panel,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: KeyValueWidget(
                        label: t.misskey.tags,
                        child: emoji.aliases.isNotEmpty
                            ? Wrap(
                                spacing: 4.0,
                                runSpacing: 4.0,
                                children: emoji.aliases
                                    .map(
                                      (alias) => ActionChip(
                                        label: Text(alias),
                                        onPressed: () =>
                                            copyToClipboard(context, alias),
                                        shape: StadiumBorder(
                                          side: BorderSide(
                                            color: colors.divider,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              )
                            : Text(t.misskey.none),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: Material(
                    color: colors.panel,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: KeyValueWidget(
                        label: t.misskey.category,
                        text: emoji.category,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: Material(
                    color: colors.panel,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: KeyValueWidget(
                        label: t.misskey.sensitive,
                        text: emoji.isSensitive ? t.misskey.yes : t.misskey.no,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: Material(
                    color: colors.panel,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: KeyValueWidget(
                        label: t.misskey.localOnly,
                        text: emoji.localOnly ? t.misskey.yes : t.misskey.no,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: Material(
                    color: colors.panel,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: KeyValueWidget(
                        label: t.misskey.license,
                        child: emoji.license != null
                            ? InkWell(
                                onLongPress: () =>
                                    copyToClipboard(context, emoji.license!),
                                child: Mfm(
                                  account: account,
                                  text: emoji.license,
                                ),
                              )
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: Material(
                    color: colors.panel,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: KeyValueWidget(
                        label: t.misskey.emojiUrl,
                        child: UrlWidget(
                          url: emoji.url.toString(),
                          onTap: () => launchUrl(ref, emoji.url!),
                          style: TextStyle(color: colors.link),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: colors.panel,
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(8.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
            ],
          ),
          AsyncValue(:final error?, :final stackTrace) => ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: ErrorMessage(error: error, stackTrace: stackTrace),
                ),
              ),
            ],
          ),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
      floatingActionButton: confirm
          ? FloatingActionButton.extended(
              onPressed: () => context.pop(true),
              icon: const Icon(Icons.check),
              label: Text(t.aria.useThisEmoji),
            )
          : null,
    );
  }
}
