import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/dio_error_handler.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/home_dashboard_entity.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_api_service.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl({required this.apiService});

  final HomeApiService apiService;

  @override
  Future<Either<Failure, HomeDashboardEntity>> getDashboard() async {
    try {
      final model = await apiService.getDashboard();
      return Right(model);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<HomeLowStockEntity>>> getLowStock() async {
    try {
      final models = await apiService.getLowStock();
      return Right(models);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<HomeActivityEntity>>> getActivities({String? date}) async {
    try {
      final models = await apiService.getActivities(date: date);
      return Right(models);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
