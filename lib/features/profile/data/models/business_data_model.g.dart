// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessDataModel _$BusinessDataModelFromJson(Map<String, dynamic> json) =>
    _BusinessDataModel(
      workshopType: json['workshop_type'] as String?,
      mechanicCount: json['mechanic_count'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      isActivated: json['is_activated'] as bool,
    );

Map<String, dynamic> _$BusinessDataModelToJson(_BusinessDataModel instance) =>
    <String, dynamic>{
      'workshop_type': instance.workshopType,
      'mechanic_count': instance.mechanicCount,
      'address': instance.address,
      'city': instance.city,
      'province': instance.province,
      'is_activated': instance.isActivated,
    };
