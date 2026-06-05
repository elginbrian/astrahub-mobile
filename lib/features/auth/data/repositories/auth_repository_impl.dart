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
    required String phone,
    required String password,
    bool rememberMe = false,
  }) async {
    try {
      final responseMap = await apiService.login({
        'phone': phone,
        'password': password,
        'remember_me': true,
      });

      final data = responseMap['data'] as Map<String, dynamic>;

      if (rememberMe) {
        await secureStorage.saveAccessToken(data['token'] as String);
        // Backend saat ini tidak menggunakan refresh token
        // await secureStorage.saveRefreshToken(data['refresh_token'] as String);
      } else {
        secureStorage.saveSessionToken(data['token'] as String);
      }

      final userModel = UserModel.fromJson(data);
      return Right(userModel.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> register({
    required String fullName,
    required String phone,
    String? email,
    required String password,
    required String passwordConfirmation,
    required bool agreeTerms,
  }) async {
    try {
      final responseMap = await apiService.register({
        'full_name': fullName,
        'phone': phone,
        if (email != null && email.isNotEmpty) 'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
        'agree_terms': agreeTerms,
      });

      final data = responseMap['data'] as Map<String, dynamic>;

      await secureStorage.saveAccessToken(data['token'] as String);

      final userModel = UserModel.fromJson(data);
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
