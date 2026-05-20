import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:webfont_list/webfont_list.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../widget/url_sheet.dart';

class FontPickerDialog extends HookWidget {
  const FontPickerDialog({
    super.key,
    this.initialSubsets = const {},
    this.initialCategory,
  });

  final Set<WebFontSubset> initialSubsets;
  final WebFontCategory? initialCategory;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final query = useValueListenable(controller).text.trim().toLowerCase();
    final subsets = useState(initialSubsets);
    final category = useState(initialCategory);
    final fontList = [
      ...webfontList.where(
        (font) => GoogleFonts.asMap().containsKey(font.family),
      ),
      const WebFont(
        family: 'Pretendard',
        variants: [],
        subsets: [
          WebFontSubset.korean,
          WebFontSubset.latin,
          WebFontSubset.latinExt,
        ],
        version: '',
        lastModified: '',
        files: {},
        category: WebFontCategory.sansSerif,
        menu: '',
        popularityRank: 10000,
      ),
    ];
    final fonts = fontList
        .where(
          (font) =>
              (query.isEmpty || font.family.toLowerCase().contains(query)) &&
              subsets.value.every((subset) => font.subsets.contains(subset)) &&
              (category.value == null || font.category == category.value),
        )
        .sortedBy((font) => font.popularityRank);
    final isSubsetExpanded = useState(false);
    final theme = Theme.of(context);

    return Dialog(
      clipBehavior: Clip.hardEdge,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(t.aria.font),
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8.0)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Shortcuts(
                shortcuts: disablingTextShortcuts,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      style: IconButton.styleFrom(minimumSize: Size.zero),
                      onPressed: () => controller.clear(),
                      icon: const Icon(Icons.close),
                    ),
                  ),
                  textInputAction: TextInputAction.search,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              title: Text(t.misskey.language),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2.0,
                children: [
                  Wrap(
                    spacing: 2.0,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runSpacing: 2.0,
                    children: [
                      ...subsets.value.map(
                        (subset) => Hero(
                          tag: subset,
                          child: InputChip(
                            label: Text(subset.name.capitalize()),
                            selected: true,
                            onSelected: (_) => subsets.value = subsets.value
                                .where((s) => s != subset)
                                .toSet(),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                      ),
                      if (subsets.value.isEmpty)
                        TextButton.icon(
                          style: TextButton.styleFrom(
                            foregroundColor: theme.colorScheme.onSurface,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: const EdgeInsets.only(left: 12.0),
                          ),
                          iconAlignment: IconAlignment.end,
                          onPressed: () =>
                              isSubsetExpanded.value = !isSubsetExpanded.value,
                          icon: IconButtonTheme(
                            data: IconButtonThemeData(
                              style: IconButton.styleFrom(
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                            ),
                            child: ExpandIcon(
                              isExpanded: isSubsetExpanded.value,
                              onPressed: null,
                              disabledColor: switch (theme.brightness) {
                                Brightness.light => Colors.black54,
                                Brightness.dark => Colors.white60,
                              },
                            ),
                          ),
                          label: Text(
                            isSubsetExpanded.value
                                ? t.misskey.showLess
                                : t.misskey.showMore,
                          ),
                        )
                      else
                        Tooltip(
                          message: isSubsetExpanded.value
                              ? t.misskey.showLess
                              : t.misskey.showMore,
                          child: ExpandIcon(
                            isExpanded: isSubsetExpanded.value,
                            onPressed: (value) =>
                                isSubsetExpanded.value = !value,
                          ),
                        ),
                    ],
                  ),
                  if (isSubsetExpanded.value)
                    Wrap(
                      spacing: 2.0,
                      runSpacing: 2.0,
                      children: [
                        ...WebFontSubset.values
                            .toSet()
                            .difference(subsets.value)
                            .map(
                              (subset) => Hero(
                                tag: subset,
                                child: InputChip(
                                  label: Text(subset.name.capitalize()),
                                  onSelected: (_) => subsets.value = {
                                    ...subsets.value,
                                    subset,
                                  },
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                              ),
                            ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListTile(
              title: Text(t.misskey.category),
              subtitle: Wrap(
                spacing: 2.0,
                runSpacing: 2.0,
                children: WebFontCategory.values
                    .map(
                      (cat) => InputChip(
                        label: Text(cat.name.capitalize()),
                        selected: cat == category.value,
                        onSelected: (value) =>
                            category.value = value ? cat : null,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8.0)),
          if (fonts.isEmpty)
            SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(t.misskey.nothing),
                ),
              ),
            )
          else
            SliverList.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Material(
                  borderRadius: BorderRadiusGeometry.vertical(
                    top: index == 0 ? const Radius.circular(8.0) : Radius.zero,
                    bottom: index == fonts.length - 1
                        ? const Radius.circular(8.0)
                        : Radius.zero,
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: _FontPreview(font: fonts[index]),
                ),
              ),
              itemCount: fonts.length,
            ),
          const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
        ],
      ),
    );
  }
}

class _FontPreview extends ConsumerWidget {
  const _FontPreview({required this.font});

  final WebFont font;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(font.family),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(font.category.name.capitalize()),
          Text(
            font.subsets.map((subset) => subset.name.capitalize()).join(', '),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      trailing: defaultTargetPlatform != TargetPlatform.linux
          ? IconButton(
              tooltip: t.misskey.preview,
              onPressed: () async {
                final cacheDir = await getApplicationCacheDirectory();
                if (!context.mounted) return;
                if (GoogleFonts.asMap().containsKey(font.family)) {
                  await showDialog<void>(
                    context: context,
                    builder: (context) => _FontPreviewDialog(
                      fontFamily: font.family,
                      appCachePath: cacheDir.path,
                    ),
                  );
                } else {
                  await showDialog<void>(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: SizedBox.square(
                        dimension: 400.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 16.0,
                          children: [
                            Text(
                              font.family,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontFamily: font.family,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ...const LineSplitter()
                                .convert(t.misskey.introMisskey)
                                .map(
                                  (line) => Text(
                                    line,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: font.family,
                                    ),
                                  ),
                                ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              },
              icon: const Icon(Icons.launch),
            )
          : null,
      onTap: () => context.pop(font.family),
      onLongPress: () => showModalBottomSheet<void>(
        context: context,
        builder: (context) => UrlSheet(
          url: Uri(
            scheme: 'https',
            host: 'fonts.google.com',
            pathSegments: ['specimen', font.family],
          ).toString(),
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
    );
  }
}

class _FontPreviewDialog extends HookWidget {
  const _FontPreviewDialog({
    required this.fontFamily,
    required this.appCachePath,
  });

  final String fontFamily;
  final String appCachePath;

  @override
  Widget build(BuildContext context) {
    final url = Uri(
      scheme: 'https',
      host: 'fonts.googleapis.com',
      pathSegments: ['css2'],
      queryParameters: {
        'family': fontFamily,
        'display': 'swap',
        'text': '$fontFamily${t.misskey.introMisskey}',
      },
    );
    final escapedFontFamily = htmlEscape.convert(fontFamily);
    final escapedIntroMisskey = const LineSplitter()
        .convert(t.misskey.introMisskey)
        .map((line) => '<p>${htmlEscape.convert(line)}</p>')
        .join();
    final isLoading = useState(true);
    final theme = Theme.of(context);

    return AlertDialog(
      content: SizedBox.square(
        dimension: 400.0,
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (isLoading.value) const CircularProgressIndicator(),
            InAppWebView(
              initialData: InAppWebViewInitialData(
                data:
                    '''
<html>

  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="$url" rel="stylesheet">
    <style>
      body {
        color: #${theme.colorScheme.onSurface.hex};
        font-family: "$fontFamily";
      }
    </style>
  </head>

  <body>
    <h2>$escapedFontFamily</h2>
    $escapedIntroMisskey
  </body>

</html>
''',
              ),
              initialSettings: InAppWebViewSettings(
                appCachePath: appCachePath,
                transparentBackground: true,
              ),
              onLoadStop: (_, _) => isLoading.value = false,
            ),
          ],
        ),
      ),
    );
  }
}

extension on String {
  String capitalize() {
    return [
      this[0].toUpperCase(),
      substring(1).split(RegExp('(?=[A-Z])')).join(' '),
    ].join();
  }
}

int _floatToInt8(double x) {
  return (x * 255.0).round() & 0xff;
}

extension on Color {
  String get hex {
    final value =
        _floatToInt8(r) << 24 |
        _floatToInt8(g) << 16 |
        _floatToInt8(b) << 8 |
        _floatToInt8(a) << 0;
    return value.toRadixString(16).padLeft(8, '0');
  }
}
