import 'package:dio/dio.dart';

import '../models/business_data_model.dart';
import '../models/business_score_model.dart';
import '../models/profile_model.dart';
import '../models/profile_transaction_model.dart';
import '../../../../core/constants/api_constants.dart';

class ProfileApiService {
  ProfileApiService(this._dio);

  final Dio _dio;

  Future<ProfileModel> getProfile() async {
    final response = await _dio.get<Map<String, dynamic>>(ApiConstants.profile);
    final data = response.data!['data'] as Map<String, dynamic>;
    return ProfileModel.fromJson(data);
  }

  Future<ProfileModel> updateProfile(Map<String, dynamic> body) async {
    final response = await _dio.put<Map<String, dynamic>>(
      ApiConstants.profile,
      data: body,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return ProfileModel.fromJson(data);
  }

  Future<BusinessScoreModel> getBusinessScore() async {
    final response = await _dio.get<Map<String, dynamic>>(ApiConstants.businessScore);
    final data = response.data!['data'] as Map<String, dynamic>;
    return BusinessScoreModel.fromJson(data);
  }

  Future<BusinessDataModel> getBusinessData() async {
    final response = await _dio.get<Map<String, dynamic>>(ApiConstants.businessData);
    final data = response.data!['data'] as Map<String, dynamic>;
    return BusinessDataModel.fromJson(data);
  }

  Future<List<ProfileTransactionModel>> getTransactions(int page, int limit) async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.profileTransactions,
      queryParameters: {
        'page': page,
        'limit': limit,
      },
    );
    final data = response.data!['data'] as List<dynamic>;
    return data
        .map((e) => ProfileTransactionModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
