import 'package:equatable/equatable.dart';

class OrderItemEntity extends Equatable {
  const OrderItemEntity({
    required this.id,
    required this.productId,
    required this.productName,
    required this.sellerId,
    required this.price,
    required this.quantity,
    required this.subtotal,
  });

  final String id;
  final String productId;
  final String productName;
  final String sellerId;
  final int price;
  final int quantity;
  final int subtotal;

  @override
  List<Object?> get props =>
      [id, productId, productName, sellerId, price, quantity, subtotal];
}

class OrderSummaryEntity extends Equatable {
  const OrderSummaryEntity({
    required this.id,
    required this.status,
    required this.shippingMethod,
    required this.total,
    required this.itemCount,
    required this.createdAt,
  });

  final String id;
  final String status;
  final String shippingMethod;
  final int total;
  final int itemCount;
  final String createdAt;

  @override
  List<Object?> get props =>
      [id, status, shippingMethod, total, itemCount, createdAt];
}

class OrderDetailEntity extends Equatable {
  const OrderDetailEntity({
    required this.id,
    required this.status,
    this.shippingAddressId,
    required this.shippingMethod,
    required this.paymentMethod,
    required this.useProductProtection,
    required this.items,
    required this.subtotal,
    required this.shippingCost,
    required this.protectionFee,
    required this.total,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String status;
  final String? shippingAddressId;
  final String shippingMethod;
  final String paymentMethod;
  final bool useProductProtection;
  final List<OrderItemEntity> items;
  final int subtotal;
  final int shippingCost;
  final int protectionFee;
  final int total;
  final String createdAt;
  final String updatedAt;

  @override
  List<Object?> get props => [
        id,
        status,
        shippingAddressId,
        shippingMethod,
        paymentMethod,
        useProductProtection,
        items,
        subtotal,
        shippingCost,
        protectionFee,
        total,
        createdAt,
        updatedAt,
      ];
}
