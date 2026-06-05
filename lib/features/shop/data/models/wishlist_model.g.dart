// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WishlistToggleModel _$WishlistToggleModelFromJson(Map<String, dynamic> json) =>
    _WishlistToggleModel(
      productId: json['product_id'] as String,
      isWishlisted: json['is_wishlisted'] as bool,
    );

Map<String, dynamic> _$WishlistToggleModelToJson(
  _WishlistToggleModel instance,
) => <String, dynamic>{
  'product_id': instance.productId,
  'is_wishlisted': instance.isWishlisted,
};
