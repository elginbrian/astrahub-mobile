import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/home_dashboard_model.dart';

class HomeApiService {
  HomeApiService(this._dio);

  final Dio _dio;

  Future<HomeDashboardModel> getDashboard() async {
    final response = await _dio.get<Map<String, dynamic>>(ApiConstants.homeDashboard);
    final data = response.data!['data'] as Map<String, dynamic>;
    return HomeDashboardModel.fromJson(data);
  }

  Future<List<HomeLowStockModel>> getLowStock() async {
    final response = await _dio.get<Map<String, dynamic>>(ApiConstants.homeLowStock);
    final data = response.data!['data'] as List<dynamic>;
    return data.map((e) => HomeLowStockModel.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<List<HomeActivityModel>> getActivities({String? date}) async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.homeActivities,
      queryParameters: date != null ? {'date': date} : null,
    );
    final data = response.data!['data'] as List<dynamic>;
    return data.map((e) => HomeActivityModel.fromJson(e as Map<String, dynamic>)).toList();
  }
}
