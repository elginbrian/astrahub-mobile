import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/stock_entity.dart';

abstract class StockRepository {
  Future<Either<Failure, List<StockEntity>>> getStocks();
  Future<Either<Failure, StockEntity>> createStock({required String name, required int price, required int quantity});
  Future<Either<Failure, StockEntity>> updateStock({required int id, required String name, required int price, required int quantity});
  Future<Either<Failure, void>> deleteStock(int id);
}
