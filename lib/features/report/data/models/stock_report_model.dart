import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/stock_report_entity.dart';

part 'stock_report_model.freezed.dart';
part 'stock_report_model.g.dart';

@freezed
abstract class StockStatusCountModel with _$StockStatusCountModel {
  const factory StockStatusCountModel({
    required int kritis,
    required int menipis,
    required int aman,
  }) = _StockStatusCountModel;

  factory StockStatusCountModel.fromJson(Map<String, dynamic> json) =>
      _$StockStatusCountModelFromJson(json);
}

extension StockStatusCountModelX on StockStatusCountModel {
  StockStatusCountEntity toEntity() => StockStatusCountEntity(
        kritis: kritis,
        menipis: menipis,
        aman: aman,
      );
}

@freezed
abstract class StockItemModel with _$StockItemModel {
  const factory StockItemModel({
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'product_name') required String productName,
    required String category,
    required int stock,
    required String status,
  }) = _StockItemModel;

  factory StockItemModel.fromJson(Map<String, dynamic> json) =>
      _$StockItemModelFromJson(json);
}

extension StockItemModelX on StockItemModel {
  StockItemEntity toEntity() => StockItemEntity(
        productId: productId,
        productName: productName,
        category: category,
        stock: stock,
        status: status,
      );
}

@freezed
abstract class StockReportModel with _$StockReportModel {
  const factory StockReportModel({
    required String period,
    required StockStatusCountModel summary,
    @Default([]) List<StockItemModel> items,
  }) = _StockReportModel;

  factory StockReportModel.fromJson(Map<String, dynamic> json) =>
      _$StockReportModelFromJson(json);
}

extension StockReportModelX on StockReportModel {
  StockReportEntity toEntity() => StockReportEntity(
        period: period,
        summary: summary.toEntity(),
        items: items.map((e) => e.toEntity()).toList(),
      );
}
