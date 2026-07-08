import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/notification_entity.dart';

abstract class NotificationRepository {
  Future<Either<Failure, List<NotificationEntity>>> getNotifications({int page = 1, int limit = 20});
  Future<Either<Failure, void>> markAsRead(String notificationId);
}
