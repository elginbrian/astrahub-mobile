import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/dio_error_handler.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/stock_entity.dart';
import '../../domain/repositories/stock_repository.dart';
import '../datasources/stock_api_service.dart';
import '../models/stock_model.dart';

class StockRepositoryImpl implements StockRepository {
  StockRepositoryImpl({required this.apiService});

  final StockApiService apiService;

  @override
  Future<Either<Failure, List<StockEntity>>> getStocks() async {
    try {
      final models = await apiService.getStocks();
      return Right(models.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, StockEntity>> createStock({required String name, required int price, required int quantity}) async {
    try {
      final body = {'name': name, 'price': price, 'quantity': quantity};
      final model = await apiService.createStock(body);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, StockEntity>> updateStock({required int id, required String name, required int price, required int quantity}) async {
    try {
      final body = {'name': name, 'price': price, 'quantity': quantity};
      final model = await apiService.updateStock(id, body);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteStock(int id) async {
    try {
      await apiService.deleteStock(id);
      return const Right(null);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
