import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/pagination_state.dart';
import 'error_message.dart';

class PaginationBottomWidget<T> extends StatelessWidget {
  const PaginationBottomWidget({
    super.key,
    required this.paginationState,
    this.noItemsLabel,
    this.loadMore,
    this.reversed = false,
    this.height,
  });

  final AsyncValue<PaginationState<T>> paginationState;
  final String? noItemsLabel;
  final void Function()? loadMore;
  final bool reversed;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final value = paginationState.value;

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: height ?? 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (paginationState.error != null)
            ErrorMessage(
              error: paginationState.error,
              stackTrace: paginationState.stackTrace,
            ),
          if (paginationState.isLoading)
            Center(
              child: Padding(
                padding: EdgeInsets.all(value == null ? 24.0 : 8.0),
                child: const CircularProgressIndicator(),
              ),
            )
          else if (value == null || !value.isLastLoaded)
            IconButton(
              onPressed: loadMore != null ? () => loadMore!() : null,
              icon: Icon(
                reversed ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              ),
            )
          else if (value.items.isEmpty && noItemsLabel != null)
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(noItemsLabel!),
            ),
        ],
      ),
    );
  }
}
