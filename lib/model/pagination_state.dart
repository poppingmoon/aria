import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_state.freezed.dart';

@freezed
class const PaginationState<T>({
  @override final List<T> items = const [],
  @override final bool isLastLoaded = false,
}) with _$PaginationState<T> {
  factory fromIterable(Iterable<T> items) {
    return PaginationState(items: items.toList(), isLastLoaded: items.isEmpty);
  }
}
