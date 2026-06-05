// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KasirSummaryModel _$KasirSummaryModelFromJson(Map<String, dynamic> json) =>
    _KasirSummaryModel(
      totalRevenue: (json['total_revenue'] as num).toInt(),
      serviceCount: (json['service_count'] as num).toInt(),
      paidCount: (json['paid_count'] as num).toInt(),
    );

Map<String, dynamic> _$KasirSummaryModelToJson(_KasirSummaryModel instance) =>
    <String, dynamic>{
      'total_revenue': instance.totalRevenue,
      'service_count': instance.serviceCount,
      'paid_count': instance.paidCount,
    };

_ShopSummaryModel _$ShopSummaryModelFromJson(Map<String, dynamic> json) =>
    _ShopSummaryModel(
      orderCount: (json['order_count'] as num).toInt(),
      totalSpent: (json['total_spent'] as num).toInt(),
    );

Map<String, dynamic> _$ShopSummaryModelToJson(_ShopSummaryModel instance) =>
    <String, dynamic>{
      'order_count': instance.orderCount,
      'total_spent': instance.totalSpent,
    };

_ReportSummaryModel _$ReportSummaryModelFromJson(Map<String, dynamic> json) =>
    _ReportSummaryModel(
      period: json['period'] as String,
      kasir: KasirSummaryModel.fromJson(json['kasir'] as Map<String, dynamic>),
      shop: ShopSummaryModel.fromJson(json['shop'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReportSummaryModelToJson(_ReportSummaryModel instance) =>
    <String, dynamic>{
      'period': instance.period,
      'kasir': instance.kasir,
      'shop': instance.shop,
    };
