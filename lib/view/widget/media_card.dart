import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/general_settings.dart';
import '../../provider/data_saver_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/static_image_url_provider.dart';
import '../../util/launch_url.dart';
import '../../util/pretty_bytes.dart';
import '../dialog/audio_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/image_gallery_dialog.dart';
import '../dialog/video_dialog.dart';
import 'image_widget.dart';
import 'media_icon.dart';

class MediaCard extends HookConsumerWidget {
  const MediaCard({
    super.key,
    required this.account,
    required this.files,
    this.index = 0,
    this.user,
  });

  final Account account;
  final List<DriveFile> files;
  final int index;
  final User? user;

  Widget _buildContent(WidgetRef ref) {
    final file = files[index];
    if (file.type.startsWith('image/')) {
      final loadRawImage = ref.watch(
        generalSettingsNotifierProvider
            .select((settings) => settings.loadRawImages),
      );
      final disableShowingAnimatedImages = ref.watch(
        generalSettingsNotifierProvider
            .select((settings) => settings.disableShowingAnimatedImages),
      );
      final url = loadRawImage
          ? file.url
          : disableShowingAnimatedImages
              ? ref
                  .watch(staticImageUrlProvider(account.host, file.url))
                  ?.toString()
              : file.thumbnailUrl;
      final blurHash = file.blurhash;
      return InkWell(
        onTap: () => showDialog<void>(
          context: ref.context,
          builder: (context) => ImageGalleryDialog(
            files: files,
            initialIndex: index,
          ),
        ),
        child: url != null
            ? ImageWidget(
                url: url,
                blurHash: file.blurhash,
                fit: BoxFit.fitHeight,
              )
            : blurHash != null
                ? BlurHash(hash: blurHash)
                : const SizedBox.shrink(),
      );
    } else if (file.type.startsWith('video/')) {
      if (defaultTargetPlatform
          case TargetPlatform.android ||
              TargetPlatform.iOS ||
              TargetPlatform.macOS) {
        return InkWell(
          onTap: () => showDialog<void>(
            context: ref.context,
            builder: (context) => VideoDialog(url: file.url),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (file case DriveFile(:final thumbnailUrl?))
                ImageWidget(
                  url: thumbnailUrl,
                  blurHash: file.blurhash,
                  fit: BoxFit.fitHeight,
                ),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(ref.context).colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.play_arrow,
                    size: 36.0,
                    color: Theme.of(ref.context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        );
      }
    } else if (file.type.startsWith('audio/')) {
      if (defaultTargetPlatform
          case TargetPlatform.android ||
              TargetPlatform.iOS ||
              TargetPlatform.macOS) {
        return InkWell(
          onTap: () => showDialog<void>(
            context: ref.context,
            builder: (context) => AudioDialog(
              account: account,
              file: file,
              user: user,
            ),
          ),
          child: Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Theme.of(ref.context).colorScheme.primary,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.play_arrow,
                  size: 36.0,
                  color: Theme.of(ref.context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        );
      }
    }
    return InkWell(
      onTap: () => launchUrl(ref, Uri.parse(file.url)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (file case DriveFile(:final thumbnailUrl?))
            ImageWidget(
              url: thumbnailUrl,
              blurHash: file.blurhash,
              fit: BoxFit.fitHeight,
            )
          else if (file case DriveFile(:final blurhash?))
            BlurHash(hash: blurhash),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(ref.context).colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.open_in_browser,
                size: 36.0,
                color: Theme.of(ref.context).colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final file = files[index];
    final highlightSensitiveMedia = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.highlightSensitiveMedia),
    );
    final sensitive = ref.watch(
      generalSettingsNotifierProvider.select((settings) => settings.sensitive),
    );
    final dataSaver =
        ref.watch(dataSaverProvider.select((dataSaver) => dataSaver.media));
    final openMediaOnDoubleTap = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.openSensitiveMediaOnDoubleTap),
    );
    final hide = useState(
      sensitive == SensitiveMediaDisplay.force ||
          dataSaver ||
          (file.isSensitive && sensitive != SensitiveMediaDisplay.ignore),
    );
    ref.listen(
      generalSettingsNotifierProvider.select((settings) => settings.sensitive),
      (_, sensitive) {
        hide.value = sensitive == SensitiveMediaDisplay.force ||
            dataSaver ||
            (file.isSensitive && sensitive != SensitiveMediaDisplay.ignore);
      },
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final style = DefaultTextStyle.of(context).style;

    return Card(
      clipBehavior: Clip.hardEdge,
      shape: file.isSensitive && highlightSensitiveMedia
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: colors.warn,
                width: 4.0,
              ),
              borderRadius: BorderRadius.circular(16.0),
            )
          : null,
      child: Semantics(
        label: file.comment ?? file.name,
        child: hide.value
            ? InkWell(
                onTap: !openMediaOnDoubleTap
                    ? () async {
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
                    : null,
                onDoubleTap: openMediaOnDoubleTap
                    ? () async {
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
                    : null,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (file case DriveFile(:final blurhash?))
                      if (defaultTargetPlatform
                          case TargetPlatform.iOS || TargetPlatform.macOS)
                        BlurHash(hash: blurhash)
                      else
                        ColorFiltered(
                          colorFilter: const ColorFilter.mode(
                            Color(0xffb4b4b4),
                            BlendMode.multiply,
                          ),
                          child: BlurHash(hash: blurhash),
                        )
                    else
                      const Positioned.fill(
                        child: ColoredBox(color: Color(0xff888888)),
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
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
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
                                    TextSpan(
                                      text: prettyBytes(file.size),
                                    ),
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
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
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
                      style:
                          style.apply(color: Colors.white, fontSizeFactor: 0.8),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            : Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(child: _buildContent(ref)),
                  Positioned(
                    left: 8.0,
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
                  Positioned(
                    right: 8.0,
                    top: 8.0,
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
                  if (user case User(:final username, host: null))
                    if (!account.isGuest && account.username == username)
                      Positioned(
                        right: 8.0,
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
                            onPressed: () =>
                                context.push('/$account/drive/file/${[
                              file.folderId,
                              file.id,
                            ].nonNulls.join('/')}'),
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
