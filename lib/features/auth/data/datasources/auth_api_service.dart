import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/user_model.dart';

/// Type-safe Dio wrapper for all auth endpoints.
/// No code-generation needed — clean and fully debuggable.
class AuthApiService {
  AuthApiService(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> login(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.login,
      data: body,
    );
    return response.data!;
  }

  Future<void> logout() async {
    await _dio.post<void>(ApiConstants.logout);
  }

  Future<UserModel> getCurrentUser() async {
    final response = await _dio.get<Map<String, dynamic>>('/auth/me');
    return UserModel.fromJson(response.data!);
  }

  Future<Map<String, dynamic>> refreshToken(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.refresh,
      data: body,
    );
    return response.data!;
  }
}
