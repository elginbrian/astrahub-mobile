import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/dio_error_handler.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/storage/secure_storage.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/entities/google_login_result_entity.dart';
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
        if (data['refresh_token'] != null) {
          await secureStorage.saveRefreshToken(data['refresh_token'] as String);
        }
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
  }) async {
    try {
      final responseMap = await apiService.register({
        'full_name': fullName,
        'phone': phone,
        if (email != null && email.isNotEmpty) 'email': email,
        'password': password,
      });

      final data = responseMap['data'] as Map<String, dynamic>;

      await secureStorage.saveAccessToken(data['token'] as String);
      if (data['refresh_token'] != null) {
        await secureStorage.saveRefreshToken(data['refresh_token'] as String);
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
  Future<Either<Failure, void>> logout() async {
    try {
      final refreshToken = await secureStorage.getRefreshToken();
      if (refreshToken != null) {
        await apiService.logout(body: {'refresh_token': refreshToken});
      } else {
        await apiService.logout();
      }
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

  @override
  Future<Either<Failure, GoogleLoginResultEntity>> googleLogin(String idToken) async {
    try {
      final responseMap = await apiService.googleLogin({
        'id_token': idToken,
      });
      
      final data = responseMap['data'] as Map<String, dynamic>;
      final needsRegistration = data['needs_registration'] == true;

      if (needsRegistration) {
        return Right(GoogleLoginResultEntity(
          needsRegistration: true,
          email: data['email'] as String?,
          fullName: data['full_name'] as String?,
        ));
      }

      await secureStorage.saveAccessToken(data['token'] as String);
      if (data['refresh_token'] != null) {
        await secureStorage.saveRefreshToken(data['refresh_token'] as String);
      }
      secureStorage.saveSessionToken(data['token'] as String);

      final userModel = UserModel.fromJson(data);
      return Right(GoogleLoginResultEntity(
        needsRegistration: false,
        user: userModel.toEntity(),
      ));
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> googleRegister({
    required String idToken,
    required String phone,
    required String fullName,
  }) async {
    try {
      final responseMap = await apiService.googleRegister({
        'id_token': idToken,
        'phone': phone,
        'full_name': fullName,
      });

      final data = responseMap['data'] as Map<String, dynamic>;

      await secureStorage.saveAccessToken(data['token'] as String);
      if (data['refresh_token'] != null) {
        await secureStorage.saveRefreshToken(data['refresh_token'] as String);
      }
      secureStorage.saveSessionToken(data['token'] as String);

      final userModel = UserModel.fromJson(data);
      return Right(userModel.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
