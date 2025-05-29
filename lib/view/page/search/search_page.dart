import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/shortcuts.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/meta_notifier_provider.dart';
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
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    final text = useState('');
    final query = useState('');
    useEffect(() {
      void controllerCallback() {
        text.value = controller.text;
      }

      controller.addListener(controllerCallback);
      return () {
        controller.removeListener(controllerCallback);
      };
    }, []);
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
              optionsBuilder: (_) => <String>[],
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
                    },
                    constraints: const BoxConstraints(minHeight: 48.0),
                    elevation: WidgetStateProperty.resolveWith(
                      (states) =>
                          states.contains(WidgetState.focused) ? 4.0 : 0.0,
                    ),
                    shape: const WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(28.0)),
                      ),
                    ),
                    autoFocus: true,
                  ),
              optionsViewBuilder: (context, _, _) => const SizedBox.shrink(),
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
