import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/dashboard_model.dart';
import '../models/receipt_model.dart';
import '../models/service_detail_model.dart';
import '../models/service_summary_model.dart';
import '../models/service_type_model.dart';

class CashierApiService {
  CashierApiService(this._dio);

  final Dio _dio;

  Future<DashboardModel> getDashboard({String? date}) async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.cashierDashboard,
      queryParameters: {'period': date ?? 'today'},
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return DashboardModel.fromJson(data);
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

  Future<ServiceDetailModel> updateService(
      String serviceId, Map<String, dynamic> body) async {
    final response = await _dio.put<Map<String, dynamic>>(
      '${ApiConstants.cashierServices}/$serviceId',
      data: body,
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

  Future<int> createWorkItem(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.cashierWorkItems,
      data: body,
    );
    return response.data!['data']['id'] as int;
  }

  Future<void> deleteServiceItem(String serviceId, String itemId) async {
    await _dio.delete<void>(
      '${ApiConstants.cashierServices}/$serviceId/items/$itemId',
    );
  }

  Future<ReceiptModel> processPayment(
      String serviceId, Map<String, dynamic> body) async {
    final requestBody = Map<String, dynamic>.from(body);
    requestBody['service_id'] = serviceId;
    
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.cashierPayment,
      data: requestBody,
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
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        ApiConstants.cashierWorkItems,
      );
      final data = response.data!['data'] as List<dynamic>;
      return data
          .where((e) => e['item_type'] == 'labor')
          .map((e) => ServiceTypeModel(
                id: e['id'].toString(),
                name: e['name'] as String,
                description: e['description'] as String?,
              ))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
