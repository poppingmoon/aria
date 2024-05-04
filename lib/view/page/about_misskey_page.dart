import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';

class AboutMisskeyPage extends ConsumerWidget {
  const AboutMisskeyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.aboutMisskey)),
      body: Center(
        child: SizedBox(
          width: 800.0,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Assets.misskey.packages.frontend.assets.aboutIcon
                          .image(width: 80.0, height: 80.0),
                    ),
                    const Text('Misskey'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(t.misskey.aboutMisskey_.about),
                    TextButton(
                      onPressed: () => launchUrl(
                        Uri.https('misskey-hub.net', 'docs/about-misskey'),
                        mode: LaunchMode.externalApplication,
                      ),
                      child: Text(t.misskey.learnMore),
                    ),
                  ],
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.code),
                title: Text(
                  '${t.misskey.aboutMisskey_.source} (${t.misskey.aboutMisskey_.original})',
                ),
                onTap: () => launchUrl(
                  Uri.https('github.com', 'misskey-dev/misskey'),
                  mode: LaunchMode.externalApplication,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.translate),
                title: Text(t.misskey.aboutMisskey_.translation),
                onTap: () => launchUrl(
                  Uri.https('crowdin.com', 'project/misskey'),
                  mode: LaunchMode.externalApplication,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.savings),
                title: Text(t.misskey.aboutMisskey_.donate),
                onTap: () => launchUrl(
                  Uri.https('www.patreon.com', 'syuilo'),
                  mode: LaunchMode.externalApplication,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
