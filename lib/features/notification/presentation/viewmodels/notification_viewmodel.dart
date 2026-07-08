import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/injection.dart';
import '../../domain/entities/notification_entity.dart';
import '../../domain/repositories/notification_repository.dart';

class NotificationState {
  final bool isLoading;
  final String? errorMessage;
  final List<NotificationEntity> notifications;

  const NotificationState({
    this.isLoading = false,
    this.errorMessage,
    this.notifications = const [],
  });

  NotificationState copyWith({
    bool? isLoading,
    String? errorMessage,
    List<NotificationEntity>? notifications,
  }) {
    return NotificationState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      notifications: notifications ?? this.notifications,
    );
  }
}

class NotificationViewModel extends AutoDisposeNotifier<NotificationState> {
  late final NotificationRepository _repository;

  @override
  NotificationState build() {
    _repository = getIt<NotificationRepository>();
    Future.microtask(() => _fetchData());
    return const NotificationState(isLoading: true);
  }

  Future<void> _fetchData() async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    final result = await _repository.getNotifications(page: 1, limit: 50);

    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          errorMessage: failure.message,
        );
      },
      (notifications) {
        state = state.copyWith(
          isLoading: false,
          notifications: notifications,
        );
      },
    );
  }

  Future<void> markAsRead(String notificationId) async {
    final result = await _repository.markAsRead(notificationId);
    
    result.fold(
      (failure) {
        // Optionally show a toast/snackbar here
      },
      (_) {
        // Update local state to reflect that it is read
        final updatedList = state.notifications.map((n) {
          if (n.id == notificationId) {
            return n.copyWith(isRead: true);
          }
          return n;
        }).toList();

        state = state.copyWith(notifications: updatedList);
      },
    );
  }

  Future<void> refresh() async {
    await _fetchData();
  }
}

final notificationViewModelProvider = NotifierProvider.autoDispose<NotificationViewModel, NotificationState>(
  () => NotificationViewModel(),
);
