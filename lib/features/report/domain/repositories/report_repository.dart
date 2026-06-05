import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/insight_entity.dart';
import '../entities/report_summary_entity.dart';
import '../entities/report_transaction_entity.dart';
import '../entities/stock_report_entity.dart';
import '../entities/top_services_entity.dart';

abstract class ReportRepository {
  Future<Either<Failure, ReportSummaryEntity>> getSummary(String period);
  
  Future<Either<Failure, StockReportEntity>> getStockReport(String period);
  
  Future<Either<Failure, TopServicesResponseEntity>> getTopServices(String period);
  
  Future<Either<Failure, List<ReportTransactionEntity>>> getTransactions({
    int page = 1,
    int limit = 20,
  });
  
  Future<Either<Failure, InsightResponseEntity>> getInsight();
}
