import 'package:equatable/equatable.dart';

import 'service_item_entity.dart';

class ReceiptEntity extends Equatable {
  const ReceiptEntity({
    required this.serviceId,
    required this.customerName,
    required this.vehicleType,
    required this.plateNumber,
    required this.items,
    required this.total,
    required this.amountPaid,
    required this.change,
    required this.paymentMethod,
    required this.paidAt,
  });

  final String serviceId;
  final String customerName;
  final String vehicleType;
  final String plateNumber;
  final List<ServiceItemEntity> items;
  final int total;
  final int amountPaid;
  final int change;
  final String paymentMethod;
  final String paidAt;

  @override
  List<Object?> get props => [
        serviceId,
        customerName,
        vehicleType,
        plateNumber,
        items,
        total,
        amountPaid,
        change,
        paymentMethod,
        paidAt,
      ];
}
