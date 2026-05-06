import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:multi_split_view/multi_split_view.dart';

import '../../constant/max_content_width.dart';
import '../../hook/mobile_scanner_controller_hook.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/lookup.dart';
import '../../model/post_file.dart';
import '../../provider/api/lookup_provider.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/parsed_mfm_provider.dart';
import '../../provider/qr_read_history_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/extract_url.dart';
import '../dialog/message_dialog.dart';
import '../widget/error_message.dart';
import '../widget/file_picker_sheet.dart';
import '../widget/mfm.dart';
import '../widget/note_widget.dart';
import '../widget/url_preview.dart';
import '../widget/user_info.dart';

enum _QrReadArea { scanner, preview }

class QrReadPage extends HookConsumerWidget {
  const QrReadPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(qrReadHistoryNotifierProvider(account));
    final enableHapticFeedback = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.enableHapticFeedback,
      ),
    );
    final controller = useMobileScannerController();
    final scrollController = useScrollController();
    final capture = useState<BarcodeCapture?>(null);
    ref.listen(
      qrReadHistoryNotifierProvider(
        account,
      ).selectAsync((history) => history.firstOrNull),
      (prev, next) {
        if (prev != next) {
          if (enableHapticFeedback) {
            HapticFeedback.successNotification();
          }
          scrollController.animateTo(
            0.0,
            duration: const Duration(milliseconds: 125),
            curve: Curves.ease,
          );
        }
      },
    );
    useEffect(() {
      Timer? timer;
      capture.addListener(() {
        if (capture.value != null) {
          timer?.cancel();
          timer = Timer(const Duration(milliseconds: 500), () {
            if (!context.mounted) return;
            capture.value = null;
          });
        }
      });
      return;
    }, []);
    final theme = Theme.of(context);
    final darkTheme = switch (theme.brightness) {
      Brightness.light => switch (ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: theme.primaryColor,
      )) {
        final colorScheme => theme.copyWith(
          brightness: Brightness.dark,
          colorScheme: colorScheme,
          iconTheme: IconThemeData(color: colorScheme.onSurface),
        ),
      },
      Brightness.dark => theme,
    };

    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(title: Text(t.misskey.qr_.readTabTitle)),
        body: MultiSplitViewTheme(
          data: MultiSplitViewThemeData(
            dividerPainter: DividerPainters.grooved1(
              size: 40.0,
              backgroundColor: theme.scaffoldBackgroundColor,
              highlightedSize: 60.0,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.3),
              highlightedColor: theme.colorScheme.onSurface.withValues(
                alpha: 0.9,
              ),
              thickness: 4.0,
              highlightedThickness: 6.0,
            ),
          ),
          child: MultiSplitView(
            axis: Axis.vertical,
            initialAreas: [
              Area(data: _QrReadArea.scanner),
              Area(data: _QrReadArea.preview),
            ],
            builder: (context, area) => switch (area.data as _QrReadArea) {
              _QrReadArea.scanner => Theme(
                data: darkTheme,
                child: DefaultTextStyle.merge(
                  style: TextStyle(color: darkTheme.colorScheme.onSurface),
                  child: Stack(
                    children: [
                      const Positioned.fill(
                        child: ColoredBox(color: Colors.black),
                      ),
                      MobileScanner(
                        controller: controller,
                        onDetect: (barcodes) {
                          capture.value = barcodes;
                          ref
                              .read(
                                qrReadHistoryNotifierProvider(account).notifier,
                              )
                              .addAll(
                                barcodes.barcodes
                                    .map((barcode) => barcode.rawValue)
                                    .nonNulls,
                              );
                        },
                        errorBuilder: (context, error) => Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _MobileScannerErrorWidget(error: error),
                          ),
                        ),
                        overlayBuilder: (context, constraints) => CustomPaint(
                          painter: switch (capture.value) {
                            final capture? => _BoundingBoxPainter(
                              capture: capture,
                            ),
                            _ => null,
                          },
                          size: constraints.biggest,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: ValueListenableBuilder(
                          valueListenable: controller,
                          builder: (context, value, _) => Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                tooltip: t.misskey.qr_.scanFile,
                                onPressed: () async {
                                  final file =
                                      await showModalBottomSheet<PostFile>(
                                        context: context,
                                        builder: (context) => FilePickerSheet(
                                          account: account,
                                          type: FileType.image,
                                        ),
                                        clipBehavior: Clip.hardEdge,
                                      );
                                  if (file == null) return;
                                  final path = switch (file) {
                                    LocalPostFile(:final file) => file.path,
                                    DrivePostFile(:final file) =>
                                      await ref
                                          .read(cacheManagerProvider)
                                          .getSingleFile(file.url)
                                          .then((file) => file.path),
                                  };
                                  final result = await controller.analyzeImage(
                                    path,
                                  );
                                  if (result != null) {
                                    final values = result.barcodes
                                        .map((barcode) => barcode.rawValue)
                                        .nonNulls;
                                    if (values.isNotEmpty) {
                                      await ref
                                          .read(
                                            qrReadHistoryNotifierProvider(
                                              account,
                                            ).notifier,
                                          )
                                          .addAll(values);
                                      return;
                                    }
                                  }
                                  if (!context.mounted) return;
                                  await showMessageDialog(
                                    context,
                                    t.misskey.qr_.noQrCodeFound,
                                  );
                                },
                                icon: const Icon(Icons.image),
                              ),
                              if (value.isRunning)
                                IconButton(
                                  tooltip: t.misskey.qr_.stopQr,
                                  onPressed: controller.stop,
                                  icon: const Icon(Icons.pause),
                                )
                              else
                                IconButton(
                                  tooltip: t.misskey.qr_.startQr,
                                  onPressed: (value.availableCameras ?? 0) > 1
                                      ? controller.start
                                      : null,
                                  icon: const Icon(Icons.play_arrow),
                                ),
                              IconButton(
                                tooltip: t.misskey.qr_.chooseCamera,
                                onPressed: (value.availableCameras ?? 0) > 1
                                    ? controller.switchCamera
                                    : null,
                                icon: const Icon(Icons.switch_camera),
                              ),
                              IconButton(
                                tooltip: switch (value.torchState) {
                                  TorchState.auto ||
                                  TorchState.off => t.misskey.qr_.turnOnFlash,
                                  TorchState.on => t.misskey.qr_.turnOffFlash,
                                  TorchState.unavailable =>
                                    t.misskey.qr_.cannotToggleFlash,
                                },
                                onPressed:
                                    value.torchState != TorchState.unavailable
                                    ? controller.toggleTorch
                                    : null,
                                icon: Icon(
                                  value.torchState != TorchState.on
                                      ? Icons.flash_on
                                      : Icons.flash_off,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _QrReadArea.preview => switch (history) {
                AsyncValue(value: final history?) when history.isNotEmpty =>
                  ListView.builder(
                    controller: scrollController,
                    itemBuilder: (context, index) => Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 8.0,
                          top: index == 0 ? 8.0 : 4.0,
                          right: 8.0,
                          bottom: index == history.length - 1 ? 8.0 : 4.0,
                        ),
                        width: maxContentWidth,
                        child: _QrReaderPreview(
                          key: Key(
                            '_QrReaderPreview(${history.elementAt(index)})',
                          ),
                          account: account,
                          value: history.elementAt(index),
                        ),
                      ),
                    ),
                    itemCount: history.length,
                  ),
                AsyncValue(hasValue: true) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(t.misskey.noHistory),
                  ),
                ),
                AsyncValue(:final error?, :final stackTrace) =>
                  SingleChildScrollView(
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        width: maxContentWidth,
                        child: ErrorMessage(
                          error: error,
                          stackTrace: stackTrace,
                        ),
                      ),
                    ),
                  ),
                _ => const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ),
                ),
              },
            },
          ),
        ),
      ),
    );
  }
}

class _MobileScannerErrorWidget extends HookWidget {
  const _MobileScannerErrorWidget({required this.error});

  final MobileScannerException error;

  @override
  Widget build(BuildContext context) {
    final isCollapsed = useState(true);

    return InkWell(
      onTap: () => isCollapsed.value = false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error),
          const SizedBox(height: 16.0),
          Text(switch (error.errorCode) {
            MobileScannerErrorCode.permissionDenied =>
              t.misskey.permissionDeniedError,
            MobileScannerErrorCode.unsupported => t.misskey.unavailable,
            MobileScannerErrorCode.controllerAlreadyInitialized ||
            MobileScannerErrorCode.controllerDisposed ||
            MobileScannerErrorCode.controllerUninitialized ||
            MobileScannerErrorCode.genericError ||
            MobileScannerErrorCode.controllerInitializing ||
            MobileScannerErrorCode.controllerNotAttached => t.misskey.error,
          }, textAlign: TextAlign.center),
          if (isCollapsed.value)
            const Text('...', textAlign: TextAlign.center)
          else ...[
            Text(error.errorCode.message, textAlign: TextAlign.center),
            if (error.errorDetails?.message case final message?)
              Text(message, textAlign: TextAlign.center),
          ],
        ],
      ),
    );
  }
}

class _BoundingBoxPainter extends CustomPainter {
  const _BoundingBoxPainter({required this.capture});

  final BarcodeCapture capture;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = Colors.amber;
    final scale = max(
      size.width / capture.size.width,
      size.height / capture.size.height,
    );
    final offset = Offset(
      (size.width - capture.size.width * scale) / 2,
      (size.height - capture.size.height * scale) / 2,
    );
    for (final barcode in capture.barcodes) {
      final corners = barcode.corners.map((corner) => corner * scale + offset);
      canvas.drawPoints(PointMode.polygon, [...corners, corners.first], paint);
    }
  }

  @override
  bool shouldRepaint(_BoundingBoxPainter oldDelegate) {
    return oldDelegate.capture != capture;
  }
}

class _QrReaderPreview extends HookConsumerWidget {
  const _QrReaderPreview({
    super.key,
    required this.account,
    required this.value,
  });

  final Account account;
  final String value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nodes = ref.watch(parsedMfmProvider(value));
    final urls = useMemoized(() => extractUrl(nodes), [nodes]);
    final responses = urls.map(
      (url) => ref.watch(lookupProvider(account, url)),
    );
    final theme = Theme.of(context);

    return Column(
      children: [
        Material(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.vertical(
            top: const Radius.circular(8.0),
            bottom: responses.isEmpty
                ? const Radius.circular(8.0)
                : Radius.zero,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 8.0,
              top: 8.0,
              right: 8.0,
              bottom: responses.isEmpty ? 8.0 : 0.0,
            ),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8.0,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.qr_code_rounded),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Mfm(account: account, nodes: nodes),
                    ),
                  ),
                  PopupMenuButton<void>(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        onTap: () => copyToClipboard(context, value),
                        child: ListTile(
                          leading: const Icon(Icons.copy),
                          title: Text(t.misskey.copy),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => ref
                            .read(
                              qrReadHistoryNotifierProvider(account).notifier,
                            )
                            .delete(value),
                        child: ListTile(
                          leading: const Icon(Icons.delete),
                          title: Text(t.misskey.delete),
                          iconColor: theme.colorScheme.error,
                          textColor: theme.colorScheme.error,
                        ),
                      ),
                    ],
                    style: IconButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        for (final (index, response) in responses.indexed) ...[
          if (response.hasValue || response.hasError)
            Container(color: theme.colorScheme.surface, height: 8.0),
          ?switch (response) {
            AsyncValue(value: LookupUser(:final user)) => UserInfo(
              account: account,
              user: user,
              shape: RoundedRectangleBorder(
                borderRadius: index == responses.length - 1
                    ? const BorderRadius.vertical(bottom: Radius.circular(8.0))
                    : BorderRadius.zero,
              ),
            ),
            AsyncValue(value: LookupNote(:final note)) => NoteWidget(
              account: account,
              noteId: note.id,
              borderRadius: index == responses.length - 1
                  ? const BorderRadius.vertical(bottom: Radius.circular(8.0))
                  : null,
            ),
            AsyncValue(error: _?) => Material(
              color: theme.colorScheme.surface,
              borderRadius: index == responses.length - 1
                  ? const BorderRadius.vertical(bottom: Radius.circular(8.0))
                  : null,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  bottom: index == responses.length - 1 ? 8.0 : 0.0,
                ),
                child: UrlPreview(account: account, link: urls[index]),
              ),
            ),
            _ when index == responses.length - 1 => Container(height: 8.0),
            _ => null,
          },
        ],
      ],
    );
  }
}
