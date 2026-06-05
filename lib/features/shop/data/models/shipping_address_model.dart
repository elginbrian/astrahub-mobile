import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/shipping_address_entity.dart';

part 'shipping_address_model.freezed.dart';
part 'shipping_address_model.g.dart';

@freezed
abstract class ShippingAddressModel with _$ShippingAddressModel {
  const factory ShippingAddressModel({
    required String id,
    required String label,
    @JsonKey(name: 'recipient_name') required String recipientName,
    required String phone,
    required String address,
    required String province,
    required String city,
    @JsonKey(name: 'postal_code') String? postalCode,
    @JsonKey(name: 'is_default') required bool isDefault,
  }) = _ShippingAddressModel;

  factory ShippingAddressModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressModelFromJson(json);
}

extension ShippingAddressModelX on ShippingAddressModel {
  ShippingAddressEntity toEntity() => ShippingAddressEntity(
        id: id,
        label: label,
        recipientName: recipientName,
        phone: phone,
        address: address,
        province: province,
        city: city,
        postalCode: postalCode,
        isDefault: isDefault,
      );
}
