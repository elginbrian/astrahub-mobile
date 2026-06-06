import 'package:equatable/equatable.dart';

import 'workshop_info_entity.dart';

class ProfileEntity extends Equatable {
  const ProfileEntity({
    required this.userId,
    required this.fullName,
    required this.phone,
    this.email,
    this.workshop,
  });

  final String userId;
  final String fullName;
  final String phone;
  final String? email;
  final WorkshopInfoEntity? workshop;

  @override
  List<Object?> get props => [userId, fullName, phone, email, workshop];
}
