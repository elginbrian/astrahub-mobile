import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/stock_model.dart';

class StockApiService {
  StockApiService(this._dio);

  final Dio _dio;

  Future<List<StockModel>> getStocks() async {
    final response = await _dio.get<Map<String, dynamic>>(ApiConstants.stok);
    final data = response.data!['data'] as List<dynamic>;
    return data
        .map((e) => StockModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<StockModel> createStock(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.stok,
      data: body,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return StockModel.fromJson(data);
  }

  Future<StockModel> updateStock(int id, Map<String, dynamic> body) async {
    final response = await _dio.put<Map<String, dynamic>>(
      '${ApiConstants.stok}/$id',
      data: body,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return StockModel.fromJson(data);
  }

  Future<void> deleteStock(int id) async {
    await _dio.delete<void>('${ApiConstants.stok}/$id');
  }
}
