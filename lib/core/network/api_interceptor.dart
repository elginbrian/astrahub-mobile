import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../storage/secure_storage.dart';
import '../constants/api_constants.dart';
import '../router/app_router.dart';
import '../router/app_routes.dart';

/// Attaches Bearer token, refreshes on 401, and handles global errors.
class ApiInterceptor extends Interceptor {
  ApiInterceptor(this._secureStorage);

  final SecureStorage _secureStorage;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _secureStorage.getAccessToken() ?? _secureStorage.getSessionToken();
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
    final isUnauthorized = err.response?.statusCode == 401;
    final isNetworkError = err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.sendTimeout;

    if (isUnauthorized || isNetworkError) {
      await _secureStorage.clearAll();
      final context = globalNavigatorKey.currentContext;
      if (context != null && context.mounted) {
        final message = isUnauthorized 
            ? 'Sesi Anda telah berakhir, silakan masuk kembali.' 
            : 'Koneksi terputus. Silakan periksa jaringan Anda.';
            
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              message,
              style: const TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        );
        
        context.goNamed(AppRoutes.onboarding1Name);
      }
    }
    
    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
