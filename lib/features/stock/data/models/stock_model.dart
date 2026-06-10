import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/stock_entity.dart';

part 'stock_model.freezed.dart';
part 'stock_model.g.dart';

@freezed
abstract class StockModel with _$StockModel {
  const factory StockModel({
    required int id,
    required String name,
    required int price,
    required int quantity,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _StockModel;

  factory StockModel.fromJson(Map<String, dynamic> json) =>
      _$StockModelFromJson(json);
}

extension StockModelX on StockModel {
  StockEntity toEntity() => StockEntity(
        id: id,
        name: name,
        price: price,
        quantity: quantity,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
