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

  Future<Map<String, dynamic>> register(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.register,
      data: body,
    );
    return response.data!;
  }

  Future<Map<String, dynamic>> googleLogin(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.googleLogin,
      data: body,
    );
    return response.data!;
  }

  Future<Map<String, dynamic>> googleRegister(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.googleRegister,
      data: body,
    );
    return response.data!;
  }

  Future<void> logout({Map<String, dynamic>? body}) async {
    await _dio.post<void>(
      ApiConstants.logout,
      data: body,
    );
  }

  Future<UserModel> getCurrentUser() async {
    final response = await _dio.get<Map<String, dynamic>>(ApiConstants.profile);
    final data = response.data!['data'] as Map<String, dynamic>;
    
    // Convert 'workshop' object from ProfileResponse to 'workshop_id' and 'workshop_name' for UserModel
    if (data.containsKey('workshop') && data['workshop'] != null) {
      data['workshop_id'] = data['workshop']['id'];
      data['workshop_name'] = data['workshop']['name'];
    }
    
    return UserModel.fromJson(data);
  }

  Future<Map<String, dynamic>> refreshToken(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.refresh,
      data: body,
    );
    return response.data!['data'] as Map<String, dynamic>? ?? response.data!;
  }
}
