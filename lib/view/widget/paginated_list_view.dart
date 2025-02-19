import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/inifite_scroll_extent_threshold.dart';
import '../../constant/max_content_width.dart';
import '../../model/pagination_state.dart';
import '../../provider/general_settings_notifier_provider.dart';
import 'pagination_bottom_widget.dart';

class PaginatedListView<T> extends HookConsumerWidget {
  const PaginatedListView({
    super.key,
    this.controller,
    this.header,
    required this.paginationState,
    required this.itemBuilder,
    this.footer,
    this.onRefresh,
    this.loadMore,
    this.panel = true,
    this.noItemsLabel,
  });

  final ScrollController? controller;
  final Widget? header;
  final AsyncValue<PaginationState<T>>? paginationState;
  final Widget Function(BuildContext context, T item) itemBuilder;
  final Widget? footer;
  final Future<void> Function()? onRefresh;
  final void Function(bool skipError)? loadMore;
  final bool panel;
  final String? noItemsLabel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = this.controller ?? useScrollController();
    final isAtBottom = useState(false);
    useEffect(() {
      void callback() {
        if (controller.position.extentAfter < infiniteScrollExtentThreshold) {
          if (!isAtBottom.value) {
            loadMore?.call(false);
            isAtBottom.value = true;
          }
        } else {
          isAtBottom.value = false;
        }
      }

      if (ref.read(generalSettingsNotifierProvider).enableInfiniteScroll) {
        controller.addListener(callback);
      }
      return () => controller.removeListener(callback);
    }, [loadMore]);

    return RefreshIndicator(
      onRefresh: onRefresh ?? () async {},
      child: CustomScrollView(
        controller: controller,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          if (header case final header?) header,
          if (paginationState case final paginationState?) ...[
            if (paginationState.valueOrNull?.items case final items?
                when items.isNotEmpty)
              SliverList.separated(
                itemBuilder:
                    (context, index) => Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: index == 0 ? 8.0 : 0.0,
                          left: 8.0,
                          right: 8.0,
                          bottom: index == items.length - 1 ? 8.0 : 0.0,
                        ),
                        width: maxContentWidth,
                        child: Material(
                          color:
                              panel
                                  ? Theme.of(context).colorScheme.surface
                                  : null,
                          borderRadius: BorderRadius.vertical(
                            top:
                                panel && index == 0
                                    ? const Radius.circular(8.0)
                                    : Radius.zero,
                            bottom:
                                panel && index == items.length - 1
                                    ? const Radius.circular(8.0)
                                    : Radius.zero,
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: itemBuilder(context, items[index]),
                        ),
                      ),
                    ),
                separatorBuilder:
                    (context, index) => Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        width: maxContentWidth,
                        child:
                            panel
                                ? const Divider(height: 0.0)
                                : const SizedBox(height: 8.0),
                      ),
                    ),
                itemCount: items.length,
              ),
            SliverToBoxAdapter(
              child: Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: PaginationBottomWidget(
                    paginationState: paginationState,
                    noItemsLabel: noItemsLabel,
                    loadMore: loadMore != null ? () => loadMore!(true) : null,
                    height: 120.0,
                  ),
                ),
              ),
            ),
          ],
          if (footer case final footer?) footer,
        ],
      ),
    );
  }
}
