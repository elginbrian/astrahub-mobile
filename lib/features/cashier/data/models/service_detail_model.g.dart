// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceDetailModel _$ServiceDetailModelFromJson(Map<String, dynamic> json) =>
    _ServiceDetailModel(
      id: json['id'] as String,
      customerName: json['customer_name'] as String,
      vehicleType: json['vehicle_type'] as String,
      plateNumber: json['plate_number'] as String,
      serviceTypeId: json['service_type_id'] as String?,
      notes: json['notes'] as String?,
      voiceNoteUrl: json['voice_note_url'] as String?,
      status: json['status'] as String,
      paymentStatus: json['payment_status'] as String,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => ServiceItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      total: (json['total'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$ServiceDetailModelToJson(_ServiceDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_name': instance.customerName,
      'vehicle_type': instance.vehicleType,
      'plate_number': instance.plateNumber,
      'service_type_id': instance.serviceTypeId,
      'notes': instance.notes,
      'voice_note_url': instance.voiceNoteUrl,
      'status': instance.status,
      'payment_status': instance.paymentStatus,
      'items': instance.items,
      'total': instance.total,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
