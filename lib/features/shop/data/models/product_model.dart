import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class SellerModel with _$SellerModel {
  const factory SellerModel({
    required String id,
    required String name,
    required String location,
    required double rating,
  }) = _SellerModel;

  factory SellerModel.fromJson(Map<String, dynamic> json) =>
      _$SellerModelFromJson(json);
}

extension SellerModelX on SellerModel {
  SellerEntity toEntity() => SellerEntity(
        id: id,
        name: name,
        location: location,
        rating: rating,
      );
}

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    @JsonKey(name: 'seller_id') required String sellerId,
    @JsonKey(name: 'seller_name') required String sellerName,
    required String name,
    required String category,
    required int price,
    @JsonKey(name: 'discount_price') int? discountPrice,
    @JsonKey(name: 'image_url') String? imageUrl,
    required int stock,
    @JsonKey(name: 'is_wishlisted') required bool isWishlisted,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

extension ProductModelX on ProductModel {
  ProductEntity toEntity() => ProductEntity(
        id: id,
        sellerId: sellerId,
        sellerName: sellerName,
        name: name,
        category: category,
        price: price,
        discountPrice: discountPrice,
        imageUrl: imageUrl,
        stock: stock,
        isWishlisted: isWishlisted,
      );
}

@freezed
abstract class ProductDetailModel with _$ProductDetailModel {
  const factory ProductDetailModel({
    required String id,
    @JsonKey(name: 'seller_id') required String sellerId,
    @JsonKey(name: 'seller_name') required String sellerName,
    required String name,
    required String category,
    required int price,
    @JsonKey(name: 'discount_price') int? discountPrice,
    @JsonKey(name: 'image_url') String? imageUrl,
    required int stock,
    @JsonKey(name: 'is_wishlisted') required bool isWishlisted,
    String? description,
    SellerModel? seller,
  }) = _ProductDetailModel;

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailModelFromJson(json);
}

extension ProductDetailModelX on ProductDetailModel {
  ProductDetailEntity toEntity() => ProductDetailEntity(
        id: id,
        sellerId: sellerId,
        sellerName: sellerName,
        name: name,
        category: category,
        price: price,
        discountPrice: discountPrice,
        imageUrl: imageUrl,
        stock: stock,
        isWishlisted: isWishlisted,
        description: description,
        seller: seller?.toEntity(),
      );
}
