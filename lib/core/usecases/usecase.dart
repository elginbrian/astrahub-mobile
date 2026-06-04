import 'package:dartz/dartz.dart';
import '../error/failures.dart';

/// Base class for all use cases with input parameters.
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// Base class for use cases that require no parameters.
abstract class NoParamsUseCase<Type> {
  Future<Either<Failure, Type>> call();
}

/// Marker class for use cases that take no params.
class NoParams {}
