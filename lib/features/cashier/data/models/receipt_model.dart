import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/receipt_entity.dart';
import 'service_item_model.dart';

part 'receipt_model.freezed.dart';
part 'receipt_model.g.dart';

@freezed
abstract class ReceiptModel with _$ReceiptModel {
  const factory ReceiptModel({
    @JsonKey(name: 'service_id') required String serviceId,
    @JsonKey(name: 'customer_name') required String customerName,
    @JsonKey(name: 'vehicle_type') required String vehicleType,
    @JsonKey(name: 'plate_number') required String plateNumber,
    @Default([]) List<ServiceItemModel> items,
    required int total,
    @JsonKey(name: 'amount_paid') required int amountPaid,
    required int change,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @JsonKey(name: 'paid_at') required String paidAt,
  }) = _ReceiptModel;

  factory ReceiptModel.fromJson(Map<String, dynamic> json) =>
      _$ReceiptModelFromJson(json);
}

extension ReceiptModelX on ReceiptModel {
  ReceiptEntity toEntity() => ReceiptEntity(
        serviceId: serviceId,
        customerName: customerName,
        vehicleType: vehicleType,
        plateNumber: plateNumber,
        items: items.map((e) => e.toEntity()).toList(),
        total: total,
        amountPaid: amountPaid,
        change: change,
        paymentMethod: paymentMethod,
        paidAt: paidAt,
      );
}
