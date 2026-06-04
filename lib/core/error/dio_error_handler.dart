import 'package:dio/dio.dart';

import '../error/failures.dart';

/// Maps [DioException] to a typed [Failure].
class DioErrorHandler {
  static Failure handle(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const TimeoutFailure();
      case DioExceptionType.connectionError:
        return const NetworkFailure();
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        if (statusCode == 401) return const UnauthorizedFailure();
        if (statusCode == 404) return const NotFoundFailure();
        return ServerFailure(
          e.response?.data?['message']?.toString() ?? 'Server error ($statusCode).',
        );
      default:
        return const ServerFailure();
    }
  }
}
