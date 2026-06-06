import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/receipt_model.dart';
import '../models/service_detail_model.dart';
import '../models/service_summary_model.dart';
import '../models/service_type_model.dart';

class CashierApiService {
  CashierApiService(this._dio);

  final Dio _dio;

  Future<List<ServiceSummaryModel>> getTodayServices({String? date}) async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.cashierServices,
      queryParameters: date != null ? {'date': date} : null,
    );
    final data = response.data!['data'] as List<dynamic>;
    return data
        .map((e) => ServiceSummaryModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<ServiceSummaryModel>> getHistory() async {
    final response = await _dio.get<Map<String, dynamic>>(ApiConstants.cashierHistory);
    final data = response.data!['data'] as List<dynamic>;
    return data
        .map((e) => ServiceSummaryModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<ServiceDetailModel> createService(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.cashierServices,
      data: body,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return ServiceDetailModel.fromJson(data);
  }

  Future<ServiceDetailModel> createServiceVoice(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.cashierServicesVoice,
      data: body,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return ServiceDetailModel.fromJson(data);
  }

  Future<ServiceDetailModel> getServiceDetail(String serviceId) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '${ApiConstants.cashierServices}/$serviceId',
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return ServiceDetailModel.fromJson(data);
  }

  Future<ServiceDetailModel> addServiceItem(
      String serviceId, Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      '${ApiConstants.cashierServices}/$serviceId/items',
      data: body,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return ServiceDetailModel.fromJson(data);
  }

  Future<void> deleteServiceItem(String serviceId, String itemId) async {
    await _dio.delete<void>(
      '${ApiConstants.cashierServices}/$serviceId/items/$itemId',
    );
  }

  Future<ReceiptModel> processPayment(
      String serviceId, Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      '${ApiConstants.cashierServices}/$serviceId/pay',
      data: body,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return ReceiptModel.fromJson(data);
  }

  Future<ReceiptModel> getReceipt(String serviceId) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '${ApiConstants.cashierServices}/$serviceId/receipt',
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return ReceiptModel.fromJson(data);
  }

  Future<List<ServiceTypeModel>> getServiceTypes() async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.cashierServiceTypes,
    );
    final data = response.data!['data'] as List<dynamic>;
    return data
        .map((e) => ServiceTypeModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
