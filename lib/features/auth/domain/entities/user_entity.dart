import 'package:equatable/equatable.dart';

/// Domain entity – pure Dart, no Flutter / JSON dependencies.
class UserEntity extends Equatable {
  const UserEntity({
    required this.id,
    required this.fullName,
    required this.phone,
    this.email,
    this.workshopId,
  });

  final String id;
  final String fullName;
  final String phone;
  final String? email;
  final String? workshopId;

  @override
  List<Object?> get props => [id, fullName, phone, email, workshopId];
}
