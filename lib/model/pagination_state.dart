import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_state.freezed.dart';

@freezed
class const PaginationState<T>({
  final List<T> items = const [],
  final bool isLastLoaded = false,
}) with _$PaginationState<T> {
  factory fromIterable(Iterable<T> items) {
    return PaginationState(items: items.toList(), isLastLoaded: items.isEmpty);
  }
}
