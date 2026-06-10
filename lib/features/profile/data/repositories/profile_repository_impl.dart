import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/dio_error_handler.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/business_data_entity.dart';
import '../../domain/entities/business_score_entity.dart';
import '../../domain/entities/profile_entity.dart';
import '../../domain/entities/profile_transaction_entity.dart';
import '../../domain/repositories/profile_repository.dart';
import '../datasources/profile_api_service.dart';
import '../models/business_data_model.dart';
import '../models/business_score_model.dart';
import '../models/profile_model.dart';
import '../models/profile_transaction_model.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl({
    required this.apiService,
  });

  final ProfileApiService apiService;

  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    try {
      final profileModel = await apiService.getProfile();
      return Right(profileModel.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ProfileEntity>> updateProfile({
    required String workshopName,
    required String phone,
    required String address,
    required String category,
  }) async {
    try {
      final body = {
        'workshop_name': workshopName,
        'phone': phone,
        'address': address,
        'category': category,
      };
      final profileModel = await apiService.updateProfile(body);
      return Right(profileModel.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ProfileEntity>> updateUserProfile({
    required String fullName,
    required String email,
  }) async {
    try {
      final body = {
        'full_name': fullName,
        'email': email,
      };
      final profileModel = await apiService.updateUserProfile(body);
      return Right(profileModel.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, BusinessScoreEntity>> getBusinessScore() async {
    try {
      final scoreModel = await apiService.getBusinessScore();
      return Right(scoreModel.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, BusinessDataEntity>> getBusinessData() async {
    try {
      final dataModel = await apiService.getBusinessData();
      return Right(dataModel.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProfileTransactionEntity>>> getTransactions({
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final transactionModels = await apiService.getTransactions(page, limit);
      final entities = transactionModels.map((e) => e.toEntity()).toList();
      return Right(entities);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
