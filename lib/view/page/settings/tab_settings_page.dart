import 'package:collection/collection.dart';
import 'package:flutter/material.dart' hide ImageIcon;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../extension/user_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/tab_icon.dart';
import '../../../model/tab_settings.dart';
import '../../../model/tab_type.dart';
import '../../../provider/accounts_notifier_provider.dart';
import '../../../provider/api/antenna_provider.dart';
import '../../../provider/api/antennas_notifier_provider.dart';
import '../../../provider/api/channel_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/list_provider.dart';
import '../../../provider/api/lists_notifier_provider.dart';
import '../../../provider/api/meta_notifier_provider.dart';
import '../../../provider/api/role_provider.dart';
import '../../../provider/api/roles_provider.dart';
import '../../../provider/api/user_notifier_provider.dart';
import '../../../provider/timeline_tabs_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/account_select_dialog.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../dialog/icon_select_dialog.dart';
import '../../dialog/message_dialog.dart';
import '../../dialog/radio_dialog.dart';
import '../../dialog/text_field_dialog.dart';
import '../../dialog/user_select_dialog.dart';
import '../../widget/tab_icon_widget.dart';
import '../../widget/tab_type_widget.dart';
import '../../widget/username_widget.dart';
import '../channel/channels_page.dart';

class TabSettingsPage extends HookConsumerWidget {
  const TabSettingsPage({super.key, this.tabId});

  final String? tabId;

  Future<RolesListResponse?> _selectRole(
    WidgetRef ref,
    Account account,
    RolesListResponse? role,
  ) async {
    final roles = await futureWithDialog(
      ref.context,
      ref.read(rolesProvider(account).future),
    );
    if (!ref.context.mounted || roles == null) {
      return null;
    }
    return showRadioDialog(
      ref.context,
      title: Text(t.misskey.role),
      values: roles,
      initialValue: role,
      itemBuilder: (context, role) => Text(role.name),
    );
  }

  Future<UsersList?> _selectList(
    WidgetRef ref,
    Account account,
    UsersList? list,
  ) async {
    final lists = await futureWithDialog(
      ref.context,
      ref.read(listsNotifierProvider(account).future),
    );
    if (!ref.context.mounted || lists == null) {
      return null;
    }
    return showRadioDialog(
      ref.context,
      title: Text(t.misskey.selectList),
      values: lists,
      initialValue: list != null ? UsersList.fromJson(list.toJson()) : null,
      itemBuilder: (context, list) => Text(list.name ?? ''),
    );
  }

  Future<Antenna?> _selectAntenna(
    WidgetRef ref,
    Account account,
    Antenna? antenna,
  ) async {
    final antennas = await futureWithDialog(
      ref.context,
      ref.read(antennasNotifierProvider(account).future),
    );
    if (!ref.context.mounted || antennas == null) {
      return null;
    }
    return showRadioDialog(
      ref.context,
      title: Text(t.misskey.selectAntenna),
      values: antennas,
      initialValue: antenna,
      itemBuilder: (context, antenna) => Text(antenna.name),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialTabSettings = tabId != null
        ? ref.watch(
            timelineTabsNotifierProvider.select(
              (tabs) => tabs.firstWhereOrNull((tab) => tab.id == tabId),
            ),
          )
        : null;
    final tabSettings = useState(initialTabSettings ?? TabSettings.dummy());
    final account = useState(
      initialTabSettings?.account ??
          ref.watch(
            accountsNotifierProvider.select((accounts) => accounts.firstOrNull),
          ),
    );
    final tabType = tabSettings.value.tabType;
    final roleId = tabSettings.value.roleId;
    final role = roleId != null && account.value != null
        ? ref.watch(roleProvider(account.value!, roleId)).valueOrNull
        : null;
    final channelId = tabSettings.value.channelId;
    final channel = channelId != null && account.value != null
        ? ref
            .watch(
              channelNotifierProvider(account.value!, channelId),
            )
            .valueOrNull
        : null;
    final listId = tabSettings.value.listId;
    final list = listId != null && account.value != null
        ? ref.watch(listProvider(account.value!, listId)).valueOrNull
        : null;
    final antennaId = tabSettings.value.antennaId;
    final antenna = antennaId != null && account.value != null
        ? ref.watch(antennaProvider(account.value!, antennaId)).valueOrNull
        : null;
    final userId = tabSettings.value.userId;
    final user = userId != null && account.value != null
        ? ref
            .watch(userNotifierProvider(account.value!, userId: userId))
            .valueOrNull
        : null;
    final canSave = account.value != null &&
        switch (tabType) {
          TabType.roleTimeline => roleId != null,
          TabType.userList => listId != null,
          TabType.antenna => antennaId != null,
          TabType.channel => channelId != null,
          TabType.user => userId != null,
          _ => true,
        };

    return PopScope(
      canPop: (initialTabSettings ?? TabSettings.dummy()) == tabSettings.value,
      onPopInvoked: (didPop) async {
        if (!didPop) {
          final confirmed =
              await confirm(context, message: t.aria.discardChangesConfirm);
          if (!context.mounted) return;
          if (confirmed) {
            context.pop();
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.aria.tabs),
          actions: [
            if (initialTabSettings != null)
              PopupMenuButton<void>(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    onTap: () async {
                      final confirmed = await confirm(
                        context,
                        message: t.aria.deleteTabConfirm,
                      );
                      if (confirmed) {
                        await ref
                            .read(timelineTabsNotifierProvider.notifier)
                            .delete(initialTabSettings.id!);
                        if (!context.mounted) return;
                        context.pop();
                      }
                    },
                    child: Text(
                      t.misskey.delete,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
        body: Center(
          child: SizedBox(
            width: 800.0,
            child: ListView(
              children: [
                ListTile(
                  title: Text(t.misskey.account),
                  subtitle: account.value != null
                      ? Text(account.value.toString())
                      : Text(
                          t.misskey.pleaseSelect,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showDialog<Account>(
                      context: context,
                      builder: (context) => AccountSelectDialog(
                        initialAccount: account.value,
                      ),
                    );
                    if (!context.mounted) return;
                    if (result != null) {
                      if (account.value != result) {
                        tabSettings.value = tabSettings.value.copyWith(
                          listId: null,
                          antennaId: null,
                        );
                        if (account.value?.host != result.host) {
                          tabSettings.value = tabSettings.value.copyWith(
                            roleId: null,
                            channelId: null,
                            userId: null,
                          );
                        }
                        account.value = result;
                        if (result.isGuest) {
                          if (tabType
                              case TabType.homeTimeline ||
                                  TabType.hybridTimeline ||
                                  TabType.roleTimeline ||
                                  TabType.userList ||
                                  TabType.antenna ||
                                  TabType.mention ||
                                  TabType.direct) {
                            tabSettings.value = tabSettings.value
                                .copyWith(tabType: TabType.localTimeline);
                          }
                          if (tabSettings.value.icon == null) {
                            final meta = await futureWithDialog(
                              context,
                              ref.read(
                                metaNotifierProvider(result.host).future,
                              ),
                            );
                            if (meta case MetaResponse(:final iconUrl?)) {
                              tabSettings.value = tabSettings.value.copyWith(
                                icon: ImageIcon(url: iconUrl.toString()),
                              );
                            }
                          }
                        }
                      }
                    }
                  },
                ),
                ListTile(
                  title: Text(t.aria.tabType),
                  subtitle: TabTypeWidget(tabType: tabType),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final i = account.value != null
                        ? await futureWithDialog(
                            context,
                            ref.read(iNotifierProvider(account.value!).future),
                          )
                        : null;
                    if (!context.mounted) return;
                    final meta = account.value != null
                        ? await futureWithDialog(
                            context,
                            ref.read(
                              metaNotifierProvider(account.value!.host).future,
                            ),
                          )
                        : null;
                    if (!context.mounted) return;
                    final result = await showRadioDialog(
                      context,
                      title: Text(t.aria.tabType),
                      values: TabType.values.where(
                        (tabType) => switch (tabType) {
                          TabType.homeTimeline ||
                          TabType.roleTimeline ||
                          TabType.userList ||
                          TabType.antenna ||
                          TabType.mention ||
                          TabType.direct ||
                          TabType.notifications =>
                            !(account.value?.isGuest ?? true),
                          TabType.localTimeline =>
                            account.value?.isGuest ?? true
                                ? meta?.policies?.ltlAvailable ?? true
                                : i?.policies?.ltlAvailable ?? true,
                          TabType.hybridTimeline =>
                            !(account.value?.isGuest ?? true) &&
                                (i?.policies?.ltlAvailable ?? true),
                          TabType.globalTimeline =>
                            account.value?.isGuest ?? true
                                ? meta?.policies?.gtlAvailable ?? true
                                : i?.policies?.gtlAvailable ?? true,
                          TabType.channel ||
                          TabType.user ||
                          TabType.custom =>
                            true,
                        },
                      ),
                      initialValue: tabType,
                      itemBuilder: (context, value) =>
                          TabTypeWidget(tabType: value),
                    );
                    if (!ref.context.mounted) return;
                    if (result != null) {
                      tabSettings.value =
                          tabSettings.value.copyWith(tabType: result);
                      if (account case ValueNotifier(value: final account?)) {
                        switch (result) {
                          case TabType.roleTimeline:
                            final result =
                                await _selectRole(ref, account, role);
                            if (result != null) {
                              tabSettings.value = tabSettings.value.copyWith(
                                roleId: result.id,
                                name: tabSettings.value.name ?? result.name,
                              );
                            }
                          case TabType.userList:
                            final result = await _selectList(
                              ref,
                              account,
                              list != null
                                  ? UsersList.fromJson(list.toJson())
                                  : null,
                            );
                            if (result != null) {
                              tabSettings.value = tabSettings.value.copyWith(
                                listId: result.id,
                                name: tabSettings.value.name ?? result.name,
                              );
                            }
                          case TabType.antenna:
                            final result =
                                await _selectAntenna(ref, account, antenna);
                            if (result != null) {
                              tabSettings.value = tabSettings.value.copyWith(
                                antennaId: result.id,
                                name: tabSettings.value.name ?? result.name,
                              );
                            }
                          case TabType.channel:
                            final result = await showDialog<CommunityChannel>(
                              context: context,
                              builder: (context) => ChannelsPage(
                                account: account,
                                onChannelTap: (channel) => context.pop(channel),
                                initialIndex: account.isGuest ? 1 : 2,
                              ),
                            );
                            if (result != null) {
                              tabSettings.value = tabSettings.value.copyWith(
                                channelId: result.id,
                                name: tabSettings.value.name ?? result.name,
                              );
                            }
                          case TabType.user:
                            final result = await selectUser(
                              context,
                              account,
                              includeSelf: true,
                            );
                            if (result != null) {
                              tabSettings.value = tabSettings.value.copyWith(
                                userId: result.id,
                                name: tabSettings.value.name ?? result.acct,
                                icon: tabSettings.value.icon ??
                                    (result.avatarUrl != null
                                        ? ImageIcon(
                                            url: result.avatarUrl.toString(),
                                          )
                                        : null),
                              );
                            }
                          default:
                        }
                      }
                    }
                  },
                ),
                if (tabType == TabType.roleTimeline)
                  ListTile(
                    title: Text(t.misskey.role),
                    subtitle: roleId != null
                        ? Text(role?.name ?? '')
                        : Text(
                            t.misskey.pleaseSelect,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () async {
                      if (account case ValueNotifier(value: final account?)) {
                        final result = await _selectRole(ref, account, role);
                        if (result != null) {
                          tabSettings.value = tabSettings.value.copyWith(
                            roleId: result.id,
                            name: tabSettings.value.name ?? result.name,
                          );
                        }
                      }
                    },
                  )
                else if (tabType == TabType.userList)
                  ListTile(
                    title: Text(t.misskey.userList),
                    subtitle: listId != null
                        ? Text(list?.name ?? '')
                        : Text(
                            t.misskey.pleaseSelect,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () async {
                      if (account case ValueNotifier(value: final account?)) {
                        final result = await _selectList(
                          ref,
                          account,
                          list != null
                              ? UsersList.fromJson(list.toJson())
                              : null,
                        );
                        if (result != null) {
                          tabSettings.value = tabSettings.value.copyWith(
                            listId: result.id,
                            name: tabSettings.value.name ?? result.name,
                          );
                        }
                      }
                    },
                  )
                else if (tabType == TabType.antenna)
                  ListTile(
                    title: Text(t.misskey.antennas),
                    subtitle: antennaId != null
                        ? Text(antenna?.name ?? '')
                        : Text(
                            t.misskey.pleaseSelect,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () async {
                      if (account case ValueNotifier(value: final account?)) {
                        final result =
                            await _selectAntenna(ref, account, antenna);
                        if (result != null) {
                          tabSettings.value = tabSettings.value.copyWith(
                            antennaId: result.id,
                            name: tabSettings.value.name ?? result.name,
                          );
                        }
                      }
                    },
                  )
                else if (tabType == TabType.channel)
                  ListTile(
                    title: Text(t.misskey.channel),
                    subtitle: tabSettings.value.channelId != null
                        ? Text(channel?.name ?? '')
                        : Text(
                            t.misskey.pleaseSelect,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () async {
                      if (account case ValueNotifier(value: final account?)) {
                        final result = await showDialog<CommunityChannel>(
                          context: context,
                          builder: (context) => ChannelsPage(
                            account: account,
                            onChannelTap: (channel) => context.pop(channel),
                            initialIndex: account.isGuest ? 1 : 2,
                          ),
                        );
                        if (result != null) {
                          tabSettings.value = tabSettings.value.copyWith(
                            channelId: result.id,
                            name: tabSettings.value.name ?? result.name,
                          );
                        }
                      }
                    },
                  )
                else if (tabType == TabType.user)
                  ListTile(
                    title: Text(t.misskey.user),
                    subtitle: user != null && account.value != null
                        ? UsernameWidget(account: account.value!, user: user)
                        : Text(
                            userId != null ? '' : t.misskey.pleaseSelect,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () async {
                      if (account case ValueNotifier(value: final account?)) {
                        final result = await selectUser(context, account);
                        if (result != null) {
                          tabSettings.value = tabSettings.value.copyWith(
                            userId: result.id,
                            name: tabSettings.value.name ?? result.acct,
                            icon: tabSettings.value.icon ??
                                (result.avatarUrl != null
                                    ? ImageIcon(
                                        url: result.avatarUrl.toString(),
                                      )
                                    : null),
                          );
                        }
                      }
                    },
                  )
                else if (tabType == TabType.custom) ...[
                  ListTile(
                    title: Text(t.aria.endpoint),
                    subtitle: Text(
                      tabSettings.value.endpoint != null
                          ? tabSettings.value.endpoint!
                          : t.misskey.notSet,
                    ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () async {
                      final result = await showTextFieldDialog(
                        context,
                        title: Text(t.aria.endpoint),
                        initialText: tabSettings.value.endpoint,
                        decoration:
                            const InputDecoration(hintText: 'notes/timeline'),
                      );
                      if (result != null) {
                        if (!context.mounted) return;
                        if (RegExp(r'^[\w\/\-]{0,50}$').hasMatch(result)) {
                          tabSettings.value = tabSettings.value.copyWith(
                            endpoint: result.isNotEmpty ? result : null,
                          );
                        } else {
                          await showMessageDialog(
                            context,
                            t.misskey.invalidValue,
                          );
                        }
                      }
                    },
                  ),
                  ListTile(
                    title: Text(t.aria.streamingChannel),
                    subtitle: Text(
                      tabSettings.value.streamingChannel != null
                          ? tabSettings.value.streamingChannel!
                          : t.misskey.notSet,
                    ),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () async {
                      final result = await showTextFieldDialog(
                        context,
                        title: Text(t.aria.streamingChannel),
                        initialText: tabSettings.value.streamingChannel,
                        decoration:
                            const InputDecoration(hintText: 'homeTimeline'),
                      );
                      if (result != null) {
                        if (!context.mounted) return;
                        if (RegExp(r'^\w{0,50}$').hasMatch(result)) {
                          tabSettings.value = tabSettings.value.copyWith(
                            streamingChannel: result.isNotEmpty ? result : null,
                          );
                        } else {
                          await showMessageDialog(
                            context,
                            t.misskey.invalidValue,
                          );
                        }
                      }
                    },
                  ),
                ],
                ListTile(
                  title: Text(t.aria.tabName),
                  subtitle: Text(
                    tabSettings.value.name != null
                        ? tabSettings.value.name!
                        : t.misskey.notSet,
                  ),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showTextFieldDialog(
                      context,
                      title: Text(t.aria.tabName),
                      initialText: tabSettings.value.name,
                    );
                    if (result != null) {
                      tabSettings.value = tabSettings.value
                          .copyWith(name: result.isNotEmpty ? result : null);
                    }
                  },
                ),
                ListTile(
                  title: Text(t.misskey.icon),
                  subtitle: tabSettings.value.icon != null
                      ? null
                      : Text(t.misskey.notSet),
                  trailing: tabSettings.value.icon != null
                      ? TabIconWidget(tabSettings: tabSettings.value)
                      : const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showDialog<TabIcon>(
                      context: context,
                      builder: (context) =>
                          IconSelectDialog(account: account.value),
                    );
                    if (result != null) {
                      tabSettings.value =
                          tabSettings.value.copyWith(icon: result);
                    }
                  },
                ),
                if (tabType != TabType.notifications) ...[
                  if (tabType != TabType.user)
                    SwitchListTile(
                      title: Text(t.misskey.disableStreamingTimeline),
                      value: tabSettings.value.disableStreaming,
                      onChanged: (value) => tabSettings.value =
                          tabSettings.value.copyWith(disableStreaming: value),
                    ),
                  SwitchListTile(
                    title: Text(t.aria.disableSubscribingNotes),
                    value: tabSettings.value.disableSubscribing,
                    onChanged: (value) => tabSettings.value =
                        tabSettings.value.copyWith(disableSubscribing: value),
                  ),
                  if (tabType
                      case TabType.localTimeline || TabType.hybridTimeline)
                    SwitchListTile(
                      title: Text(t.misskey.showRepliesToOthersInTimeline),
                      value: tabSettings.value.withReplies,
                      onChanged: (value) => tabSettings.value =
                          tabSettings.value.copyWith(withReplies: value),
                    ),
                  SwitchListTile(
                    title: Text(t.misskey.showRenotes),
                    value: tabSettings.value.withRenotes,
                    onChanged: (value) => tabSettings.value =
                        tabSettings.value.copyWith(withRenotes: value),
                  ),
                  SwitchListTile(
                    title: Text(t.aria.showSelfRenotes),
                    value: tabSettings.value.withSelfRenotes,
                    onChanged: (value) => tabSettings.value =
                        tabSettings.value.copyWith(withSelfRenotes: value),
                  ),
                  SwitchListTile(
                    title: Text(t.misskey.fileAttachedOnly),
                    value: tabSettings.value.withFiles,
                    onChanged: (value) => tabSettings.value =
                        tabSettings.value.copyWith(withFiles: value),
                  ),
                  SwitchListTile(
                    title: Text(t.misskey.withSensitive),
                    value: tabSettings.value.withSensitive,
                    onChanged: (value) => tabSettings.value =
                        tabSettings.value.copyWith(withSensitive: value),
                  ),
                ],
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Theme.of(context)
              .colorScheme
              .primary
              .withOpacity(canSave ? 1.0 : 0.5),
          elevation: canSave ? 6.0 : 0.0,
          onPressed: canSave
              ? () async {
                  if (account case ValueNotifier(value: final account?)) {
                    if (initialTabSettings == null) {
                      await ref.read(timelineTabsNotifierProvider.notifier).add(
                            tabSettings.value.copyWith(account: account),
                          );
                    } else {
                      await ref
                          .read(timelineTabsNotifierProvider.notifier)
                          .replace(
                            initialTabSettings.id!,
                            tabSettings.value.copyWith(account: account),
                          );
                    }
                    if (!context.mounted) return;
                    context.pop();
                  }
                }
              : null,
          icon: const Icon(Icons.check),
          label: Text(t.misskey.save),
        ),
      ),
    );
  }
}
