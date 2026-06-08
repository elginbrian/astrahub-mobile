import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_entity.freezed.dart';

@freezed
abstract class StockEntity with _$StockEntity {
  const factory StockEntity({
    required int id,
    required String name,
    required int price,
    required int quantity,
    required String createdAt,
    required String updatedAt,
  }) = _StockEntity;
}
