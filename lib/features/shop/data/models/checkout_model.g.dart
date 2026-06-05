// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckoutItemSummaryModel _$CheckoutItemSummaryModelFromJson(
  Map<String, dynamic> json,
) => _CheckoutItemSummaryModel(
  productName: json['product_name'] as String,
  quantity: (json['quantity'] as num).toInt(),
  price: (json['price'] as num).toInt(),
  subtotal: (json['subtotal'] as num).toInt(),
);

Map<String, dynamic> _$CheckoutItemSummaryModelToJson(
  _CheckoutItemSummaryModel instance,
) => <String, dynamic>{
  'product_name': instance.productName,
  'quantity': instance.quantity,
  'price': instance.price,
  'subtotal': instance.subtotal,
};

_CheckoutSummaryModel _$CheckoutSummaryModelFromJson(
  Map<String, dynamic> json,
) => _CheckoutSummaryModel(
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => CheckoutItemSummaryModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  subtotal: (json['subtotal'] as num).toInt(),
  shippingCost: (json['shipping_cost'] as num).toInt(),
  protectionFee: (json['protection_fee'] as num).toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$CheckoutSummaryModelToJson(
  _CheckoutSummaryModel instance,
) => <String, dynamic>{
  'items': instance.items,
  'subtotal': instance.subtotal,
  'shipping_cost': instance.shippingCost,
  'protection_fee': instance.protectionFee,
  'total': instance.total,
};
