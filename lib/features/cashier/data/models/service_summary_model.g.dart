// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceSummaryModel _$ServiceSummaryModelFromJson(Map<String, dynamic> json) =>
    _ServiceSummaryModel(
      id: json['id'] as String,
      customerName: json['customer_name'] as String,
      vehicleType: json['vehicle_type'] as String,
      plateNumber: json['plate_number'] as String,
      status: json['status'] as String,
      paymentStatus: json['payment_status'] as String,
      total: (json['total'] as num).toInt(),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$ServiceSummaryModelToJson(
  _ServiceSummaryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'customer_name': instance.customerName,
  'vehicle_type': instance.vehicleType,
  'plate_number': instance.plateNumber,
  'status': instance.status,
  'payment_status': instance.paymentStatus,
  'total': instance.total,
  'created_at': instance.createdAt,
};
