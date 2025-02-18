import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/max_content_width.dart';
import '../../../constant/shortcuts.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/search_channels_notifier_provider.dart';
import '../../widget/channel_preview.dart';
import '../../widget/paginated_list_view.dart';

class ChannelsSearch extends HookConsumerWidget {
  const ChannelsSearch({super.key, required this.account, this.onChannelTap});

  final Account account;
  final void Function(CommunityChannel channel)? onChannelTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final query = useState('');
    final includeDescription = useState(true);
    final channels = ref.watch(
      searchChannelsNotifierProvider(
        account,
        controller.text,
        includeDescription: includeDescription.value,
      ),
    );

    return PaginatedListView(
      header: SliverList.list(
        children: [
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: Shortcuts(
                shortcuts: disablingTextShortcuts,
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                  ),
                  onSubmitted: (value) => query.value = value.trim(),
                  textInputAction: TextInputAction.search,
                  onTapOutside: (_) => primaryFocus?.unfocus(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SegmentedButton(
                segments: [
                  ButtonSegment(
                    value: true,
                    label: Text(t.misskey.channel_.nameAndDescription),
                  ),
                  ButtonSegment(
                    value: false,
                    label: Text(t.misskey.channel_.nameOnly),
                  ),
                ],
                selected: {includeDescription.value},
                onSelectionChanged:
                    (selection) => includeDescription.value = selection.single,
              ),
            ),
          ),
          const SizedBox(height: 4.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ElevatedButton(
                onPressed: () => query.value = controller.text.trim(),
                child: Text(t.misskey.search),
              ),
            ),
          ),
          const SizedBox(height: 4.0),
        ],
      ),
      paginationState: channels,
      itemBuilder:
          (context, channel) => ChannelPreview(
            account: account,
            channel: channel,
            onTap:
                onChannelTap != null ? () => onChannelTap?.call(channel) : null,
          ),
      onRefresh:
          () => ref.refresh(
            searchChannelsNotifierProvider(
              account,
              query.value,
              includeDescription: includeDescription.value,
            ).future,
          ),
      loadMore:
          (skipError) => ref
              .read(
                searchChannelsNotifierProvider(
                  account,
                  query.value,
                  includeDescription: includeDescription.value,
                ).notifier,
              )
              .loadMore(skipError: skipError),
      panel: false,
      noItemsLabel: t.misskey.nothing,
    );
  }
}
