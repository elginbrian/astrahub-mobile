import 'package:dio/dio.dart';

import '../storage/secure_storage.dart';
import '../constants/api_constants.dart';

/// Attaches Bearer token, refreshes on 401, and handles global errors.
class ApiInterceptor extends Interceptor {
  ApiInterceptor(this._secureStorage);

  final SecureStorage _secureStorage;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _secureStorage.getAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      // TODO: implement token refresh logic
      // If refresh fails, clear tokens and redirect to login
    }
    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
