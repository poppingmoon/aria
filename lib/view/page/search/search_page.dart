import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kana_kit/kana_kit.dart';

import '../../../constant/shortcuts.dart';
import '../../../extension/string_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/meta_notifier_provider.dart';
import '../../../provider/searched_queries_notifier_provider.dart';
import 'search_notes.dart';
import 'search_users.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({
    super.key,
    required this.account,
    this.userId,
    this.channelId,
  });

  final Account account;
  final String? userId;
  final String? channelId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final meta = ref.watch(metaNotifierProvider(account.host)).valueOrNull;
    final canSearchNotes =
        (i == null && (meta?.policies?.canSearchNotes ?? true)) ||
        (i != null && (i.policies?.canSearchNotes ?? true));
    final queries = ref.watch(searchedQueriesNotifierProvider(account));
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    final text = useState('');
    final query = useState('');
    final options = useState(queries);
    final autoFocus = useState(true);
    final normarizedQueries = useMemoized(() => <String, String>{});
    final normarizeQuery = useCallback(
      (String query) => normarizedQueries.putIfAbsent(
        query,
        () => const KanaKit(
          config: KanaKitConfig(
            passRomaji: true,
            passKanji: true,
            upcaseKatakana: false,
          ),
        ).toKatakana(query.toHankaku().toLowerCase()),
      ),
    );
    final opacityController = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );
    final opacity = CurveTween(
      curve: Curves.easeInOut,
    ).animate(opacityController);
    useEffect(() {
      void controllerCallback() {
        text.value = controller.text;
      }

      void focusNodeCallback() {
        autoFocus.value = false;
        if (focusNode.hasFocus && options.value.isNotEmpty) {
          if (opacityController.value < 1.0) {
            opacityController.animateTo(1.0);
          }
        } else if (opacityController.value > 0.0) {
          opacityController.animateTo(0.0, duration: Duration.zero);
        }
      }

      controller.addListener(controllerCallback);
      focusNode.addListener(focusNodeCallback);
      options.addListener(focusNodeCallback);
      return () {
        controller.removeListener(controllerCallback);
        focusNode.removeListener(focusNodeCallback);
        options.removeListener(focusNodeCallback);
      };
    }, []);
    useEffect(() {
      if (text.value.isEmpty) {
        options.value = queries;
      } else {
        final q = normarizeQuery(text.value);
        options.value = queries
            .where((query) => normarizeQuery(query).contains(q))
            .toList();
      }
      return;
    }, [queries, text.value]);
    final theme = Theme.of(context);
    final materialLocalizations = MaterialLocalizations.of(context);

    return DefaultTabController(
      length: 1 + (canSearchNotes ? 1 : 0),
      child: Scaffold(
        appBar: AppBar(
          title: Shortcuts(
            shortcuts: disablingTextShortcuts,
            child: RawAutocomplete(
              textEditingController: controller,
              focusNode: focusNode,
              optionsBuilder: (_) => [''],
              fieldViewBuilder: (context, controller, focusNode, _) =>
                  SearchBar(
                    controller: controller,
                    focusNode: focusNode,
                    hintText: t.misskey.search,
                    leading: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),
                    trailing: text.value.isNotEmpty
                        ? [
                            IconButton(
                              tooltip: materialLocalizations.clearButtonTooltip,
                              onPressed: () => controller.clear(),
                              icon: const Icon(Icons.close),
                            ),
                          ]
                        : null,
                    onTapOutside: (_) => focusNode.unfocus(),
                    onSubmitted: (value) {
                      final trimmed = value.trim();
                      query.value = trimmed;
                      if (trimmed.isNotEmpty) {
                        ref
                            .read(
                              searchedQueriesNotifierProvider(account).notifier,
                            )
                            .add(trimmed);
                      }
                    },
                    constraints: const BoxConstraints(minHeight: 48.0),
                    elevation: WidgetStateProperty.resolveWith(
                      (states) =>
                          states.contains(WidgetState.focused) ? 4.0 : 0.0,
                    ),
                    shape: WidgetStateProperty.resolveWith(
                      (states) =>
                          (states.contains(WidgetState.focused) ||
                                  autoFocus.value) &&
                              options.value.isNotEmpty
                          ? const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(28.0),
                              ),
                            )
                          : const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(28.0),
                              ),
                            ),
                    ),
                    autoFocus: true,
                  ),
              optionsViewBuilder: (context, _, _) => FadeTransition(
                opacity: opacity,
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Material(
                    elevation: 4.0,
                    color: theme.colorScheme.surfaceContainerHigh,
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(24.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 300.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (options.value.isNotEmpty)
                            Divider(
                              height: 1.0,
                              color: theme.colorScheme.outline,
                            ),
                          Flexible(
                            child: ListView(
                              shrinkWrap: true,
                              children: options.value
                                  .map(
                                    (option) => ListTile(
                                      leading: const Icon(Icons.history),
                                      title: Text(option),
                                      trailing: IconButton(
                                        tooltip: t.misskey.delete,
                                        onPressed: () => ref
                                            .read(
                                              searchedQueriesNotifierProvider(
                                                account,
                                              ).notifier,
                                            )
                                            .delete(option),
                                        icon: const Icon(Icons.close),
                                      ),
                                      onTap: () {
                                        controller.text = '$option ';
                                        focusNode.unfocus();
                                        query.value = option;
                                        ref
                                            .read(
                                              searchedQueriesNotifierProvider(
                                                account,
                                              ).notifier,
                                            )
                                            .add(option);
                                      },
                                      contentPadding:
                                          const EdgeInsetsDirectional.only(
                                            start: 16.0,
                                            end: 8.0,
                                          ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          bottom: TabBar(
            tabs: [
              if (canSearchNotes) Tab(text: t.misskey.notes),
              Tab(text: t.misskey.users),
            ],
          ),
          titleSpacing: 8.0,
        ),
        body: TabBarView(
          children: [
            if (canSearchNotes)
              SearchNotes(
                account: account,
                query: query.value,
                userId: userId,
                channelId: channelId,
              ),
            SearchUsers(account: account, query: query.value),
          ],
        ),
      ),
    );
  }
}
