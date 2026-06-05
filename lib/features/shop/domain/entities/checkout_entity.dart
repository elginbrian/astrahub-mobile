import 'package:equatable/equatable.dart';

class CheckoutItemSummaryEntity extends Equatable {
  const CheckoutItemSummaryEntity({
    required this.productName,
    required this.quantity,
    required this.price,
    required this.subtotal,
  });

  final String productName;
  final int quantity;
  final int price;
  final int subtotal;

  @override
  List<Object?> get props => [productName, quantity, price, subtotal];
}

class CheckoutSummaryEntity extends Equatable {
  const CheckoutSummaryEntity({
    required this.items,
    required this.subtotal,
    required this.shippingCost,
    required this.protectionFee,
    required this.total,
  });

  final List<CheckoutItemSummaryEntity> items;
  final int subtotal;
  final int shippingCost;
  final int protectionFee;
  final int total;

  @override
  List<Object?> get props =>
      [items, subtotal, shippingCost, protectionFee, total];
}
