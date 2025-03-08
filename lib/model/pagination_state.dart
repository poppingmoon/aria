import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_state.freezed.dart';

@freezed
abstract class PaginationState<T> with _$PaginationState<T> {
  const factory PaginationState({
    @Default([]) List<T> items,
    @Default(false) bool isLastLoaded,
  }) = _PaginationState;

  factory PaginationState.fromIterable(Iterable<T> items) {
    return PaginationState(items: items.toList(), isLastLoaded: items.isEmpty);
  }
}
