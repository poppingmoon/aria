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
  });

  final AsyncValue<PaginationState<T>> paginationState;
  final String? noItemsLabel;
  final void Function()? loadMore;
  final bool reversed;

  @override
  Widget build(BuildContext context) {
    final value = paginationState.valueOrNull;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (paginationState.error != null)
          ErrorMessage(
            error: paginationState.error,
            stackTrace: paginationState.stackTrace,
          ),
        if (paginationState.isLoading)
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
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
            padding: const EdgeInsets.all(8.0),
            child: Text(noItemsLabel!),
          ),
      ],
    );
  }
}
