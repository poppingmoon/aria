import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../provider/search_misskey_servers_provider.dart';

class MisskeyServerAutocomplete extends ConsumerWidget {
  const MisskeyServerAutocomplete({
    super.key,
    required this.controller,
    required this.focusNode,
    this.autofocus = false,
    this.onSubmitted,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final bool autofocus;
  final void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Shortcuts(
      shortcuts: disablingTextShortcuts,
      child: RawAutocomplete(
        textEditingController: controller,
        focusNode: focusNode,
        optionsBuilder: (textEditingValue) async {
          final servers = await ref.watch(
            searchMisskeyServersProvider(textEditingValue.text.trim()).future,
          );
          return servers.map((server) => server.url).toList();
        },
        fieldViewBuilder: (context, textEditingController, focusNode, _) =>
            TextField(
          controller: textEditingController,
          focusNode: focusNode,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.dns),
            labelText: t.aria.serverUrl,
            hintText: 'misskey.io',
            prefixText: 'https://',
            suffixIcon: IconButton(
              onPressed: () => controller.clear(),
              icon: const Icon(Icons.close),
            ),
          ),
          autofocus: autofocus,
          onSubmitted: onSubmitted,
          keyboardType: TextInputType.url,
          textInputAction: TextInputAction.done,
        ),
        optionsViewBuilder: (context, onSelected, options) => Align(
          alignment: Alignment.topLeft,
          child: Material(
            elevation: 4.0,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 200.0,
                maxWidth: MediaQuery.sizeOf(context).width - 88.0,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  title: Text(options.elementAt(index)),
                  onTap: () => onSelected(options.elementAt(index)),
                ),
                itemCount: options.length,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
