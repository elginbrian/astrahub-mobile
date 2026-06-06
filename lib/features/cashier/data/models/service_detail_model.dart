import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/service_detail_entity.dart';
import 'service_item_model.dart';

part 'service_detail_model.freezed.dart';
part 'service_detail_model.g.dart';

@freezed
abstract class ServiceDetailModel with _$ServiceDetailModel {
  const factory ServiceDetailModel({
    required String id,
    @JsonKey(name: 'customer_name') required String customerName,
    @JsonKey(name: 'vehicle_type') required String vehicleType,
    @JsonKey(name: 'plate_number') required String plateNumber,
    @JsonKey(name: 'service_type_id') String? serviceTypeId,
    String? notes,
    @JsonKey(name: 'voice_note_url') String? voiceNoteUrl,
    required String status,
    @JsonKey(name: 'payment_status') required String paymentStatus,
    @Default([]) List<ServiceItemModel> items,
    required int total,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _ServiceDetailModel;

  factory ServiceDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDetailModelFromJson(json);
}

extension ServiceDetailModelX on ServiceDetailModel {
  ServiceDetailEntity toEntity() => ServiceDetailEntity(
        id: id,
        customerName: customerName,
        vehicleType: vehicleType,
        plateNumber: plateNumber,
        serviceTypeId: serviceTypeId,
        notes: notes,
        voiceNoteUrl: voiceNoteUrl,
        status: status,
        paymentStatus: paymentStatus,
        items: items.map((e) => e.toEntity()).toList(),
        total: total,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
