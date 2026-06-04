import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/dio_error_handler.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_api_service.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this.apiService,
    required this.secureStorage,
  });

  final AuthApiService apiService;
  final SecureStorage secureStorage;

  @override
  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final data = await apiService.login({
        'email': email,
        'password': password,
      });

      await secureStorage.saveAccessToken(data['access_token'] as String);
      await secureStorage.saveRefreshToken(data['refresh_token'] as String);

      final userModel = UserModel.fromJson(
        data['user'] as Map<String, dynamic>,
      );
      return Right(userModel.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await apiService.logout();
      await secureStorage.clearAll();
      return const Right(null);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getCurrentUser() async {
    try {
      final userModel = await apiService.getCurrentUser();
      return Right(userModel.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, String>> refreshToken(String refreshToken) async {
    try {
      final data = await apiService.refreshToken({
        'refresh_token': refreshToken,
      });
      final newToken = data['access_token'] as String;
      await secureStorage.saveAccessToken(newToken);
      return Right(newToken);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    }
  }
}
