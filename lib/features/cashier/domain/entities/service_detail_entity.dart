import 'package:equatable/equatable.dart';

import 'service_item_entity.dart';

class ServiceDetailEntity extends Equatable {
  const ServiceDetailEntity({
    required this.id,
    required this.customerName,
    required this.vehicleType,
    required this.plateNumber,
    this.serviceTypeId,
    this.notes,
    this.voiceNoteUrl,
    required this.status,
    required this.paymentStatus,
    required this.items,
    required this.total,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String customerName;
  final String vehicleType;
  final String plateNumber;
  final String? serviceTypeId;
  final String? notes;
  final String? voiceNoteUrl;
  final String status;
  final String paymentStatus;
  final List<ServiceItemEntity> items;
  final int total;
  final String createdAt;
  final String updatedAt;

  @override
  List<Object?> get props => [
        id,
        customerName,
        vehicleType,
        plateNumber,
        serviceTypeId,
        notes,
        voiceNoteUrl,
        status,
        paymentStatus,
        items,
        total,
        createdAt,
        updatedAt,
      ];
}
