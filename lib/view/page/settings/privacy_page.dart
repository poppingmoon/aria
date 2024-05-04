import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/account_settings_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/radio_dialog.dart';
import '../../widget/account_settings_scaffold.dart';
import '../../widget/ff_visibility_widget.dart';
import '../../widget/note_visibility_widget.dart';
import '../../widget/reaction_acceptance_widget.dart';

class PrivacyPage extends ConsumerWidget {
  const PrivacyPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(accountSettingsNotifierProvider(account));
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;

    return AccountSettingsScaffold(
      account: account,
      appBar: AppBar(title: Text(t.misskey.privacy)),
      body: ListView(
        children: [
          if (i != null) ...[
            SwitchListTile(
              title: Text(t.misskey.makeFollowManuallyApprove),
              subtitle: Text(t.misskey.lockedAccountInfo),
              value: i.isLocked,
              onChanged: (value) => futureWithDialog(
                context,
                ref
                    .read(iNotifierProvider(account).notifier)
                    .setIsLocked(value),
              ),
            ),
            if (i.isLocked)
              SwitchListTile(
                title: Text(t.misskey.autoAcceptFollowed),
                value: i.autoAcceptFollowed,
                onChanged: (value) => futureWithDialog(
                  context,
                  ref
                      .read(iNotifierProvider(account).notifier)
                      .setAutoAcceptFollowed(value),
                ),
              ),
            SwitchListTile(
              title: Text(t.misskey.makeReactionsPublic),
              subtitle: Text(t.misskey.makeReactionsPublicDescription),
              value: i.publicReactions,
              onChanged: (value) => futureWithDialog(
                context,
                ref
                    .read(iNotifierProvider(account).notifier)
                    .setPublicReactions(value),
              ),
            ),
            ListTile(
              title: Text(t.misskey.followingVisibility),
              subtitle: FfVisibilityWidget(
                // ignore: deprecated_member_use
                visibility: i.followingVisibility ?? i.ffVisibility,
              ),
              trailing: const Icon(Icons.navigate_next),
              onTap: () async {
                final result = await showRadioDialog(
                  context,
                  title: Text(t.misskey.followingVisibility),
                  values: FFVisibility.values,
                  // ignore: deprecated_member_use
                  initialValue: i.followingVisibility ?? i.ffVisibility,
                  itemBuilder: (context, visibility) =>
                      FfVisibilityWidget(visibility: visibility),
                );
                if (!context.mounted) return;
                if (result != null) {
                  await futureWithDialog(
                    context,
                    ref
                        .read(iNotifierProvider(account).notifier)
                        .setFollowingVisibility(result),
                  );
                }
              },
            ),
            ListTile(
              title: Text(t.misskey.followersVisibility),
              subtitle: FfVisibilityWidget(
                // ignore: deprecated_member_use
                visibility: i.followersVisibility ?? i.ffVisibility,
              ),
              trailing: const Icon(Icons.navigate_next),
              onTap: () async {
                final result = await showRadioDialog(
                  context,
                  title: Text(t.misskey.followersVisibility),
                  values: FFVisibility.values,
                  // ignore: deprecated_member_use
                  initialValue: i.followersVisibility ?? i.ffVisibility,
                  itemBuilder: (context, visibility) =>
                      FfVisibilityWidget(visibility: visibility),
                );
                if (!context.mounted) return;
                if (result != null) {
                  await futureWithDialog(
                    context,
                    ref
                        .read(iNotifierProvider(account).notifier)
                        .setFollowersVisibility(result),
                  );
                }
              },
            ),
            SwitchListTile(
              title: Text(t.misskey.hideOnlineStatus),
              subtitle: Text(t.misskey.hideOnlineStatusDescription),
              value: i.hideOnlineStatus,
              onChanged: (value) => futureWithDialog(
                context,
                ref
                    .read(iNotifierProvider(account).notifier)
                    .setHideOnlineStatus(value),
              ),
            ),
            SwitchListTile(
              title: Text(t.misskey.noCrawle),
              subtitle: Text(t.misskey.noCrawleDescription),
              value: i.noCrawle,
              onChanged: (value) => futureWithDialog(
                context,
                ref
                    .read(iNotifierProvider(account).notifier)
                    .setNoCrawle(value),
              ),
            ),
            if (i case MeDetailed(:final preventAiLearning?))
              SwitchListTile(
                title: Text(t.misskey.preventAiLearning),
                subtitle: Text(t.misskey.preventAiLearningDescription),
                value: preventAiLearning,
                onChanged: (value) => futureWithDialog(
                  context,
                  ref
                      .read(iNotifierProvider(account).notifier)
                      .setPreventAiLearning(value),
                ),
              ),
            SwitchListTile(
              title: Text(t.misskey.makeExplorable),
              subtitle: Text(t.misskey.makeExplorableDescription),
              value: i.isExplorable,
              onChanged: (value) => futureWithDialog(
                context,
                ref
                    .read(iNotifierProvider(account).notifier)
                    .setIsExplorable(value),
              ),
            ),
          ],
          SwitchListTile(
            title: Text(t.misskey.keepCw),
            value: settings.keepCw,
            onChanged: (value) => ref
                .read(accountSettingsNotifierProvider(account).notifier)
                .setKeepCw(value),
          ),
          SwitchListTile(
            title: Text(t.misskey.rememberNoteVisibility),
            value: settings.rememberNoteVisibility,
            onChanged: (value) => ref
                .read(accountSettingsNotifierProvider(account).notifier)
                .setRememberNoteVisibility(value),
          ),
          if (!settings.rememberNoteVisibility) ...[
            ListTile(
              title: Text(t.misskey.defaultNoteVisibility),
              subtitle: NoteVisibilityWidget(
                visibility: settings.defaultNoteVisibility,
              ),
              onTap: () async {
                final result = await showRadioDialog(
                  context,
                  title: Text(t.misskey.defaultNoteVisibility),
                  values: NoteVisibility.values,
                  initialValue: settings.defaultNoteVisibility,
                  itemBuilder: (context, visibility) => ListTile(
                    title: NoteVisibilityWidget(visibility: visibility),
                    subtitle: Text(
                      switch (visibility) {
                        NoteVisibility.public =>
                          t.misskey.visibility_.publicDescription,
                        NoteVisibility.home =>
                          t.misskey.visibility_.homeDescription,
                        NoteVisibility.followers =>
                          t.misskey.visibility_.followersDescription,
                        NoteVisibility.specified =>
                          t.misskey.visibility_.specifiedDescription,
                      },
                    ),
                  ),
                );
                if (result != null) {
                  await ref
                      .read(accountSettingsNotifierProvider(account).notifier)
                      .setDefaultNoteVisibility(result);
                }
              },
            ),
            SwitchListTile(
              title: Text(t.misskey.visibility_.disableFederation),
              subtitle: Text(t.misskey.disableFederationConfirmWarn),
              value: settings.defaultNoteLocalOnly,
              onChanged: (value) => ref
                  .read(accountSettingsNotifierProvider(account).notifier)
                  .setDefaultNoteLocalOnly(value),
            ),
          ],
          ListTile(
            title: Text(t.misskey.reactionAcceptance),
            subtitle: ReactionAcceptanceWidget(
              acceptance: settings.reactionAcceptance,
            ),
            trailing: const Icon(Icons.navigate_next),
            onTap: () async {
              final result = await showRadioDialog(
                context,
                title: Text(t.misskey.reactionAcceptance),
                values: [null, ...ReactionAcceptance.values],
                initialValue: settings.reactionAcceptance,
                itemBuilder: (context, acceptance) =>
                    ReactionAcceptanceWidget(acceptance: acceptance),
              );
              if (result != null) {
                await ref
                    .read(accountSettingsNotifierProvider(account).notifier)
                    .setReactionAcceptance(result);
              }
            },
          ),
        ],
      ),
      selectedDestination: AccountSettingsDestination.privacy,
    );
  }
}
