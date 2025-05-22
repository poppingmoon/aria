import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/max_content_width.dart';
import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../util/launch_url.dart';

class AboutMisskeyPage extends ConsumerWidget {
  const AboutMisskeyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.aboutMisskey)),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              width: maxContentWidth,
              child: Card.filled(
                color: Theme.of(context).colorScheme.surface,
                margin: EdgeInsets.zero,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Assets.misskey.packages.frontend.assets.aboutIcon
                            .image(width: 80.0, height: 80.0),
                      ),
                    ),
                    const Text('Misskey'),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              width: maxContentWidth,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Text(t.misskey.aboutMisskey_.about),
                  TextButton(
                    onPressed: () => launchUrl(
                      ref,
                      Uri.https('misskey-hub.net', 'docs/about-misskey'),
                    ),
                    child: Text(t.misskey.learnMore),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                leading: const Icon(Icons.code),
                title: Text(
                  '${t.misskey.aboutMisskey_.source} (${t.misskey.aboutMisskey_.original})',
                ),
                onTap: () => launchUrl(
                  ref,
                  Uri.https('github.com', 'misskey-dev/misskey'),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                leading: const Icon(Icons.translate),
                title: Text(t.misskey.aboutMisskey_.translation),
                onTap: () =>
                    launchUrl(ref, Uri.https('crowdin.com', 'project/misskey')),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                leading: const Icon(Icons.savings),
                title: Text(t.misskey.aboutMisskey_.donate),
                onTap: () =>
                    launchUrl(ref, Uri.https('www.patreon.com', 'syuilo')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
