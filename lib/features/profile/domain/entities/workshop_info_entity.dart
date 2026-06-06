import 'package:equatable/equatable.dart';

class WorkshopInfoEntity extends Equatable {
  const WorkshopInfoEntity({
    required this.id,
    required this.name,
    this.ownerName,
    this.phone,
    this.address,
    this.province,
    this.city,
    this.type,
    this.mechanicCount,
    this.photoUrl,
    this.logoUrl,
    required this.isActivated,
    required this.businessScore,
    this.astrapayAccount,
  });

  final String id;
  final String name;
  final String? ownerName;
  final String? phone;
  final String? address;
  final String? province;
  final String? city;
  final String? type;
  final String? mechanicCount;
  final String? photoUrl;
  final String? logoUrl;
  final bool isActivated;
  final int businessScore;
  final String? astrapayAccount;

  @override
  List<Object?> get props => [
        id,
        name,
        ownerName,
        phone,
        address,
        province,
        city,
        type,
        mechanicCount,
        photoUrl,
        logoUrl,
        isActivated,
        businessScore,
        astrapayAccount,
      ];
}
