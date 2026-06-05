import 'package:equatable/equatable.dart';

class ServiceSummaryEntity extends Equatable {
  const ServiceSummaryEntity({
    required this.id,
    required this.customerName,
    required this.vehicleType,
    required this.plateNumber,
    required this.status,
    required this.paymentStatus,
    required this.total,
    required this.createdAt,
  });

  final String id;
  final String customerName;
  final String vehicleType;
  final String plateNumber;
  final String status;
  final String paymentStatus;
  final int total;
  final String createdAt;

  @override
  List<Object?> get props => [
        id,
        customerName,
        vehicleType,
        plateNumber,
        status,
        paymentStatus,
        total,
        createdAt,
      ];
}
