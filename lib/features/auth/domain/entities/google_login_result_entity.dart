import 'user_entity.dart';

class GoogleLoginResultEntity {
  GoogleLoginResultEntity({
    required this.needsRegistration,
    this.email,
    this.fullName,
    this.user,
  });

  final bool needsRegistration;
  final String? email;
  final String? fullName;
  final UserEntity? user;
}
