import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    useEffect(
      () {
        if (ref.read(generalSettingsNotifierProvider).enableInfiniteScroll) {
          controller.addListener(() {
            if (controller.position.extentAfter < 100) {
              if (!isAtBottom.value) {
                loadMore?.call(false);
                isAtBottom.value = true;
              }
            } else if (isAtBottom.value) {
              isAtBottom.value = false;
            }
          });
        }
        return;
      },
      [],
    );

    return RefreshIndicator(
      onRefresh: onRefresh ?? () async {},
      child: Center(
        child: Container(
          width: 800.0,
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomScrollView(
            controller: controller,
            slivers: [
              if (header case final header?) header,
              if (paginationState != null) ...[
                if (paginationState?.valueOrNull
                    case PaginationState(:final items))
                  if (items.isNotEmpty) ...[
                    if (panel)
                      SliverToBoxAdapter(
                        child: Container(
                          height: 8.0,
                          margin: const EdgeInsets.only(top: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                      ),
                    SliverList.separated(
                      itemBuilder: (context, index) => Material(
                        color: panel
                            ? Theme.of(context).colorScheme.surface
                            : null,
                        child: itemBuilder(context, items[index]),
                      ),
                      separatorBuilder: (context, index) => panel
                          ? const Divider(height: 0)
                          : const SizedBox.shrink(),
                      itemCount: items.length,
                    ),
                    if (panel)
                      SliverToBoxAdapter(
                        child: Container(
                          height: 8.0,
                          margin: const EdgeInsets.only(bottom: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                            ),
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                      ),
                  ],
                SliverToBoxAdapter(
                  child: PaginationBottomWidget(
                    paginationState: paginationState!,
                    noItemsLabel: noItemsLabel,
                    loadMore: loadMore != null ? () => loadMore!(true) : null,
                  ),
                ),
              ],
              if (footer case final footer?) footer,
            ],
          ),
        ),
      ),
    );
  }
}
