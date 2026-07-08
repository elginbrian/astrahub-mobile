import '../../domain/entities/finance_entity.dart';

class FinanceState {
  final bool isLoading;
  final String? error;
  final AstraPayBalanceEntity? astraPayBalance;
  final PayLaterBillEntity? payLaterBill;

  const FinanceState({
    this.isLoading = false,
    this.error,
    this.astraPayBalance,
    this.payLaterBill,
  });

  FinanceState copyWith({
    bool? isLoading,
    String? error,
    AstraPayBalanceEntity? astraPayBalance,
    PayLaterBillEntity? payLaterBill,
  }) {
    return FinanceState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      astraPayBalance: astraPayBalance ?? this.astraPayBalance,
      payLaterBill: payLaterBill ?? this.payLaterBill,
    );
  }
}
