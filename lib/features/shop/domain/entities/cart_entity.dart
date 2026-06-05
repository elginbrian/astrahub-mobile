import 'package:equatable/equatable.dart';

class CartItemEntity extends Equatable {
  const CartItemEntity({
    required this.id,
    required this.productId,
    required this.productName,
    required this.sellerId,
    required this.sellerName,
    required this.price,
    this.discountPrice,
    this.imageUrl,
    required this.quantity,
    required this.subtotal,
  });

  final String id;
  final String productId;
  final String productName;
  final String sellerId;
  final String sellerName;
  final int price;
  final int? discountPrice;
  final String? imageUrl;
  final int quantity;
  final int subtotal;

  @override
  List<Object?> get props => [
        id,
        productId,
        productName,
        sellerId,
        sellerName,
        price,
        discountPrice,
        imageUrl,
        quantity,
        subtotal,
      ];
}

class CartEntity extends Equatable {
  const CartEntity({
    required this.items,
    required this.total,
    required this.itemCount,
  });

  final List<CartItemEntity> items;
  final int total;
  final int itemCount;

  @override
  List<Object?> get props => [items, total, itemCount];
}
