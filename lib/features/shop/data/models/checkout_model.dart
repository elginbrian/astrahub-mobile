import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/checkout_entity.dart';

part 'checkout_model.freezed.dart';
part 'checkout_model.g.dart';

@freezed
abstract class CheckoutItemSummaryModel with _$CheckoutItemSummaryModel {
  const factory CheckoutItemSummaryModel({
    @JsonKey(name: 'product_name') required String productName,
    required int quantity,
    required int price,
    required int subtotal,
  }) = _CheckoutItemSummaryModel;

  factory CheckoutItemSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutItemSummaryModelFromJson(json);
}

extension CheckoutItemSummaryModelX on CheckoutItemSummaryModel {
  CheckoutItemSummaryEntity toEntity() => CheckoutItemSummaryEntity(
        productName: productName,
        quantity: quantity,
        price: price,
        subtotal: subtotal,
      );
}

@freezed
abstract class CheckoutSummaryModel with _$CheckoutSummaryModel {
  const factory CheckoutSummaryModel({
    @Default([]) List<CheckoutItemSummaryModel> items,
    required int subtotal,
    @JsonKey(name: 'shipping_cost') required int shippingCost,
    @JsonKey(name: 'protection_fee') required int protectionFee,
    required int total,
  }) = _CheckoutSummaryModel;

  factory CheckoutSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutSummaryModelFromJson(json);
}

extension CheckoutSummaryModelX on CheckoutSummaryModel {
  CheckoutSummaryEntity toEntity() => CheckoutSummaryEntity(
        items: items.map((e) => e.toEntity()).toList(),
        subtotal: subtotal,
        shippingCost: shippingCost,
        protectionFee: protectionFee,
        total: total,
      );
}
