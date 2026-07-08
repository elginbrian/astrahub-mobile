import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/injection.dart';
import '../../domain/entities/home_dashboard_entity.dart';
import '../../domain/repositories/home_repository.dart';

class HomeState {
  final bool isLoading;
  final String? errorMessage;
  final HomeDashboardEntity? dashboard;
  final List<HomeLowStockEntity> lowStockItems;

  const HomeState({
    this.isLoading = false,
    this.errorMessage,
    this.dashboard,
    this.lowStockItems = const [],
  });

  HomeState copyWith({
    bool? isLoading,
    String? errorMessage,
    HomeDashboardEntity? dashboard,
    List<HomeLowStockEntity>? lowStockItems,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      dashboard: dashboard ?? this.dashboard,
      lowStockItems: lowStockItems ?? this.lowStockItems,
    );
  }
}

class HomeViewModel extends AutoDisposeNotifier<HomeState> {
  late final HomeRepository _repository;

  @override
  HomeState build() {
    _repository = getIt<HomeRepository>();
    Future.microtask(() => _fetchData());
    return const HomeState(isLoading: true);
  }

  Future<void> _fetchData() async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final dashboardResult = await _repository.getDashboard();
      final lowStockResult = await _repository.getLowStock();

      HomeDashboardEntity? dashboard;
      List<HomeLowStockEntity> lowStockItems = [];
      String? error;

      dashboardResult.fold(
        (f) => error = f.message,
        (d) => dashboard = d,
      );

      lowStockResult.fold(
        (f) => error ??= f.message,
        (l) => lowStockItems = l,
      );

      state = state.copyWith(
        isLoading: false,
        errorMessage: error,
        dashboard: dashboard,
        lowStockItems: lowStockItems,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> refresh() async {
    await _fetchData();
  }
}

final homeViewModelProvider = NotifierProvider.autoDispose<HomeViewModel, HomeState>(
  () => HomeViewModel(),
);
