import 'package:equatable/equatable.dart';

/// Domain entity – pure Dart, no Flutter / JSON dependencies.
class UserEntity extends Equatable {
  const UserEntity({
    required this.id,
    required this.fullName,
    required this.phone,
    this.email,
    this.workshopId,
    this.workshopName,
  });

  final String id;
  final String fullName;
  final String phone;
  final String? email;
  final String? workshopId;
  final String? workshopName;

  @override
  List<Object?> get props => [id, fullName, phone, email, workshopId, workshopName];

  UserEntity copyWith({
    String? id,
    String? fullName,
    String? phone,
    String? email,
    String? workshopId,
    String? workshopName,
  }) {
    return UserEntity(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      workshopId: workshopId ?? this.workshopId,
      workshopName: workshopName ?? this.workshopName,
    );
  }
}
