// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceItemModel _$ServiceItemModelFromJson(Map<String, dynamic> json) =>
    _ServiceItemModel(
      id: json['id'] as String,
      itemType: json['item_type'] as String,
      itemId: json['item_id'] as String?,
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
    );

Map<String, dynamic> _$ServiceItemModelToJson(_ServiceItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_type': instance.itemType,
      'item_id': instance.itemId,
      'name': instance.name,
      'price': instance.price,
    };
