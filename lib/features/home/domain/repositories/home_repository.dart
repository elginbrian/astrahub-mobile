import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/home_dashboard_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeDashboardEntity>> getDashboard();
  Future<Either<Failure, List<HomeLowStockEntity>>> getLowStock();
  Future<Either<Failure, List<HomeActivityEntity>>> getActivities({String? date});
}
