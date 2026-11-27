import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/duration_picker_dialog.dart';
import '../../widget/duration_widget.dart';

class const FollowApprovalPage({super.key, required final Account account})
    extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final colors = ref.watch(
      misskeyColorsProvider(Theme.brightnessOf(context)),
    );

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.followApproval_.groupTitle)),
      body: ListTileTheme(
        data: ListTileThemeData(tileColor: colors.panel),
        child: ListView(
          children: [
            const SizedBox(height: 16.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  t.misskey.followApproval_.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: Card.filled(
                  margin: EdgeInsets.zero,
                  color: colors.infoBg,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      t.misskey.followApproval_.description,
                      style: TextStyle(color: colors.infoFg),
                    ),
                  ),
                ),
              ),
            ),
            if (i?.isLocked ?? false) ...[
              const SizedBox(height: 8.0),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: Card.filled(
                    margin: EdgeInsets.zero,
                    color: colors.infoBg,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        t.misskey.followApproval_.inactiveDescription,
                        style: TextStyle(color: colors.infoFg),
                      ),
                    ),
                  ),
                ),
              ),
            ],
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  title: Text(t.misskey.followApproval_.local),
                  subtitle: _FollowApprovalWidget(
                    seconds: i?.followApprovalLocalSeconds,
                  ),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showDialog<(int?,)>(
                      context: context,
                      builder: (context) => _FollowApprovalDialog(
                        initialValue: i?.followApprovalLocalSeconds,
                        titleText: t.misskey.followApproval_.local,
                        descriptionText:
                            t.misskey.followApproval_.localDescription,
                      ),
                    );
                    if (!context.mounted) return;
                    if (result != null) {
                      await futureWithDialog(
                        context,
                        ref
                            .read(iNotifierProvider(account).notifier)
                            .setFollowApprovalLocalSeconds(result.$1),
                      );
                    }
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(8.0),
                    ),
                  ),
                  enabled: !(i?.isLocked ?? true),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  title: Text(t.misskey.followApproval_.remote),
                  subtitle: _FollowApprovalWidget(
                    seconds: i?.followApprovalRemoteSeconds,
                  ),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () async {
                    final result = await showDialog<(int?,)>(
                      context: context,
                      builder: (context) => _FollowApprovalDialog(
                        initialValue: i?.followApprovalRemoteSeconds,
                        titleText: t.misskey.followApproval_.remote,
                        descriptionText:
                            t.misskey.followApproval_.remoteDescription,
                      ),
                    );
                    if (!context.mounted) return;
                    if (result != null) {
                      await futureWithDialog(
                        context,
                        ref
                            .read(iNotifierProvider(account).notifier)
                            .setFollowApprovalRemoteSeconds(result.$1),
                      );
                    }
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(8.0),
                    ),
                  ),
                  enabled: !(i?.isLocked ?? true),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}

class const _FollowApprovalWidget({required final int? seconds})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return switch (seconds) {
      null => Text(t.misskey.followApproval_.useDefault),
      0 => Text(t.misskey.disabled),
      final seconds => DurationWidget(
        duration: Duration(seconds: seconds),
        builder: (context, duration) => Text.rich(
          TextSpan(
            text: t.misskey.followApproval_.custom,
            children: [
              const TextSpan(text: ' ('),
              TextSpan(text: duration),
              const TextSpan(text: ')'),
            ],
          ),
        ),
      ),
    };
  }
}

enum _FollowApprovalMode { useDefault, disabled, custom }

class const _FollowApprovalDialog({
  required final int? initialValue,
  required final String titleText,
  required final String descriptionText,
}) extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = useState(switch (initialValue) {
      null => _FollowApprovalMode.useDefault,
      0 => _FollowApprovalMode.disabled,
      _ => _FollowApprovalMode.custom,
    });
    final duration = useState(switch (initialValue) {
      null || 0 => null,
      final seconds => Duration(seconds: seconds),
    });
    final theme = Theme.of(context);
    final colors = ref.watch(misskeyColorsProvider(theme.brightness));

    return AlertDialog(
      title: Text(titleText),
      content: ListTileTheme(
        data: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          tileColor: theme.colorScheme.surface,
        ),
        child: Column(
          spacing: 8.0,
          children: [
            SizedBox(
              width: maxContentWidth,
              child: Card.filled(
                margin: EdgeInsets.zero,
                color: colors.infoBg,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    descriptionText,
                    style: TextStyle(color: colors.infoFg),
                  ),
                ),
              ),
            ),
            DropdownButtonFormField(
              items: [
                DropdownMenuItem(
                  value: _FollowApprovalMode.useDefault,
                  child: Text(t.misskey.followApproval_.useDefault),
                ),
                DropdownMenuItem(
                  value: _FollowApprovalMode.disabled,
                  child: Text(t.misskey.disabled),
                ),
                DropdownMenuItem(
                  value: _FollowApprovalMode.custom,
                  child: Text(t.misskey.followApproval_.custom),
                ),
              ],
              initialValue: mode.value,
              onChanged: (value) {
                if (value != null) {
                  mode.value = value;
                  if (value == _FollowApprovalMode.custom) {
                    duration.value ??= const Duration(days: 7);
                  }
                }
              },
              isExpanded: true,
            ),
            if (mode.value == _FollowApprovalMode.custom)
              ListTile(
                title: Text(t.misskey.followApproval_.period),
                subtitle: DurationWidget(
                  duration: duration.value ?? Duration.zero,
                ),
                onTap: () async {
                  final result = await showDurationPickerDialog(
                    context,
                    initialDuration: duration.value,
                  );
                  if (result != null) {
                    duration.value = result;
                  }
                },
              ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          autofocus: true,
          onPressed: () => context.pop((
            switch (mode.value) {
              _FollowApprovalMode.useDefault => null,
              _FollowApprovalMode.disabled => 0,
              _FollowApprovalMode.custom => duration.value?.inSeconds,
            },
          )),
          child: Text(t.misskey.ok),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: theme.colorScheme.primary,
            backgroundColor: theme.colorScheme.surfaceContainerLowest,
          ),
          onPressed: () => context.pop(),
          child: Text(t.misskey.cancel),
        ),
      ],
      scrollable: true,
    );
  }
}
