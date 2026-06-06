// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShippingAddressModel _$ShippingAddressModelFromJson(
  Map<String, dynamic> json,
) => _ShippingAddressModel(
  id: json['id'] as String,
  label: json['label'] as String,
  recipientName: json['recipient_name'] as String,
  phone: json['phone'] as String,
  address: json['address'] as String,
  province: json['province'] as String,
  city: json['city'] as String,
  postalCode: json['postal_code'] as String?,
  isDefault: json['is_default'] as bool,
);

Map<String, dynamic> _$ShippingAddressModelToJson(
  _ShippingAddressModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'label': instance.label,
  'recipient_name': instance.recipientName,
  'phone': instance.phone,
  'address': instance.address,
  'province': instance.province,
  'city': instance.city,
  'postal_code': instance.postalCode,
  'is_default': instance.isDefault,
};
