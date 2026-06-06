// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SellerModel _$SellerModelFromJson(Map<String, dynamic> json) => _SellerModel(
  id: json['id'] as String,
  name: json['name'] as String,
  location: json['location'] as String,
  rating: (json['rating'] as num).toDouble(),
);

Map<String, dynamic> _$SellerModelToJson(_SellerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'rating': instance.rating,
    };

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: json['id'] as String,
      sellerId: json['seller_id'] as String,
      sellerName: json['seller_name'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      price: (json['price'] as num).toInt(),
      discountPrice: (json['discount_price'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
      stock: (json['stock'] as num).toInt(),
      isWishlisted: json['is_wishlisted'] as bool,
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seller_id': instance.sellerId,
      'seller_name': instance.sellerName,
      'name': instance.name,
      'category': instance.category,
      'price': instance.price,
      'discount_price': instance.discountPrice,
      'image_url': instance.imageUrl,
      'stock': instance.stock,
      'is_wishlisted': instance.isWishlisted,
    };

_ProductDetailModel _$ProductDetailModelFromJson(Map<String, dynamic> json) =>
    _ProductDetailModel(
      id: json['id'] as String,
      sellerId: json['seller_id'] as String,
      sellerName: json['seller_name'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      price: (json['price'] as num).toInt(),
      discountPrice: (json['discount_price'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
      stock: (json['stock'] as num).toInt(),
      isWishlisted: json['is_wishlisted'] as bool,
      description: json['description'] as String?,
      seller: json['seller'] == null
          ? null
          : SellerModel.fromJson(json['seller'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductDetailModelToJson(_ProductDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seller_id': instance.sellerId,
      'seller_name': instance.sellerName,
      'name': instance.name,
      'category': instance.category,
      'price': instance.price,
      'discount_price': instance.discountPrice,
      'image_url': instance.imageUrl,
      'stock': instance.stock,
      'is_wishlisted': instance.isWishlisted,
      'description': instance.description,
      'seller': instance.seller,
    };
