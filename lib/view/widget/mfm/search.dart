import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../i18n/strings.g.dart';

class Search extends HookWidget {
  const Search({super.key, required this.query});

  final String query;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: query);

    return TextFormField(
      controller: controller,
      readOnly: true,
      decoration: InputDecoration(
        suffix: ElevatedButton(
          onPressed: () => launchUrl(
            Uri.https('google.com', 'search', {'q': query}),
          ),
          child: Text(t.misskey.searchByGoogle),
        ),
      ),
    );
  }
}
