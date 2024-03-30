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
    this.onRefresh,
    this.loadMore,
    this.showDivider = true,
    this.noItemsLabel,
  });

  final ScrollController? controller;
  final Widget? header;
  final AsyncValue<PaginationState<T>>? paginationState;
  final Widget Function(BuildContext context, T item) itemBuilder;
  final Future<void> Function()? onRefresh;
  final void Function(bool skipError)? loadMore;
  final bool showDivider;
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
    final items = paginationState?.valueOrNull?.items;
    final length = items?.length ?? 0;

    return RefreshIndicator(
      onRefresh: onRefresh ?? () async {},
      child: CustomScrollView(
        controller: controller,
        slivers: [
          if (header != null) header!,
          if (paginationState != null)
            SliverList.separated(
              itemBuilder: (context, index) {
                if (items != null && index < length) {
                  return itemBuilder(context, items[index]);
                } else {
                  return PaginationBottomWidget(
                    paginationState: paginationState!,
                    noItemsLabel: noItemsLabel,
                    loadMore: loadMore != null ? () => loadMore!(true) : null,
                  );
                }
              },
              separatorBuilder: (context, index) =>
                  showDivider && index < length - 1
                      ? const Divider(height: 0)
                      : const SizedBox.shrink(),
              itemCount: length + 1,
            ),
        ],
      ),
    );
  }
}
