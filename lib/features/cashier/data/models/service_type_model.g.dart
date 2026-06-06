// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceTypeModel _$ServiceTypeModelFromJson(Map<String, dynamic> json) =>
    _ServiceTypeModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ServiceTypeModelToJson(_ServiceTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
