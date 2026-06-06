// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InsightModel _$InsightModelFromJson(Map<String, dynamic> json) =>
    _InsightModel(
      type: json['type'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      metric: json['metric'] as String?,
    );

Map<String, dynamic> _$InsightModelToJson(_InsightModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'metric': instance.metric,
    };

_InsightResponseModel _$InsightResponseModelFromJson(
  Map<String, dynamic> json,
) => _InsightResponseModel(
  insights:
      (json['insights'] as List<dynamic>?)
          ?.map((e) => InsightModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$InsightResponseModelToJson(
  _InsightResponseModel instance,
) => <String, dynamic>{'insights': instance.insights};
