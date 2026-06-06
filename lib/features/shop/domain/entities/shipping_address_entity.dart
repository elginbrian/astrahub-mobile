import 'package:equatable/equatable.dart';

class ShippingAddressEntity extends Equatable {
  const ShippingAddressEntity({
    required this.id,
    required this.label,
    required this.recipientName,
    required this.phone,
    required this.address,
    required this.province,
    required this.city,
    this.postalCode,
    required this.isDefault,
  });

  final String id;
  final String label;
  final String recipientName;
  final String phone;
  final String address;
  final String province;
  final String city;
  final String? postalCode;
  final bool isDefault;

  @override
  List<Object?> get props => [
        id,
        label,
        recipientName,
        phone,
        address,
        province,
        city,
        postalCode,
        isDefault,
      ];
}
