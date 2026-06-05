import 'package:equatable/equatable.dart';

class BusinessDataEntity extends Equatable {
  const BusinessDataEntity({
    this.workshopType,
    this.mechanicCount,
    this.address,
    this.city,
    this.province,
    required this.isActivated,
  });

  final String? workshopType;
  final String? mechanicCount;
  final String? address;
  final String? city;
  final String? province;
  final bool isActivated;

  @override
  List<Object?> get props => [
        workshopType,
        mechanicCount,
        address,
        city,
        province,
        isActivated,
      ];
}
