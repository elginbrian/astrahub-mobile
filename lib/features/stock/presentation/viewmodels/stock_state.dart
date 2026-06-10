import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/stock_entity.dart';

part 'stock_state.freezed.dart';

enum StockSortType { nameAsc, nameDesc, stockAsc, stockDesc }

@freezed
abstract class StockState with _$StockState {
  const StockState._();

  const factory StockState({
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default([]) List<StockEntity> stocks,
    @Default('') String searchQuery,
    @Default(StockSortType.nameAsc) StockSortType sortType,
    String? error,
  }) = _StockState;

  List<StockEntity> get filteredAndSortedStocks {
    var filtered = stocks.where((s) => s.name.toLowerCase().contains(searchQuery.toLowerCase())).toList();
    filtered.sort((a, b) {
      switch (sortType) {
        case StockSortType.nameAsc:
          return a.name.toLowerCase().compareTo(b.name.toLowerCase());
        case StockSortType.nameDesc:
          return b.name.toLowerCase().compareTo(a.name.toLowerCase());
        case StockSortType.stockAsc:
          return a.quantity.compareTo(b.quantity);
        case StockSortType.stockDesc:
          return b.quantity.compareTo(a.quantity);
      }
    });
    return filtered;
  }
}
