import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/shortcuts.dart';
import '../../../extension/emoji_extension.dart';
import '../../../extension/text_style_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/categorized_emojis_provider.dart';
import '../../../provider/emojis_notifier_provider.dart';
import '../../../provider/search_custom_emojis_provider.dart';
import '../../widget/custom_emoji.dart';

class ServerEmojis extends HookConsumerWidget {
  const ServerEmojis({super.key, required this.host});

  final String host;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(categorizedEmojisProvider(host));
    final controller = useTextEditingController();
    final query = useState('');
    useEffect(
      () {
        controller.addListener(() => query.value = controller.text);
        return;
      },
      [],
    );
    final customEmojis =
        ref.watch(searchCustomEmojisProvider(host, query.value));
    final style = DefaultTextStyle.of(context).style;

    return RefreshIndicator(
      onRefresh: () => ref
          .read(emojisNotifierProvider(host).notifier)
          .reloadEmojis(force: true),
      child: groups.isNotEmpty
          ? ListView.builder(
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Shortcuts(
                          shortcuts: disablingTextShortcuts,
                          child: TextField(
                            controller: controller,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              hintText: t.misskey.search,
                              suffixIcon: IconButton(
                                onPressed: () => controller.clear(),
                                icon: const Icon(Icons.close),
                              ),
                            ),
                            textInputAction: TextInputAction.search,
                            onTapOutside: (_) => primaryFocus?.unfocus(),
                          ),
                        ),
                      ),
                      if (customEmojis.isNotEmpty) ...[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Wrap(
                              spacing: 4.0,
                              runSpacing: 4.0,
                              children: [
                                ...customEmojis.map(
                                  (emoji) => CustomEmoji(
                                    account: Account(host: host),
                                    emoji: emoji.emoji,
                                    onTap: () => context
                                        .push('/$host/emojis/${emoji.name}'),
                                    height: style.lineHeight * 2.0,
                                    fallbackTextStyle:
                                        style.apply(fontSizeFactor: 2.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(),
                      ],
                    ],
                  );
                } else {
                  final e = groups.entries.elementAt(index - 1);
                  return ExpansionTile(
                    title: Text.rich(
                      TextSpan(
                        text: e.key,
                        children: [
                          TextSpan(
                            text: ' (${e.value.length})',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Wrap(
                            spacing: 4.0,
                            runSpacing: 4.0,
                            children: e.value
                                .map(
                                  (emoji) => CustomEmoji(
                                    account: Account(host: host),
                                    emoji: emoji.emoji,
                                    onTap: () => context
                                        .push('/$host/emojis/${emoji.name}'),
                                    height: style.lineHeight * 2.0,
                                    fallbackTextStyle:
                                        style.apply(fontSizeFactor: 2.0),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
              itemCount: groups.length + 1,
            )
          : Center(child: Text(t.misskey.noCustomEmojis)),
    );
  }
}
