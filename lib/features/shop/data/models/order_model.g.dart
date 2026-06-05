// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    _OrderItemModel(
      id: json['id'] as String,
      productId: json['product_id'] as String,
      productName: json['name'] as String,
      sellerId: json['seller_id'] as String,
      price: (json['price'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      subtotal: (json['subtotal'] as num).toInt(),
    );

Map<String, dynamic> _$OrderItemModelToJson(_OrderItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'name': instance.productName,
      'seller_id': instance.sellerId,
      'price': instance.price,
      'quantity': instance.quantity,
      'subtotal': instance.subtotal,
    };

_OrderSummaryModel _$OrderSummaryModelFromJson(Map<String, dynamic> json) =>
    _OrderSummaryModel(
      id: json['id'] as String,
      status: json['status'] as String,
      shippingMethod: json['shipping_method'] as String,
      total: (json['total'] as num).toInt(),
      itemCount: (json['item_count'] as num).toInt(),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$OrderSummaryModelToJson(_OrderSummaryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'shipping_method': instance.shippingMethod,
      'total': instance.total,
      'item_count': instance.itemCount,
      'created_at': instance.createdAt,
    };

_OrderDetailModel _$OrderDetailModelFromJson(Map<String, dynamic> json) =>
    _OrderDetailModel(
      id: json['id'] as String,
      status: json['status'] as String,
      shippingAddressId: json['shipping_address_id'] as String?,
      shippingMethod: json['shipping_method'] as String,
      paymentMethod: json['payment_method'] as String,
      useProductProtection: json['use_product_protection'] as bool,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      subtotal: (json['subtotal'] as num).toInt(),
      shippingCost: (json['shipping_cost'] as num).toInt(),
      protectionFee: (json['protection_fee'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$OrderDetailModelToJson(_OrderDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'shipping_address_id': instance.shippingAddressId,
      'shipping_method': instance.shippingMethod,
      'payment_method': instance.paymentMethod,
      'use_product_protection': instance.useProductProtection,
      'items': instance.items,
      'subtotal': instance.subtotal,
      'shipping_cost': instance.shippingCost,
      'protection_fee': instance.protectionFee,
      'total': instance.total,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
