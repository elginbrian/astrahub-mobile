import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';

/// Contract defined in the domain layer.
/// Implemented in the data layer.
abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login({
    required String phone,
    required String password,
    bool rememberMe = false,
  });

  Future<Either<Failure, UserEntity>> register({
    required String fullName,
    required String phone,
    String? email,
    required String password,
    required String passwordConfirmation,
    required bool agreeTerms,
  });

  Future<Either<Failure, void>> logout();

  Future<Either<Failure, UserEntity>> getCurrentUser();

  Future<Either<Failure, String>> refreshToken(String refreshToken);
}
