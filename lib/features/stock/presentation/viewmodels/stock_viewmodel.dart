import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../domain/repositories/stock_repository.dart';
import '../../../cashier/presentation/viewmodels/cashier_viewmodel.dart';
import 'stock_state.dart';

part 'stock_viewmodel.g.dart';

@riverpod
class StockViewModel extends _$StockViewModel {
  late StockRepository _repository;

  @override
  StockState build() {
    _repository = getIt<StockRepository>();
    Future.microtask(() => loadStocks());
    return const StockState();
  }

  Future<void> loadStocks() async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await _repository.getStocks();
    
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, error: failure.message),
      (stocks) => state = state.copyWith(isLoading: false, stocks: stocks),
    );
  }

  void setSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void setSortType(StockSortType type) {
    state = state.copyWith(sortType: type);
  }

  Future<bool> createStock(String name, int price, int quantity) async {
    state = state.copyWith(isSubmitting: true, error: null);
    final result = await _repository.createStock(name: name, price: price, quantity: quantity);
    
    return result.fold(
      (failure) {
        state = state.copyWith(isSubmitting: false, error: failure.message);
        return false;
      },
      (stock) {
        state = state.copyWith(isSubmitting: false, stocks: [...state.stocks, stock]);
        ref.invalidate(cashierViewModelProvider);
        return true;
      },
    );
  }

  Future<bool> updateStock(int id, String name, int price, int quantity) async {
    state = state.copyWith(isSubmitting: true, error: null);
    final result = await _repository.updateStock(id: id, name: name, price: price, quantity: quantity);
    
    return result.fold(
      (failure) {
        state = state.copyWith(isSubmitting: false, error: failure.message);
        return false;
      },
      (updatedStock) {
        final newStocks = state.stocks.map((s) => s.id == id ? updatedStock : s).toList();
        state = state.copyWith(isSubmitting: false, stocks: newStocks);
        ref.invalidate(cashierViewModelProvider);
        return true;
      },
    );
  }

  Future<bool> deleteStock(int id) async {
    state = state.copyWith(isSubmitting: true, error: null);
    final result = await _repository.deleteStock(id);
    
    return result.fold(
      (failure) {
        state = state.copyWith(isSubmitting: false, error: failure.message);
        return false;
      },
      (_) {
        final newStocks = state.stocks.where((s) => s.id != id).toList();
        state = state.copyWith(isSubmitting: false, stocks: newStocks);
        ref.invalidate(cashierViewModelProvider);
        return true;
      },
    );
  }
}
