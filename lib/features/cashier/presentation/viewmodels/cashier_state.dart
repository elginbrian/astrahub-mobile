import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/service_summary_entity.dart';

part 'cashier_state.freezed.dart';

@freezed
abstract class CashierState with _$CashierState {
  const factory CashierState({
    @Default(false) bool isLoading,
    @Default([]) List<ServiceSummaryEntity> todayServices,
    @Default([]) List<ServiceSummaryEntity> historyServices,
    String? error,
  }) = _CashierState;
}
