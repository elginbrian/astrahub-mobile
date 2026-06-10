import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/service_summary_entity.dart';

part 'cashier_state.freezed.dart';

@freezed
abstract class CashierState with _$CashierState {
  const factory CashierState({
    @Default(false) bool isLoading,
    @Default([]) List<ServiceSummaryEntity> todayServices,
    @Default([]) List<ServiceSummaryEntity> historyServices,
    @Default(0) int revenue,
    @Default(0) int completedServices,
    @Default(0) int stockTotal,
    @Default(0) int stockAman,
    @Default(0) int stockHampirHabis,
    @Default(0) int stockTidakAman,
    String? error,
  }) = _CashierState;
}
