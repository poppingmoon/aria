import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../hook/chewie_controller_hook.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../../util/show_toast.dart';
import '../widget/image_widget.dart';
import 'message_dialog.dart';

class const VideoDialog({
  super.key,
  final Account? account,
  final String? url,
  final File? file,
  final String? fileName,
  final String? thumbnailUrl,
  final String? noteId,
}) extends HookConsumerWidget {
  this : assert(url != null || file != null);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = useMemoized(
      () => switch (this.url) {
        final url? => Uri.tryParse(url),
        _ => null,
      },
      [this.url],
    );
    final (enableHapticFeedback, mediaSaveLocation) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) =>
            (settings.enableHapticFeedback, settings.mediaSaveLocation),
      ),
    );
    final controller = useChewieController(
      url: url,
      file: file,
      autoPlay: true,
      showControlsOnInitialize: false,
      optionsBuilder: (context, controller) => showModalBottomSheet(
        context: context,
        builder: (context) => ValueListenableBuilder(
          valueListenable: controller.videoPlayerController,
          builder: (context, value, _) => ListView(
            shrinkWrap: true,
            children: [
              SwitchListTile(
                secondary: const Icon(Icons.repeat),
                title: Text(t.misskey.mediaControls_.loop),
                value: value.isLooping,
                onChanged: (value) => controller.setLooping(value),
              ),
              ListTile(
                leading: const Icon(Icons.speed),
                title: Text(t.misskey.mediaControls_.playbackRate),
                subtitle: Text('${value.playbackSpeed}x'),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  context.pop();
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => ValueListenableBuilder(
                      valueListenable: controller.videoPlayerController,
                      builder: (context, value, _) => ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            title: Text(t.misskey.mediaControls_.playbackRate),
                          ),
                          const Divider(height: 0.0),
                          const SizedBox(height: 8.0),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              tickMarkShape: SliderTickMarkShape.noTickMark,
                            ),
                            child: Slider(
                              value: value.playbackSpeed,
                              onChanged: (value) =>
                                  controller.playback.setPlaybackSpeed(value),
                              min: 0.25,
                              max: 2.0,
                              divisions: 35,
                              label:
                                  '${value.playbackSpeed.toStringAsFixed(2)}x',
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Center(
                            child: LayoutBuilder(
                              builder: (context, constraint) =>
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      spacing: 4.0,
                                      children: [
                                        const SizedBox(width: 8.0),
                                        ...[
                                          if (constraint.maxWidth > 500.0) ...[
                                            0.25,
                                            0.5,
                                            0.75,
                                          ],
                                          1.0,
                                          1.25,
                                          1.5,
                                          2.0,
                                        ].map(
                                          (value) => ActionChip(
                                            label: Text('${value}x'),
                                            onPressed: () => controller.playback
                                                .setPlaybackSpeed(value),
                                          ),
                                        ),
                                        const SizedBox(width: 8.0),
                                      ],
                                    ),
                                  ),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        clipBehavior: Clip.hardEdge,
      ),
    );

    return IconButtonTheme(
      data: IconButtonThemeData(
        style: IconButton.styleFrom(backgroundColor: Colors.white54),
      ),
      child: Stack(
        children: [
          Dismissible(
            key: const ValueKey('VideoDialog'),
            onUpdate: enableHapticFeedback
                ? (details) {
                    if (!details.previousReached && details.reached) {
                      HapticFeedback.lightImpact();
                    }
                  }
                : null,
            onDismissed: (_) => context.pop(),
            direction: DismissDirection.vertical,
            child:
                controller != null &&
                    controller.videoPlayerController.value.isInitialized
                ? Center(
                    child: AspectRatio(
                      aspectRatio:
                          controller.videoPlayerController.value.aspectRatio,
                      // ignore: deprecated_member_use
                      child: MaterialUiCompatibilityBridge(
                        child: Chewie(controller: controller),
                      ),
                    ),
                  )
                : SizedBox.expand(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        if (thumbnailUrl case final url?)
                          Positioned.fill(
                            child: ImageWidget(url: url, fit: BoxFit.contain),
                          ),
                        const CircularProgressIndicator(),
                      ],
                    ),
                  ),
          ),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
                onPressed: () => context.pop(),
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          if (url case final url?)
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: PopupMenuButton<void>(
                  itemBuilder: (context) => [
                    if ((account, noteId) case (final account?, final noteId?))
                      PopupMenuItem(
                        onTap: () {
                          controller?.pause();
                          context.push('/$account/notes/$noteId');
                        },
                        child: ListTile(
                          leading: const Icon(Icons.open_in_new),
                          title: Text(t.aria.showNote),
                        ),
                      ),
                    PopupMenuItem(
                      onTap: () async {
                        if (!await Gal.requestAccess(
                          toAlbum: mediaSaveLocation != null,
                        )) {
                          if (!context.mounted) return;
                          await showMessageDialog(
                            context,
                            t.misskey.permissionDeniedError,
                          );
                          return;
                        }
                        if (!context.mounted) return;
                        await futureWithDialog(
                          context,
                          ref
                              .read(cacheManagerProvider)
                              .getSingleFile(url.toString())
                              .then(
                                (file) => Gal.putVideo(
                                  file.path,
                                  album: mediaSaveLocation,
                                ),
                              ),
                          message: t.misskey.saved,
                        );
                      },
                      child: ListTile(
                        leading: const Icon(Icons.download_outlined),
                        title: Text(t.misskey.save),
                      ),
                    ),
                    PopupMenuItem(
                      onTap: () async {
                        final result = await futureWithDialog(
                          context,
                          ref
                              .read(cacheManagerProvider)
                              .getSingleFile(url.toString())
                              .then((file) => file.readAsBytes())
                              .then(
                                (bytes) => FilePicker.saveFile(
                                  fileName:
                                      fileName ??
                                      url.pathSegments.lastOrNull ??
                                      '',
                                  bytes: bytes,
                                ),
                              ),
                        );
                        if (!context.mounted) return;
                        if (result != null) {
                          showToast(context: context, message: t.misskey.saved);
                        }
                      },
                      child: ListTile(
                        leading: const Icon(Icons.download),
                        title: Text(t.misskey.download),
                      ),
                    ),
                    PopupMenuItem(
                      onTap: () => launchUrl(ref, url),
                      child: ListTile(
                        leading: const Icon(Icons.open_in_browser),
                        title: Text(t.aria.openInBrowser),
                      ),
                    ),
                    PopupMenuItem(
                      onTap: () => copyToClipboard(context, url.toString()),
                      child: ListTile(
                        leading: const Icon(Icons.copy),
                        title: Text(t.misskey.copyLink),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
