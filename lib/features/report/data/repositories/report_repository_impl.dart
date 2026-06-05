import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/dio_error_handler.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/insight_entity.dart';
import '../../domain/entities/report_summary_entity.dart';
import '../../domain/entities/report_transaction_entity.dart';
import '../../domain/entities/stock_report_entity.dart';
import '../../domain/entities/top_services_entity.dart';
import '../../domain/repositories/report_repository.dart';
import '../datasources/report_api_service.dart';

class ReportRepositoryImpl implements ReportRepository {
  ReportRepositoryImpl({required this.apiService});

  final ReportApiService apiService;

  @override
  Future<Either<Failure, ReportSummaryEntity>> getSummary(String period) async {
    try {
      final model = await apiService.getSummary(period);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, StockReportEntity>> getStockReport(String period) async {
    try {
      final model = await apiService.getStockReport(period);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, TopServicesResponseEntity>> getTopServices(String period) async {
    try {
      final model = await apiService.getTopServices(period);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ReportTransactionEntity>>> getTransactions({
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final models = await apiService.getTransactions(page, limit);
      return Right(models.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, InsightResponseEntity>> getInsight() async {
    try {
      final model = await apiService.getInsight();
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
