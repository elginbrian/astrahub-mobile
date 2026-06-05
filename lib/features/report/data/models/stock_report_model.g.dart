// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockStatusCountModel _$StockStatusCountModelFromJson(
  Map<String, dynamic> json,
) => _StockStatusCountModel(
  kritis: (json['kritis'] as num).toInt(),
  menipis: (json['menipis'] as num).toInt(),
  aman: (json['aman'] as num).toInt(),
);

Map<String, dynamic> _$StockStatusCountModelToJson(
  _StockStatusCountModel instance,
) => <String, dynamic>{
  'kritis': instance.kritis,
  'menipis': instance.menipis,
  'aman': instance.aman,
};

_StockItemModel _$StockItemModelFromJson(Map<String, dynamic> json) =>
    _StockItemModel(
      productId: json['product_id'] as String,
      productName: json['product_name'] as String,
      category: json['category'] as String,
      stock: (json['stock'] as num).toInt(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$StockItemModelToJson(_StockItemModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'category': instance.category,
      'stock': instance.stock,
      'status': instance.status,
    };

_StockReportModel _$StockReportModelFromJson(Map<String, dynamic> json) =>
    _StockReportModel(
      period: json['period'] as String,
      summary: StockStatusCountModel.fromJson(
        json['summary'] as Map<String, dynamic>,
      ),
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => StockItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StockReportModelToJson(_StockReportModel instance) =>
    <String, dynamic>{
      'period': instance.period,
      'summary': instance.summary,
      'items': instance.items,
    };
