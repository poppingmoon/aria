import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../../constant/langmap.dart';
import '../../../constant/shortcuts.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/post_file.dart';
import '../../../provider/account_settings_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/misskey_provider.dart';
import '../../../provider/api/user_notifier_provider.dart';
import '../../../provider/cache_manager_provider.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../../util/navigate.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../dialog/field_dialog.dart';
import '../../dialog/radio_dialog.dart';
import '../../widget/account_settings_scaffold.dart';
import '../../widget/error_message.dart';
import '../../widget/file_picker_sheet.dart';
import '../../widget/key_value_widget.dart';
import '../../widget/mfm.dart';
import '../../widget/reorderable_drag_start_listener_wrapper.dart';
import '../../widget/url_widget.dart';
import '../../widget/user_avatar.dart';
import '../../widget/user_banner.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key, required this.account});

  final Account account;

  Future<DriveFile?> _getFile(
    WidgetRef ref, {
    String? folderId,
    double? aspectRatio,
  }) async {
    final result = await showModalBottomSheet<PostFile>(
      context: ref.context,
      builder: (context) => FilePickerSheet(
        account: account,
        type: FileType.image,
      ),
      clipBehavior: Clip.hardEdge,
    );
    if (result == null) return null;
    if (!ref.context.mounted) return null;
    final confirmed = await confirm(
      ref.context,
      message: t.misskey.cropImageAsk,
      okText: t.misskey.cropYes,
      cancelText: t.misskey.cropNo,
    );
    if (!ref.context.mounted) return null;
    if (confirmed) {
      final data = await switch (result) {
        LocalPostFile(:final file) => file,
        DrivePostFile(:final file) =>
          await ref.read(cacheManagerProvider).getSingleFile(file.url),
      }
          .readAsBytes();
      if (!ref.context.mounted) return null;
      final cropped = await ref.context.push<Uint8List>(
        '/$account/image/crop?ratio=$aspectRatio',
        extra: data,
      );
      if (!ref.context.mounted) return null;
      if (cropped != null) {
        final file = await futureWithDialog(
          ref.context,
          ref.read(misskeyProvider(account)).drive.files.createAsBinary(
                DriveFilesCreateRequest(
                  folderId: folderId,
                  force: true,
                ),
                cropped,
              ),
        );
        return file;
      }
    }
    return switch (result) {
      LocalPostFile(:final file) => await futureWithDialog(
          ref.context,
          ref.read(misskeyProvider(account)).drive.files.create(
                DriveFilesCreateRequest(
                  folderId: folderId,
                  force: true,
                ),
                file,
              ),
        ),
      DrivePostFile(:final file) => file,
    };
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account));
    final squareAvatars = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.squareAvatars),
    );
    final folderId = ref.watch(
      accountSettingsNotifierProvider(account)
          .select((settings) => settings.uploadFolder),
    );
    final nameController = useTextEditingController(text: i.valueOrNull?.name);
    final descriptionController =
        useTextEditingController(text: i.valueOrNull?.description);
    final locationController =
        useTextEditingController(text: i.valueOrNull?.location);
    final name = useState(i.valueOrNull?.name);
    final description = useState(i.valueOrNull?.description);
    final location = useState(i.valueOrNull?.location);
    final fields = useState(i.valueOrNull?.fields ?? []);
    final showPreview = useState(false);
    ref.listen(iNotifierProvider(account), (_, i) {
      if (i case AsyncData(value: final i?)) {
        nameController.text = i.name ?? '';
        name.value = i.name;
        descriptionController.text = i.description ?? '';
        description.value = i.description;
        locationController.text = i.location ?? '';
        location.value = i.location;
        fields.value = i.fields ?? [];
      }
    });
    useEffect(
      () {
        nameController.addListener(
          () => name.value =
              nameController.text.isNotEmpty ? nameController.text : null,
        );
        descriptionController.addListener(
          () => description.value = descriptionController.text.isNotEmpty
              ? descriptionController.text
              : null,
        );
        locationController.addListener(
          () => location.value = locationController.text.isNotEmpty
              ? locationController.text
              : null,
        );
        return;
      },
      [],
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return AccountSettingsScaffold(
      account: account,
      appBar: AppBar(
        title: Text(t.misskey.profile),
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(
                userNotifierProvider(account, username: account.username),
              );
              context.push('/$account/@${account.username}');
            },
            icon: const Icon(Icons.open_in_new),
          ),
        ],
      ),
      body: switch (i) {
        AsyncValue(valueOrNull: final i?) => ListView(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      UserBanner(account: account, user: i),
                      const SizedBox(height: 50.0),
                    ],
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        squareAvatars ? 20.0 : 100.0,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Colors.black54,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: UserAvatar(account: account, user: i, size: 100.0),
                  ),
                  Positioned(
                    top: 16.0,
                    right: 16.0,
                    child: ElevatedButton(
                      onPressed: () async {
                        final result = await _getFile(
                          ref,
                          folderId: folderId,
                          aspectRatio: 2.0,
                        );
                        if (!context.mounted) return;
                        if (result != null) {
                          await futureWithDialog(
                            context,
                            ref
                                .read(iNotifierProvider(account).notifier)
                                .setBannerId(result.id),
                          );
                        }
                      },
                      child: Text(t.misskey.profile_.changeBanner),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        final result = await _getFile(
                          ref,
                          folderId: folderId,
                          aspectRatio: 1.0,
                        );
                        if (!context.mounted) return;
                        if (result != null) {
                          await futureWithDialog(
                            context,
                            ref
                                .read(iNotifierProvider(account).notifier)
                                .setAvatarId(result.id),
                          );
                        }
                      },
                      child: Text(t.misskey.profile_.changeAvatar),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                      onPressed: () =>
                          context.push('/$account/avatar-decorations'),
                      icon: const Icon(Icons.auto_awesome),
                      label: Text(t.misskey.decorate),
                    ),
                  ),
                ],
              ),
              ListTile(
                title: Shortcuts(
                  shortcuts: disablingTextShortcuts,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: t.misskey.profile_.name,
                      suffixIcon: IconButton(
                        tooltip: t.misskey.save,
                        onPressed: name.value != i.name
                            ? () {
                                futureWithDialog(
                                  context,
                                  ref
                                      .read(iNotifierProvider(account).notifier)
                                      .setName(name.value),
                                );
                              }
                            : null,
                        icon: const Icon(Icons.save),
                      ),
                    ),
                    maxLength: (name.value?.length ?? 0) > 40 ? 50 : null,
                    maxLengthEnforcement: MaxLengthEnforcement.none,
                    onSubmitted: (value) => futureWithDialog(
                      context,
                      ref
                          .read(iNotifierProvider(account).notifier)
                          .setName(value),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Shortcuts(
                  shortcuts: disablingTextShortcuts,
                  child: TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      labelText: t.misskey.profile_.description,
                      hintText: t.misskey.profile_.youCanIncludeHashtags,
                      suffix: Column(
                        children: [
                          IconButton(
                            tooltip: t.misskey.preview,
                            onPressed: () =>
                                showPreview.value = !showPreview.value,
                            icon: Icon(
                              showPreview.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          IconButton(
                            tooltip: t.misskey.save,
                            onPressed: description.value != i.description
                                ? () {
                                    futureWithDialog(
                                      context,
                                      ref
                                          .read(
                                            iNotifierProvider(account).notifier,
                                          )
                                          .setDescription(description.value),
                                    );
                                  }
                                : null,
                            icon: const Icon(Icons.save),
                          ),
                        ],
                      ),
                      alignLabelWithHint: true,
                    ),
                    minLines: 3,
                    maxLines: 10,
                    maxLength:
                        (description.value?.length ?? 0) > 1400 ? 1500 : null,
                    maxLengthEnforcement: MaxLengthEnforcement.none,
                  ),
                ),
              ),
              if (showPreview.value)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Mfm(
                        account: account,
                        text: description.value,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ListTile(
                title: Shortcuts(
                  shortcuts: disablingTextShortcuts,
                  child: TextField(
                    controller: locationController,
                    decoration: InputDecoration(
                      labelText: t.misskey.location,
                      suffixIcon: IconButton(
                        tooltip: t.misskey.save,
                        onPressed: location.value != i.location
                            ? () {
                                futureWithDialog(
                                  context,
                                  ref
                                      .read(iNotifierProvider(account).notifier)
                                      .setLocation(location.value),
                                );
                              }
                            : null,
                        icon: const Icon(Icons.save),
                      ),
                    ),
                    maxLength: (location.value?.length ?? 0) > 40 ? 50 : null,
                    maxLengthEnforcement: MaxLengthEnforcement.none,
                  ),
                ),
              ),
              ListTile(
                title: Text(t.misskey.birthday),
                subtitle: Text(
                  i.birthday != null
                      ? DateFormat.yMMMd(
                          Localizations.localeOf(context).toLanguageTag(),
                        ).format(i.birthday!)
                      : t.misskey.notSet,
                ),
                trailing: i.birthday != null
                    ? IconButton(
                        tooltip: t.misskey.delete,
                        onPressed: () => futureWithDialog(
                          context,
                          ref
                              .read(iNotifierProvider(account).notifier)
                              .setBirthday(null),
                        ),
                        icon: const Icon(Icons.close),
                      )
                    : const Icon(Icons.navigate_next),
                onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(0),
                    lastDate: DateTime(9999, 12, 31),
                    initialEntryMode: DatePickerEntryMode.input,
                  );
                  if (!context.mounted) return;
                  if (date != null) {
                    await futureWithDialog(
                      context,
                      ref
                          .read(iNotifierProvider(account).notifier)
                          .setBirthday(date),
                    );
                  }
                },
              ),
              ListTile(
                title: Text(t.misskey.language),
                subtitle: Text(langmap[i.lang]?.nativeName ?? t.misskey.notSet),
                trailing: i.lang != null
                    ? IconButton(
                        tooltip: t.misskey.delete,
                        onPressed: () => futureWithDialog(
                          context,
                          ref
                              .read(iNotifierProvider(account).notifier)
                              .setLang(null),
                        ),
                        icon: const Icon(Icons.close),
                      )
                    : const Icon(Icons.navigate_next),
                onTap: () async {
                  final result = await showRadioDialog(
                    context,
                    title: Text(t.misskey.language),
                    values: langmap.entries,
                    itemBuilder: (context, lang) => Text(lang.value.nativeName),
                  );
                  if (!context.mounted) return;
                  if (result != null) {
                    await futureWithDialog(
                      context,
                      ref
                          .read(iNotifierProvider(account).notifier)
                          .setLang(result.key),
                    );
                  }
                },
              ),
              ExpansionTile(
                title: Text(t.misskey.profile_.metadataEdit),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        OutlinedButton.icon(
                          onPressed: fields.value.length < 16
                              ? () async {
                                  final result = await showDialog<UserField>(
                                    context: context,
                                    builder: (context) => const FieldDialog(),
                                  );
                                  if (result != null) {
                                    fields.value = [...fields.value, result];
                                  }
                                }
                              : null,
                          icon: const Icon(Icons.add),
                          label: Text(t.misskey.add),
                        ),
                        const SizedBox(width: 8.0),
                        ElevatedButton.icon(
                          onPressed: !listEquals(fields.value, i.fields ?? [])
                              ? () => futureWithDialog(
                                    context,
                                    ref
                                        .read(
                                          iNotifierProvider(account).notifier,
                                        )
                                        .setFields(fields.value),
                                  )
                              : null,
                          icon: const Icon(Icons.check),
                          label: Text(t.misskey.save),
                        ),
                      ],
                    ),
                  ),
                  ReorderableListView.builder(
                    itemBuilder: (context, index) {
                      final name = fields.value[index].name;
                      final value = fields.value[index].value;
                      return ReorderableDragStartListenerWrapper(
                        key: ValueKey(index),
                        index: index,
                        child: ListTile(
                          leading: IconButton(
                            tooltip: t.misskey.delete,
                            onPressed: () => fields.value = [
                              ...fields.value.sublist(0, index),
                              ...fields.value.sublist(index + 1),
                            ],
                            icon: const Icon(Icons.close),
                            color: colors.error,
                          ),
                          title: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: KeyValueWidget(
                                  label: t.misskey.profile_.metadataLabel,
                                  child: Mfm(
                                    account: account,
                                    text: name,
                                    simple: true,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 7,
                                child: KeyValueWidget(
                                  label: t.misskey.profile_.metadataContent,
                                  child: i.verifiedLinks.contains(value)
                                      ? Text.rich(
                                          TextSpan(
                                            children: [
                                              WidgetSpan(
                                                child: UrlWidget(
                                                  url: value,
                                                  onTap: () => navigate(
                                                    ref,
                                                    account,
                                                    value,
                                                  ),
                                                  style: TextStyle(
                                                    color: colors.link,
                                                  ),
                                                ),
                                              ),
                                              const WidgetSpan(
                                                child: SizedBox(width: 2.0),
                                              ),
                                              WidgetSpan(
                                                child: Tooltip(
                                                  message:
                                                      t.misskey.verifiedLink,
                                                  child: Builder(
                                                    builder: (context) => Icon(
                                                      Icons
                                                          .check_circle_outline,
                                                      color: colors.success,
                                                      size: DefaultTextStyle.of(
                                                        context,
                                                      ).style.fontSize,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      : Mfm(
                                          account: account,
                                          text: value,
                                          author: i,
                                        ),
                                ),
                              ),
                            ],
                          ),
                          trailing: const Icon(Icons.drag_handle),
                          onTap: () async {
                            final result = await showDialog<UserField>(
                              context: context,
                              builder: (context) =>
                                  FieldDialog(field: fields.value[index]),
                            );
                            if (result != null) {
                              fields.value = [
                                ...fields.value.sublist(0, index),
                                result,
                                ...fields.value.sublist(index + 1),
                              ];
                            }
                          },
                        ),
                      );
                    },
                    itemCount: fields.value.length,
                    onReorder: (oldIndex, newIndex) {
                      final items = fields.value.toList();
                      final item = items.removeAt(oldIndex);
                      items.insert(
                        oldIndex < newIndex ? newIndex - 1 : newIndex,
                        item,
                      );
                      fields.value = items;
                    },
                    shrinkWrap: true,
                    buildDefaultDragHandles: false,
                  ),
                  Card(
                    margin: const EdgeInsets.all(8.0),
                    color: colors.infoBg,
                    elevation: 0.0,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        t.misskey.profile_.verifiedLinkDescription,
                        style: TextStyle(color: colors.infoFg),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(t.misskey.advancedSettings),
                children: [
                  SwitchListTile(
                    title: Text(t.misskey.flagAsCat),
                    subtitle: Text(t.misskey.flagAsCatDescription),
                    value: i.isCat,
                    onChanged: (value) => futureWithDialog(
                      context,
                      ref
                          .read(iNotifierProvider(account).notifier)
                          .setIsCat(value),
                    ),
                  ),
                  SwitchListTile(
                    title: Text(t.misskey.flagAsBot),
                    subtitle: Text(t.misskey.flagAsBotDescription),
                    value: i.isBot,
                    onChanged: (value) => futureWithDialog(
                      context,
                      ref
                          .read(iNotifierProvider(account).notifier)
                          .setIsBot(value),
                    ),
                  ),
                ],
              ),
            ],
          ),
        AsyncValue(:final error?, :final stackTrace) =>
          ErrorMessage(error: error, stackTrace: stackTrace),
        _ => const Center(child: CircularProgressIndicator()),
      },
      selectedDestination: AccountSettingsDestination.profile,
    );
  }
}
