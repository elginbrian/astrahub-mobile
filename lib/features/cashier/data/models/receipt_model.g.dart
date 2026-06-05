// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReceiptModel _$ReceiptModelFromJson(Map<String, dynamic> json) =>
    _ReceiptModel(
      serviceId: json['service_id'] as String,
      customerName: json['customer_name'] as String,
      vehicleType: json['vehicle_type'] as String,
      plateNumber: json['plate_number'] as String,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => ServiceItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      total: (json['total'] as num).toInt(),
      amountPaid: (json['amount_paid'] as num).toInt(),
      change: (json['change'] as num).toInt(),
      paymentMethod: json['payment_method'] as String,
      paidAt: json['paid_at'] as String,
    );

Map<String, dynamic> _$ReceiptModelToJson(_ReceiptModel instance) =>
    <String, dynamic>{
      'service_id': instance.serviceId,
      'customer_name': instance.customerName,
      'vehicle_type': instance.vehicleType,
      'plate_number': instance.plateNumber,
      'items': instance.items,
      'total': instance.total,
      'amount_paid': instance.amountPaid,
      'change': instance.change,
      'payment_method': instance.paymentMethod,
      'paid_at': instance.paidAt,
    };
