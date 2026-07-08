import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/notification_model.dart';

class NotificationApiService {
  NotificationApiService(this._dio);

  final Dio _dio;

  Future<List<NotificationModel>> getNotifications({int page = 1, int limit = 20}) async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.notifications,
      queryParameters: {'page': page, 'limit': limit},
    );
    final data = response.data!['data'] as List<dynamic>;
    return data.map((e) => NotificationModel.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<void> markAsRead(String notificationId) async {
    await _dio.patch('${ApiConstants.notifications}/$notificationId/read');
  }
}
