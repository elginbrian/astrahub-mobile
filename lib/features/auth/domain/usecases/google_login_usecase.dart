import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/google_login_result_entity.dart';
import '../repositories/auth_repository.dart';

class GoogleLoginUseCase {
  GoogleLoginUseCase(this.repository);

  final AuthRepository repository;

  Future<Either<Failure, GoogleLoginResultEntity>> call(String idToken) {
    return repository.googleLogin(idToken);
  }
}
