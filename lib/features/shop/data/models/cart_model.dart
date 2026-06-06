import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/cart_entity.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
abstract class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    required String id,
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'product_name') required String productName,
    @JsonKey(name: 'seller_id') required String sellerId,
    @JsonKey(name: 'seller_name') required String sellerName,
    required int price,
    @JsonKey(name: 'discount_price') int? discountPrice,
    @JsonKey(name: 'image_url') String? imageUrl,
    required int quantity,
    required int subtotal,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}

extension CartItemModelX on CartItemModel {
  CartItemEntity toEntity() => CartItemEntity(
        id: id,
        productId: productId,
        productName: productName,
        sellerId: sellerId,
        sellerName: sellerName,
        price: price,
        discountPrice: discountPrice,
        imageUrl: imageUrl,
        quantity: quantity,
        subtotal: subtotal,
      );
}

@freezed
abstract class CartModel with _$CartModel {
  const factory CartModel({
    @Default([]) List<CartItemModel> items,
    required int total,
    @JsonKey(name: 'item_count') required int itemCount,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

extension CartModelX on CartModel {
  CartEntity toEntity() => CartEntity(
        items: items.map((e) => e.toEntity()).toList(),
        total: total,
        itemCount: itemCount,
      );
}
