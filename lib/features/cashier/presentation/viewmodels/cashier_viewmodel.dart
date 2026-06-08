import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../domain/repositories/cashier_repository.dart';
import 'cashier_state.dart';

part 'cashier_viewmodel.g.dart';

@riverpod
class CashierViewModel extends _$CashierViewModel {
  late final CashierRepository _repository;

  @override
  CashierState build() {
    _repository = getIt<CashierRepository>();
    // Fetch today's services by default when built
    Future.microtask(() => loadTodayServices());
    return const CashierState();
  }

  Future<void> loadTodayServices() async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await _repository.getDashboard();
    
    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          error: failure.message,
        );
      },
      (dashboard) {
        state = state.copyWith(
          isLoading: false,
          todayServices: dashboard.recentServices,
          revenue: dashboard.revenue,
          completedServices: dashboard.completedServices,
          stockTotal: dashboard.stockTotal,
          stockAman: dashboard.stockAman,
          stockHampirHabis: dashboard.stockHampirHabis,
          stockTidakAman: dashboard.stockTidakAman,
        );
      },
    );
  }

  Future<void> loadHistory() async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await _repository.getHistory();
    
    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          error: failure.message,
        );
      },
      (services) {
        state = state.copyWith(
          isLoading: false,
          historyServices: services,
        );
      },
    );
  }
}
