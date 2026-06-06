// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    _CartItemModel(
      id: json['id'] as String,
      productId: json['product_id'] as String,
      productName: json['product_name'] as String,
      sellerId: json['seller_id'] as String,
      sellerName: json['seller_name'] as String,
      price: (json['price'] as num).toInt(),
      discountPrice: (json['discount_price'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
      quantity: (json['quantity'] as num).toInt(),
      subtotal: (json['subtotal'] as num).toInt(),
    );

Map<String, dynamic> _$CartItemModelToJson(_CartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'seller_id': instance.sellerId,
      'seller_name': instance.sellerName,
      'price': instance.price,
      'discount_price': instance.discountPrice,
      'image_url': instance.imageUrl,
      'quantity': instance.quantity,
      'subtotal': instance.subtotal,
    };

_CartModel _$CartModelFromJson(Map<String, dynamic> json) => _CartModel(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  total: (json['total'] as num).toInt(),
  itemCount: (json['item_count'] as num).toInt(),
);

Map<String, dynamic> _$CartModelToJson(_CartModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'item_count': instance.itemCount,
    };
