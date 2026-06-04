import 'package:equatable/equatable.dart';

/// Domain entity – pure Dart, no Flutter / JSON dependencies.
class UserEntity extends Equatable {
  const UserEntity({
    required this.id,
    required this.name,
    required this.email,
    this.avatarUrl,
    this.role,
  });

  final String id;
  final String name;
  final String email;
  final String? avatarUrl;
  final String? role;

  @override
  List<Object?> get props => [id, name, email, avatarUrl, role];
}
