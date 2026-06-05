import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/order_entity.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
abstract class OrderItemModel with _$OrderItemModel {
  const factory OrderItemModel({
    required String id,
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'name') required String productName,
    @JsonKey(name: 'seller_id') required String sellerId,
    required int price,
    required int quantity,
    required int subtotal,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);
}

extension OrderItemModelX on OrderItemModel {
  OrderItemEntity toEntity() => OrderItemEntity(
        id: id,
        productId: productId,
        productName: productName,
        sellerId: sellerId,
        price: price,
        quantity: quantity,
        subtotal: subtotal,
      );
}

@freezed
abstract class OrderSummaryModel with _$OrderSummaryModel {
  const factory OrderSummaryModel({
    required String id,
    required String status,
    @JsonKey(name: 'shipping_method') required String shippingMethod,
    required int total,
    @JsonKey(name: 'item_count') required int itemCount,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _OrderSummaryModel;

  factory OrderSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$OrderSummaryModelFromJson(json);
}

extension OrderSummaryModelX on OrderSummaryModel {
  OrderSummaryEntity toEntity() => OrderSummaryEntity(
        id: id,
        status: status,
        shippingMethod: shippingMethod,
        total: total,
        itemCount: itemCount,
        createdAt: createdAt,
      );
}

@freezed
abstract class OrderDetailModel with _$OrderDetailModel {
  const factory OrderDetailModel({
    required String id,
    required String status,
    @JsonKey(name: 'shipping_address_id') String? shippingAddressId,
    @JsonKey(name: 'shipping_method') required String shippingMethod,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @JsonKey(name: 'use_product_protection') required bool useProductProtection,
    @Default([]) List<OrderItemModel> items,
    required int subtotal,
    @JsonKey(name: 'shipping_cost') required int shippingCost,
    @JsonKey(name: 'protection_fee') required int protectionFee,
    required int total,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _OrderDetailModel;

  factory OrderDetailModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailModelFromJson(json);
}

extension OrderDetailModelX on OrderDetailModel {
  OrderDetailEntity toEntity() => OrderDetailEntity(
        id: id,
        status: status,
        shippingAddressId: shippingAddressId,
        shippingMethod: shippingMethod,
        paymentMethod: paymentMethod,
        useProductProtection: useProductProtection,
        items: items.map((e) => e.toEntity()).toList(),
        subtotal: subtotal,
        shippingCost: shippingCost,
        protectionFee: protectionFee,
        total: total,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
