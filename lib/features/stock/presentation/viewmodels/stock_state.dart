import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/stock_entity.dart';

part 'stock_state.freezed.dart';

@freezed
abstract class StockState with _$StockState {
  const factory StockState({
    @Default(false) bool isLoading,
    @Default([]) List<StockEntity> stocks,
    String? error,
  }) = _StockState;
}
