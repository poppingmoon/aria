import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/general_settings.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/data_saver_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/static_image_url_provider.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../../util/pretty_bytes.dart';
import '../dialog/audio_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/image_gallery_dialog.dart';
import '../dialog/message_dialog.dart';
import '../dialog/video_dialog.dart';
import 'image_widget.dart';
import 'media_icon.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class MediaCard extends HookConsumerWidget {
  const MediaCard({
    super.key,
    required this.account,
    required this.files,
    required this.index,
    this.user,
    this.fit = BoxFit.contain,
  });

  final Account account;
  final List<DriveFile> files;
  final int index;
  final User? user;
  final BoxFit fit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final file = files.elementAtOrNull(index);
    if (file == null) {
      return const SizedBox.shrink();
    }
    final (highlightSensitiveMedia, sensitive, openMediaOnDoubleTap) = ref
        .watch(
          generalSettingsNotifierProvider.select(
            (settings) => (
              settings.highlightSensitiveMedia,
              settings.sensitive,
              settings.openSensitiveMediaOnDoubleTap,
            ),
          ),
        );
    final dataSaver = ref.watch(
      dataSaverProvider.select((dataSaver) => dataSaver.media),
    );
    final hide = useState(
      sensitive == SensitiveMediaDisplay.force ||
          dataSaver ||
          (file.isSensitive && sensitive != SensitiveMediaDisplay.ignore),
    );
    ref.listen(
      generalSettingsNotifierProvider.select((settings) => settings.sensitive),
      (_, sensitive) {
        hide.value =
            sensitive == SensitiveMediaDisplay.force ||
            dataSaver ||
            (file.isSensitive && sensitive != SensitiveMediaDisplay.ignore);
      },
    );
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );
    final style = DefaultTextStyle.of(context).style;

    return Card.filled(
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      clipBehavior: Clip.antiAlias,
      shape: file.isSensitive && highlightSensitiveMedia
          ? RoundedRectangleBorder(
              side: BorderSide(color: colors.warn, width: 4.0),
              borderRadius: BorderRadius.circular(16.0),
            )
          : null,
      margin: EdgeInsets.zero,
      child: Semantics(
        label: file.comment ?? file.name,
        child: hide.value
            ? InkWell(
                onTap: () async {
                  if (!openMediaOnDoubleTap) {
                    if (ref
                        .read(generalSettingsNotifierProvider)
                        .confirmWhenRevealingSensitiveMedia) {
                      final result = await confirm(
                        context,
                        message: t.misskey.sensitiveMediaRevealConfirm,
                      );
                      if (!result) return;
                    }
                    hide.value = false;
                  }
                },
                onDoubleTap: () async {
                  if (openMediaOnDoubleTap) {
                    if (ref
                        .read(generalSettingsNotifierProvider)
                        .confirmWhenRevealingSensitiveMedia) {
                      final result = await confirm(
                        context,
                        message: t.misskey.sensitiveMediaRevealConfirm,
                      );
                      if (!result) return;
                    }
                    hide.value = false;
                  }
                },
                onLongPress: () => showModalBottomSheet<void>(
                  context: context,
                  builder: (context) =>
                      _MediaCardSheet(account: account, file: file, user: user),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (file case DriveFile(:final blurhash?))
                      ColorFiltered(
                        colorFilter: const ColorFilter.mode(
                          Color(0xffb4b4b4),
                          BlendMode.multiply,
                        ),
                        child: BlurHash(
                          hash: blurhash,
                          optimizationMode:
                              BlurHashOptimizationMode.approximation,
                        ),
                      )
                    else
                      const ColoredBox(
                        color: Color(0xff888888),
                        child: SizedBox.expand(),
                      ),
                    Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: file.isSensitive
                                ? Icon(
                                    Icons.warning_amber,
                                    size: style.lineHeight * 0.8,
                                    color: Colors.white,
                                  )
                                : MediaIcon(
                                    mimeType: file.type,
                                    size: style.lineHeight * 0.8,
                                    color: Colors.white,
                                  ),
                          ),
                          const WidgetSpan(child: SizedBox(width: 4.0)),
                          if (file.isSensitive)
                            TextSpan(
                              text: t.misskey.sensitive,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                if (dataSaver) ...[
                                  const TextSpan(text: ' ('),
                                  if (file.type.startsWith('image/'))
                                    TextSpan(
                                      text: t.misskey.image,
                                      children: [
                                        if (file.size > 0)
                                          const TextSpan(text: ' '),
                                      ],
                                    )
                                  else if (file.type.startsWith('video/'))
                                    TextSpan(
                                      text: t.misskey.video,
                                      children: [
                                        if (file.size > 0)
                                          const TextSpan(text: ' '),
                                      ],
                                    )
                                  else if (file.type.startsWith('audio/'))
                                    TextSpan(
                                      text: t.misskey.audio,
                                      children: [
                                        if (file.size > 0)
                                          const TextSpan(text: ' '),
                                      ],
                                    ),
                                  if (file.size > 0)
                                    TextSpan(text: prettyBytes(file.size)),
                                  const TextSpan(text: ')'),
                                ],
                              ],
                            )
                          else
                            TextSpan(
                              text: file.type.startsWith('image/')
                                  ? t.misskey.image
                                  : file.type.startsWith('video/')
                                  ? t.misskey.video
                                  : file.type.startsWith('audio/')
                                  ? t.misskey.audio
                                  : null,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                if (dataSaver && file.size > 0) ...[
                                  const TextSpan(text: ' '),
                                  TextSpan(text: prettyBytes(file.size)),
                                ],
                              ],
                            ),
                          TextSpan(
                            text:
                                '\n${openMediaOnDoubleTap ? t.aria.doubleTapToShow : t.aria.tapToShow}',
                          ),
                        ],
                      ),
                      style: style.apply(
                        color: Colors.white,
                        fontSizeFactor: 0.8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            : Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: switch ((
                      file.type.split('/').first,
                      defaultTargetPlatform,
                    )) {
                      ('image', _) => _ImagePreview(
                        account: account,
                        file: file,
                        files: files,
                        user: user,
                        fit: fit,
                        onLongPress: () => showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => _MediaCardSheet(
                            account: account,
                            file: file,
                            user: user,
                            hideMedia: () => hide.value = true,
                          ),
                        ),
                      ),
                      (
                        'video',
                        TargetPlatform.android ||
                            TargetPlatform.iOS ||
                            TargetPlatform.macOS,
                      ) =>
                        _VideoPreview(
                          file: file,
                          fit: fit,
                          onLongPress: () => showModalBottomSheet<void>(
                            context: context,
                            builder: (context) => _MediaCardSheet(
                              account: account,
                              file: file,
                              user: user,
                              hideMedia: () => hide.value = true,
                            ),
                          ),
                        ),
                      (
                        'audio',
                        TargetPlatform.android ||
                            TargetPlatform.iOS ||
                            TargetPlatform.macOS,
                      ) =>
                        _AudioPreview(
                          account: account,
                          file: file,
                          user: user,
                          onLongPress: () => showModalBottomSheet<void>(
                            context: context,
                            builder: (context) => _MediaCardSheet(
                              account: account,
                              file: file,
                              user: user,
                              hideMedia: () => hide.value = true,
                            ),
                          ),
                        ),
                      _ => _FilePreview(
                        file: file,
                        fit: fit,
                        onLongPress: () => showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => _MediaCardSheet(
                            account: account,
                            file: file,
                            user: user,
                            hideMedia: () => hide.value = true,
                          ),
                        ),
                      ),
                    },
                  ),
                  PositionedDirectional(
                    start: 8.0,
                    top: 8.0,
                    child: DefaultTextStyle.merge(
                      style: style.apply(
                        color: colors.accentLighten,
                        fontSizeFactor: 0.8,
                      ),
                      child: Column(
                        children: [
                          if (file.type case 'image/gif' || 'image/apng')
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('GIF'),
                                ),
                              ),
                            ),
                          if (file case DriveFile(:final comment?))
                            if (comment.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Tooltip(
                                      message: comment,
                                      child: const Text('ALT'),
                                    ),
                                  ),
                                ),
                              ),
                          if (file.isSensitive)
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Tooltip(
                                    message: t.misskey.sensitive,
                                    child: Icon(
                                      Icons.warning_amber,
                                      color: colors.warn,
                                      size: style.lineHeight * 0.8,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    top: 8.0,
                    end: 8.0,
                    child: Opacity(
                      opacity: 0.5,
                      child: IconButton(
                        style: IconButton.styleFrom(
                          iconSize: 18.0,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: colors.accentLighten,
                          backgroundColor: colors.fg,
                        ),
                        onPressed: () => hide.value = true,
                        icon: const Icon(Icons.visibility_off),
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    end: 8.0,
                    bottom: 8.0,
                    child: Opacity(
                      opacity: 0.5,
                      child: IconButton(
                        style: IconButton.styleFrom(
                          iconSize: 18.0,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: colors.bg,
                          backgroundColor: colors.fg,
                        ),
                        onPressed: () => showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => _MediaCardSheet(
                            account: account,
                            file: file,
                            user: user,
                            hideMedia: () => hide.value = true,
                          ),
                        ),
                        icon: const Icon(Icons.more_horiz),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class _ImagePreview extends ConsumerWidget {
  const _ImagePreview({
    required this.account,
    required this.file,
    required this.files,
    this.user,
    this.fit,
    this.onLongPress,
  });

  final Account account;
  final DriveFile file;
  final List<DriveFile> files;
  final User? user;
  final BoxFit? fit;
  final void Function()? onLongPress;

  void _openImage(BuildContext context) {
    final imageFiles = files
        .where((file) => file.type.startsWith('image/'))
        .toList();
    showImageGalleryDialog(
      context,
      files: imageFiles,
      initialIndex: imageFiles.indexOf(file),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (loadRawImage, disableShowingAnimatedImages) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) =>
            (settings.loadRawImages, settings.disableShowingAnimatedImages),
      ),
    );
    final url = loadRawImage
        ? file.url
        : disableShowingAnimatedImages ||
              ref.watch(
                dataSaverProvider.select((dataSaver) => dataSaver.media),
              )
        ? ref.watch(staticImageUrlProvider(account.host, file.url))?.toString()
        : file.thumbnailUrl;
    final blurHash = file.blurhash;

    return InkWell(
      onTap: () => _openImage(context),
      onDoubleTap: () => _openImage(context),
      onLongPress: onLongPress,
      child: url != null
          ? ImageWidget(url: url, blurHash: file.blurhash, fit: fit)
          : blurHash != null
          ? BlurHash(
              hash: blurHash,
              optimizationMode: BlurHashOptimizationMode.approximation,
            )
          : const SizedBox.shrink(),
    );
  }
}

class _VideoPreview extends StatelessWidget {
  const _VideoPreview({required this.file, this.fit, this.onLongPress});

  final DriveFile file;
  final BoxFit? fit;
  final void Function()? onLongPress;

  void _openVideo(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => VideoDialog(url: file.url),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openVideo(context),
      onDoubleTap: () => _openVideo(context),
      onLongPress: onLongPress,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (file case DriveFile(:final thumbnailUrl?))
            ImageWidget(url: thumbnailUrl, blurHash: file.blurhash, fit: fit),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.play_arrow,
                size: 36.0,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AudioPreview extends StatelessWidget {
  const _AudioPreview({
    required this.account,
    required this.file,
    this.user,
    this.onLongPress,
  });

  final Account account;
  final DriveFile file;
  final User? user;
  final void Function()? onLongPress;

  void _openAudio(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) =>
          AudioDialog(account: account, file: file, user: user),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openAudio(context),
      onDoubleTap: () => _openAudio(context),
      onLongPress: onLongPress,
      child: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.play_arrow,
              size: 36.0,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}

class _FilePreview extends ConsumerWidget {
  const _FilePreview({required this.file, this.fit, this.onLongPress});

  final DriveFile file;
  final BoxFit? fit;
  final void Function()? onLongPress;

  void _openFile(WidgetRef ref) {
    launchUrl(ref, Uri.parse(file.url));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => _openFile(ref),
      onDoubleTap: () => _openFile(ref),
      onLongPress: onLongPress,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (file case DriveFile(:final thumbnailUrl?))
            ImageWidget(url: thumbnailUrl, blurHash: file.blurhash, fit: fit)
          else if (file case DriveFile(:final blurhash?))
            BlurHash(
              hash: blurhash,
              optimizationMode: BlurHashOptimizationMode.approximation,
            ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.open_in_browser,
                size: 36.0,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MediaCardSheet extends ConsumerWidget {
  const _MediaCardSheet({
    required this.account,
    required this.file,
    this.user,
    this.hideMedia,
  });

  final Account account;
  final DriveFile file;
  final User? user;
  final void Function()? hideMedia;

  Future<void> _download(WidgetRef ref) async {
    final isImage = file.type.startsWith('image/');
    final isVideo = file.type.startsWith('video/');
    if (!isImage && !isVideo) {
      await launchUrl(ref, Uri.parse(file.url));
      return;
    }
    if (!await Gal.requestAccess()) {
      if (!ref.context.mounted) return;
      await showMessageDialog(ref.context, t.misskey.permissionDeniedError);
      return;
    }
    if (!ref.context.mounted) return;
    await futureWithDialog(
      ref.context,
      Future(() async {
        final file = await ref
            .read(cacheManagerProvider)
            .getSingleFile(this.file.url);
        if (isImage) {
          await Gal.putImage(file.path);
        } else {
          await Gal.putVideo(file.path);
        }
      }),
      message: t.aria.downloaded,
    );
    if (!ref.context.mounted) return;
    ref.context.pop();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      shrinkWrap: true,
      children: [
        if (user case final user?) ...[
          ListTile(
            leading: UserAvatar(
              account: account,
              user: user,
              size: 32.0,
              onTap: () => context.push('/$account/users/${user.id}'),
            ),
            title: Align(
              alignment: AlignmentDirectional.centerStart,
              child: InkWell(
                onTap: () => context.push('/$account/users/${user.id}'),
                child: UsernameWidget(account: account, user: user),
              ),
            ),
            subtitle: Text(
              file.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          const Divider(height: 0.0),
        ],
        if (hideMedia case final hideMedia?)
          ListTile(
            leading: const Icon(Icons.visibility_off),
            title: Text(t.misskey.hide),
            onTap: () {
              hideMedia();
              context.pop();
            },
          ),
        ListTile(
          leading: const Icon(Icons.download),
          title: Text(t.misskey.download),
          onTap: () => _download(ref),
        ),
        ListTile(
          leading: const Icon(Icons.open_in_browser),
          title: Text(t.aria.openInBrowser),
          onTap: () => launchUrl(ref, Uri.parse(file.url)),
        ),
        if (user case User(
          :final username,
          host: null,
        ) when !account.isGuest && account.username == username)
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: Text(t.misskey.fileViewer_.title),
            onTap: () => context.push('/$account/drive/file/${file.id}'),
          ),
      ],
    );
  }
}
