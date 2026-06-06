// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workshop_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkshopInfoModel _$WorkshopInfoModelFromJson(Map<String, dynamic> json) =>
    _WorkshopInfoModel(
      id: json['id'] as String,
      name: json['name'] as String,
      ownerName: json['owner_name'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      province: json['province'] as String?,
      city: json['city'] as String?,
      type: json['type'] as String?,
      mechanicCount: json['mechanic_count'] as String?,
      photoUrl: json['photo_url'] as String?,
      logoUrl: json['logo_url'] as String?,
      isActivated: json['is_activated'] as bool,
      businessScore: (json['business_score'] as num).toInt(),
      astrapayAccount: json['astrapay_account'] as String?,
    );

Map<String, dynamic> _$WorkshopInfoModelToJson(_WorkshopInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner_name': instance.ownerName,
      'phone': instance.phone,
      'address': instance.address,
      'province': instance.province,
      'city': instance.city,
      'type': instance.type,
      'mechanic_count': instance.mechanicCount,
      'photo_url': instance.photoUrl,
      'logo_url': instance.logoUrl,
      'is_activated': instance.isActivated,
      'business_score': instance.businessScore,
      'astrapay_account': instance.astrapayAccount,
    };
