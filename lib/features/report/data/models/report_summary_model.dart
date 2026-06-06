import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/report_summary_entity.dart';

part 'report_summary_model.freezed.dart';
part 'report_summary_model.g.dart';

@freezed
abstract class KasirSummaryModel with _$KasirSummaryModel {
  const factory KasirSummaryModel({
    @JsonKey(name: 'total_revenue') required int totalRevenue,
    @JsonKey(name: 'service_count') required int serviceCount,
    @JsonKey(name: 'paid_count') required int paidCount,
  }) = _KasirSummaryModel;

  factory KasirSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$KasirSummaryModelFromJson(json);
}

extension KasirSummaryModelX on KasirSummaryModel {
  KasirSummaryEntity toEntity() => KasirSummaryEntity(
        totalRevenue: totalRevenue,
        serviceCount: serviceCount,
        paidCount: paidCount,
      );
}

@freezed
abstract class ShopSummaryModel with _$ShopSummaryModel {
  const factory ShopSummaryModel({
    @JsonKey(name: 'order_count') required int orderCount,
    @JsonKey(name: 'total_spent') required int totalSpent,
  }) = _ShopSummaryModel;

  factory ShopSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ShopSummaryModelFromJson(json);
}

extension ShopSummaryModelX on ShopSummaryModel {
  ShopSummaryEntity toEntity() => ShopSummaryEntity(
        orderCount: orderCount,
        totalSpent: totalSpent,
      );
}

@freezed
abstract class ReportSummaryModel with _$ReportSummaryModel {
  const factory ReportSummaryModel({
    required String period,
    required KasirSummaryModel kasir,
    required ShopSummaryModel shop,
  }) = _ReportSummaryModel;

  factory ReportSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ReportSummaryModelFromJson(json);
}

extension ReportSummaryModelX on ReportSummaryModel {
  ReportSummaryEntity toEntity() => ReportSummaryEntity(
        period: period,
        kasir: kasir.toEntity(),
        shop: shop.toEntity(),
      );
}
