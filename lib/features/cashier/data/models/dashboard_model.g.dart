// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) =>
    _DashboardModel(
      revenue: (json['revenue'] as num).toInt(),
      completedServices: (json['completed_services'] as num).toInt(),
      recentServices: (json['recent_services'] as List<dynamic>)
          .map((e) => ServiceSummaryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      stock: json['stock'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$DashboardModelToJson(_DashboardModel instance) =>
    <String, dynamic>{
      'revenue': instance.revenue,
      'completed_services': instance.completedServices,
      'recent_services': instance.recentServices,
      'stock': instance.stock,
    };
