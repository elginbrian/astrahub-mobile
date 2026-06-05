import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class RegisterUseCase implements UseCase<UserEntity, RegisterParams> {
  const RegisterUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, UserEntity>> call(RegisterParams params) {
    return _repository.register(
      fullName: params.fullName,
      phone: params.phone,
      email: params.email,
      password: params.password,
      passwordConfirmation: params.passwordConfirmation,
      agreeTerms: params.agreeTerms,
    );
  }
}

class RegisterParams extends Equatable {
  const RegisterParams({
    required this.fullName,
    required this.phone,
    this.email,
    required this.password,
    required this.passwordConfirmation,
    required this.agreeTerms,
  });

  final String fullName;
  final String phone;
  final String? email;
  final String password;
  final String passwordConfirmation;
  final bool agreeTerms;

  @override
  List<Object?> get props => [
        fullName,
        phone,
        email,
        password,
        passwordConfirmation,
        agreeTerms,
      ];
}
