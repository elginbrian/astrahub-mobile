import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/service_summary_entity.dart';

part 'service_summary_model.freezed.dart';
part 'service_summary_model.g.dart';

@freezed
abstract class ServiceSummaryModel with _$ServiceSummaryModel {
  const factory ServiceSummaryModel({
    required String id,
    @JsonKey(name: 'customer_name') required String customerName,
    @JsonKey(name: 'vehicle_type') required String vehicleType,
    @JsonKey(name: 'plate_number') required String plateNumber,
    required String status,
    @JsonKey(name: 'payment_status') required String paymentStatus,
    required int total,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ServiceSummaryModel;

  factory ServiceSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceSummaryModelFromJson(json);
}

extension ServiceSummaryModelX on ServiceSummaryModel {
  ServiceSummaryEntity toEntity() => ServiceSummaryEntity(
        id: id,
        customerName: customerName,
        vehicleType: vehicleType,
        plateNumber: plateNumber,
        status: status,
        paymentStatus: paymentStatus,
        total: total,
        createdAt: createdAt,
      );
}
