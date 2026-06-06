import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class GoogleRegisterUseCase {
  GoogleRegisterUseCase(this.repository);

  final AuthRepository repository;

  Future<Either<Failure, UserEntity>> call({
    required String idToken,
    required String phone,
    required String fullName,
  }) {
    return repository.googleRegister(
      idToken: idToken,
      phone: phone,
      fullName: fullName,
    );
  }
}
