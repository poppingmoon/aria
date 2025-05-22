import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/max_content_width.dart';
import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../provider/search_misskey_servers_provider.dart';
import '../../util/punycode.dart';

class MisskeyServerAutocomplete extends HookConsumerWidget {
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
    final textFieldKey = useMemoized(() => GlobalKey());

    return TextFieldTapRegion(
      onTapOutside: (_) => focusNode.unfocus(),
      child: Shortcuts(
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
                key: textFieldKey,
                controller: textEditingController,
                focusNode: focusNode,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.dns),
                  labelText: t.aria.serverUrl,
                  hintText: 'misskey.io',
                  prefixText:
                      textEditingController.value.text.startsWith(
                        RegExp('https?://'),
                      )
                      ? null
                      : 'https://',
                  suffixIcon: IconButton(
                    onPressed: () => controller.clear(),
                    icon: const Icon(Icons.close),
                  ),
                ),
                autofocus: autofocus,
                onSubmitted: onSubmitted,
                keyboardType: TextInputType.url,
                textInputAction: TextInputAction.done,
                contextMenuBuilder: (context, editableTextState) =>
                    AdaptiveTextSelectionToolbar.editable(
                      clipboardStatus: ClipboardStatus.pasteable,
                      onCopy: editableTextState.copyEnabled
                          ? () => editableTextState.copySelection(
                              SelectionChangedCause.toolbar,
                            )
                          : null,
                      onCut: editableTextState.cutEnabled
                          ? () => editableTextState.cutSelection(
                              SelectionChangedCause.toolbar,
                            )
                          : null,
                      onPaste: editableTextState.pasteEnabled
                          ? () async {
                              final data = await Clipboard.getData(
                                Clipboard.kTextPlain,
                              );
                              if (data case ClipboardData(:final text?)) {
                                final trimmed = text.trim();
                                final match = RegExp(
                                  '^(https?://)?([^/]*)',
                                  caseSensitive: false,
                                ).firstMatch(trimmed);
                                final scheme = match?[1];
                                final host = match?[2] ?? trimmed;
                                await Clipboard.setData(
                                  ClipboardData(
                                    text: [
                                      if (scheme case final scheme?
                                          when scheme.toLowerCase() !=
                                              'https://')
                                        scheme,
                                      toAscii(host).toLowerCase(),
                                    ].join(),
                                  ),
                                );
                                await editableTextState.pasteText(
                                  SelectionChangedCause.toolbar,
                                );
                              }
                            }
                          : null,
                      onSelectAll: editableTextState.selectAllEnabled
                          ? () => editableTextState.selectAll(
                              SelectionChangedCause.toolbar,
                            )
                          : null,
                      onLookUp: editableTextState.lookUpEnabled
                          ? () => editableTextState.lookUpSelection(
                              SelectionChangedCause.toolbar,
                            )
                          : null,
                      onSearchWeb: editableTextState.searchWebEnabled
                          ? () => editableTextState.searchWebForSelection(
                              SelectionChangedCause.toolbar,
                            )
                          : null,
                      onShare: editableTextState.shareEnabled
                          ? () => editableTextState.shareSelection(
                              SelectionChangedCause.toolbar,
                            )
                          : null,
                      onLiveTextInput: null,
                      anchors: editableTextState.contextMenuAnchors,
                    ),
              ),
          optionsViewBuilder: (context, onSelected, options) => Align(
            alignment: AlignmentDirectional.topStart,
            child: Material(
              elevation: 4.0,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 200.0,
                  maxWidth:
                      (textFieldKey.currentContext?.findRenderObject()
                              as RenderBox?)
                          ?.size
                          .width ??
                      min(MediaQuery.sizeOf(context).width, maxContentWidth) -
                          64.0,
                ),
                // Use `CustomScrollView` instead of `ListView` because
                // `ListView` shows white space on top of the options
                // for mobile devices.
                child: CustomScrollView(
                  slivers: [
                    SliverList.builder(
                      itemBuilder: (context, index) => ListTile(
                        title: Text(options.elementAt(index)),
                        onTap: () => onSelected(options.elementAt(index)),
                      ),
                      itemCount: options.length,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
