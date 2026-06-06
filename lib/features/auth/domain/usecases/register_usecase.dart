import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class RegisterUseCase implements UseCase<UserEntity, RegisterParams> {
  const RegisterUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<Failure, UserEntity>> call(RegisterParams params) {
    return _repository.register(
      fullName: params.fullName,
      phone: params.phone,
      email: params.email,
      password: params.password,
    );
  }
}

class RegisterParams extends Equatable {
  const RegisterParams({
    required this.fullName,
    required this.phone,
    this.email,
    required this.password,
  });

  final String fullName;
  final String phone;
  final String? email;
  final String password;

  @override
  List<Object?> get props => [
        fullName,
        phone,
        email,
        password,
      ];
}
