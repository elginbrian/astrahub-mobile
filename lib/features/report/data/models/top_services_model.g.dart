// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_services_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopServiceModel _$TopServiceModelFromJson(Map<String, dynamic> json) =>
    _TopServiceModel(
      rank: (json['rank'] as num).toInt(),
      name: json['name'] as String,
      count: (json['count'] as num).toInt(),
      revenue: (json['revenue'] as num).toInt(),
    );

Map<String, dynamic> _$TopServiceModelToJson(_TopServiceModel instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'name': instance.name,
      'count': instance.count,
      'revenue': instance.revenue,
    };

_TopServicesResponseModel _$TopServicesResponseModelFromJson(
  Map<String, dynamic> json,
) => _TopServicesResponseModel(
  period: json['period'] as String,
  services:
      (json['services'] as List<dynamic>?)
          ?.map((e) => TopServiceModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TopServicesResponseModelToJson(
  _TopServicesResponseModel instance,
) => <String, dynamic>{
  'period': instance.period,
  'services': instance.services,
};
