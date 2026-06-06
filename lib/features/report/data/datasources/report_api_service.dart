import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/insight_model.dart';
import '../models/report_summary_model.dart';
import '../models/report_transaction_model.dart';
import '../models/stock_report_model.dart';
import '../models/top_services_model.dart';

class ReportApiService {
  ReportApiService(this._dio);

  final Dio _dio;

  Future<ReportSummaryModel> getSummary(String period) async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.reportSummary,
      queryParameters: {'period': period},
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return ReportSummaryModel.fromJson(data);
  }

  Future<StockReportModel> getStockReport(String period) async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.reportStock,
      queryParameters: {'period': period},
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return StockReportModel.fromJson(data);
  }

  Future<TopServicesResponseModel> getTopServices(String period) async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.reportTopServices,
      queryParameters: {'period': period},
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return TopServicesResponseModel.fromJson(data);
  }

  Future<List<ReportTransactionModel>> getTransactions(int page, int limit) async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.reportTransactions,
      queryParameters: {
        'page': page,
        'limit': limit,
      },
    );
    final data = response.data!['data'] as List<dynamic>;
    return data
        .map((e) => ReportTransactionModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<InsightResponseModel> getInsight() async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.reportInsight,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return InsightResponseModel.fromJson(data);
  }
}
