import 'package:equatable/equatable.dart';

class SellerEntity extends Equatable {
  const SellerEntity({
    required this.id,
    required this.name,
    required this.location,
    required this.rating,
  });

  final String id;
  final String name;
  final String location;
  final double rating;

  @override
  List<Object?> get props => [id, name, location, rating];
}

class ProductEntity extends Equatable {
  const ProductEntity({
    required this.id,
    required this.sellerId,
    required this.sellerName,
    required this.name,
    required this.category,
    required this.price,
    this.discountPrice,
    this.imageUrl,
    required this.stock,
    required this.isWishlisted,
  });

  final String id;
  final String sellerId;
  final String sellerName;
  final String name;
  final String category;
  final int price;
  final int? discountPrice;
  final String? imageUrl;
  final int stock;
  final bool isWishlisted;

  @override
  List<Object?> get props => [
        id,
        sellerId,
        sellerName,
        name,
        category,
        price,
        discountPrice,
        imageUrl,
        stock,
        isWishlisted,
      ];
}

class ProductDetailEntity extends ProductEntity {
  const ProductDetailEntity({
    required super.id,
    required super.sellerId,
    required super.sellerName,
    required super.name,
    required super.category,
    required super.price,
    super.discountPrice,
    super.imageUrl,
    required super.stock,
    required super.isWishlisted,
    this.description,
    this.seller,
  });

  final String? description;
  final SellerEntity? seller;

  @override
  List<Object?> get props => [
        ...super.props,
        description,
        seller,
      ];
}
