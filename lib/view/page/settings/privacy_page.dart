import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/account_settings_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
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
    final theme = Theme.of(context);
    final colors = ref.watch(misskeyColorsProvider(theme.brightness));

    return AccountSettingsScaffold(
      account: account,
      appBar: AppBar(title: Text(t.misskey.privacy)),
      body: ListView(
        children: [
          if (i != null) ...[
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
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
              ),
            ),
            if (i.isLocked)
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: SwitchListTile(
                    title: Text(t.misskey.autoAcceptFollowed),
                    value: i.autoAcceptFollowed,
                    onChanged: (value) => futureWithDialog(
                      context,
                      ref
                          .read(iNotifierProvider(account).notifier)
                          .setAutoAcceptFollowed(value),
                    ),
                  ),
                ),
              ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
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
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  title: Text(t.misskey.followingVisibility),
                  subtitle: FfVisibilityWidget(
                    visibility: i.followingVisibility ?? i.ffVisibility,
                  ),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showRadioDialog(
                      context,
                      title: Text(t.misskey.followingVisibility),
                      values: FFVisibility.values,
                      initialValue: i.followingVisibility ?? i.ffVisibility,
                      titleBuilder: (context, visibility) =>
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
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  title: Text(t.misskey.followersVisibility),
                  subtitle: FfVisibilityWidget(
                    visibility: i.followersVisibility ?? i.ffVisibility,
                  ),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showRadioDialog(
                      context,
                      title: Text(t.misskey.followersVisibility),
                      values: FFVisibility.values,
                      initialValue: i.followersVisibility ?? i.ffVisibility,
                      titleBuilder: (context, visibility) =>
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
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
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
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
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
              ),
            ),
            if (i case MeDetailed(:final preventAiLearning?))
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: SwitchListTile(
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
                ),
              ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
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
              ),
            ),
          ],
          if (i?.canChat != null) ...[
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(width: maxContentWidth, child: Divider()),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  title: Text(t.misskey.chat_.chatAllowedUsers),
                  subtitle: _ChatScopeWidget(chatScope: i?.chatScope),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showRadioDialog(
                      context,
                      title: Text(t.misskey.chat_.chatAllowedUsers),
                      header: Card.filled(
                        color: colors.infoBg,
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            t.misskey.chat_.chatAllowedUsers_note,
                            style: TextStyle(color: colors.infoFg),
                          ),
                        ),
                      ),
                      values: ChatScope.values,
                      initialValue: i?.chatScope,
                      titleBuilder: (context, chatScope) =>
                          _ChatScopeWidget(chatScope: chatScope),
                    );
                    if (!context.mounted) return;
                    if (result != null) {
                      await futureWithDialog(
                        context,
                        ref
                            .read(iNotifierProvider(account).notifier)
                            .setChatScope(result),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(width: maxContentWidth, child: Divider()),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.misskey.keepCw),
                value: settings.keepCw,
                onChanged: (value) => ref
                    .read(accountSettingsNotifierProvider(account).notifier)
                    .setKeepCw(value),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(t.misskey.rememberNoteVisibility),
                value: settings.rememberNoteVisibility,
                onChanged: (value) => ref
                    .read(accountSettingsNotifierProvider(account).notifier)
                    .setRememberNoteVisibility(value),
              ),
            ),
          ),
          if (!settings.rememberNoteVisibility) ...[
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  title: Text(t.misskey.defaultNoteVisibility),
                  subtitle: NoteVisibilityWidget(
                    visibility: settings.defaultNoteVisibility,
                  ),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showRadioDialog(
                      context,
                      title: Text(t.misskey.defaultNoteVisibility),
                      values: NoteVisibility.values,
                      initialValue: settings.defaultNoteVisibility,
                      titleBuilder: (context, visibility) =>
                          NoteVisibilityWidget(visibility: visibility),
                      subtitleBuilder: (context, visibility) =>
                          _NoteVisibilityDescriptionWidget(
                            visibility: visibility,
                          ),
                    );
                    if (result != null) {
                      await ref
                          .read(
                            accountSettingsNotifierProvider(account).notifier,
                          )
                          .setDefaultNoteVisibility(result);
                    }
                  },
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(t.misskey.visibility_.disableFederation),
                  subtitle: Text(t.misskey.disableFederationConfirmWarn),
                  value: settings.defaultNoteLocalOnly,
                  onChanged: (value) => ref
                      .read(accountSettingsNotifierProvider(account).notifier)
                      .setDefaultNoteLocalOnly(value),
                ),
              ),
            ),
          ],
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: SwitchListTile(
                title: Text(
                  '${t.misskey.rememberNoteVisibility} (${t.misskey.renote})',
                ),
                value: settings.rememberRenoteVisibility,
                onChanged: (value) => ref
                    .read(accountSettingsNotifierProvider(account).notifier)
                    .setRememberRenoteVisibility(value),
              ),
            ),
          ),
          if (!settings.rememberRenoteVisibility) ...[
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  title: Text(
                    '${t.misskey.defaultNoteVisibility} (${t.misskey.renote})',
                  ),
                  subtitle: NoteVisibilityWidget(
                    visibility: settings.defaultRenoteVisibility,
                  ),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showRadioDialog(
                      context,
                      title: Text(
                        '${t.misskey.defaultNoteVisibility} (${t.misskey.renote})',
                      ),
                      values: NoteVisibility.values,
                      initialValue: settings.defaultRenoteVisibility,
                      titleBuilder: (context, visibility) =>
                          NoteVisibilityWidget(visibility: visibility),
                      subtitleBuilder: (context, visibility) =>
                          _NoteVisibilityDescriptionWidget(
                            visibility: visibility,
                          ),
                    );
                    if (result != null) {
                      await ref
                          .read(
                            accountSettingsNotifierProvider(account).notifier,
                          )
                          .setDefaultRenoteVisibility(result);
                    }
                  },
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SwitchListTile(
                  title: Text(
                    '${t.misskey.visibility_.disableFederation} (${t.misskey.renote})',
                  ),
                  subtitle: Text(t.misskey.disableFederationConfirmWarn),
                  value: settings.defaultRenoteLocalOnly,
                  onChanged: (value) => ref
                      .read(accountSettingsNotifierProvider(account).notifier)
                      .setDefaultRenoteLocalOnly(value),
                ),
              ),
            ),
          ],
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                title: Text(t.misskey.reactionAcceptance),
                subtitle: ReactionAcceptanceWidget(
                  acceptance: settings.reactionAcceptance,
                ),
                trailing: const Icon(Icons.navigate_next),
                onTap: () async {
                  final result = await showRadioDialog(
                    context,
                    title: Text(t.misskey.reactionAcceptance),
                    values: [
                      null,
                      ...ReactionAcceptance.values,
                    ].map((value) => (value,)).toList(),
                    initialValue: (settings.reactionAcceptance,),
                    titleBuilder: (context, acceptance) =>
                        ReactionAcceptanceWidget(acceptance: acceptance.$1),
                  );
                  if (result != null) {
                    await ref
                        .read(accountSettingsNotifierProvider(account).notifier)
                        .setReactionAcceptance(result.$1);
                  }
                },
              ),
            ),
          ),
        ],
      ),
      selectedDestination: AccountSettingsDestination.privacy,
    );
  }
}

class _ChatScopeWidget extends StatelessWidget {
  const _ChatScopeWidget({this.chatScope});

  final ChatScope? chatScope;

  @override
  Widget build(BuildContext context) {
    return Text(switch (chatScope) {
      ChatScope.everyone => t.misskey.chat_.chatAllowedUsers_.everyone,
      ChatScope.followers => t.misskey.chat_.chatAllowedUsers_.followers,
      ChatScope.following => t.misskey.chat_.chatAllowedUsers_.following,
      ChatScope.mutual => t.misskey.chat_.chatAllowedUsers_.mutual,
      ChatScope.none => t.misskey.chat_.chatAllowedUsers_.none,
      null => t.misskey.unknown,
    });
  }
}

class _NoteVisibilityDescriptionWidget extends StatelessWidget {
  const _NoteVisibilityDescriptionWidget({required this.visibility});

  final NoteVisibility visibility;

  @override
  Widget build(BuildContext context) {
    return Text(switch (visibility) {
      NoteVisibility.public => t.misskey.visibility_.publicDescription,
      NoteVisibility.home => t.misskey.visibility_.homeDescription,
      NoteVisibility.followers => t.misskey.visibility_.followersDescription,
      NoteVisibility.specified => t.misskey.visibility_.specifiedDescription,
    });
  }
}
