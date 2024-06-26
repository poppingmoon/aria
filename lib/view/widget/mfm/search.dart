import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../i18n/strings.g.dart';
import '../url_sheet.dart';

class Search extends HookWidget {
  const Search({
    super.key,
    required this.query,
    this.textScaler,
  });

  final String query;
  final TextScaler? textScaler;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SelectableText(
                  query,
                  textScaler: textScaler,
                ),
              ),
            ),
          ),
          Material(
            color: Colors.black12,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(4.0),
              bottomRight: Radius.circular(4.0),
            ),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () => launchUrl(
                Uri.https('google.com', 'search', {'q': query}),
              ),
              onLongPress: () => showModalBottomSheet<void>(
                context: context,
                builder: (context) => UrlSheet(
                  url: Uri.https('google.com', 'search', {'q': query})
                      .toString(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Icon(Icons.search),
                    Text(
                      t.misskey.searchByGoogle,
                      textScaler: textScaler,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
