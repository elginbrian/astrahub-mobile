import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../domain/repositories/finance_repository.dart';
import 'finance_state.dart';

part 'finance_viewmodel.g.dart';

@riverpod
class FinanceViewModel extends _$FinanceViewModel {
  late final FinanceRepository _repository;

  @override
  FinanceState build() {
    _repository = getIt<FinanceRepository>();
    fetchData();
    return const FinanceState();
  }

  Future<void> fetchData() async {
    state = state.copyWith(isLoading: true, error: null);

    final balanceResult = await _repository.getBalance();
    final billResult = await _repository.getPayLaterBill();

    balanceResult.fold(
      (failure) => state = state.copyWith(isLoading: false, error: failure.message),
      (balance) {
        billResult.fold(
          (failure) => state = state.copyWith(isLoading: false, error: failure.message, astraPayBalance: balance),
          (bill) => state = state.copyWith(
            isLoading: false,
            astraPayBalance: balance,
            payLaterBill: bill,
          ),
        );
      },
    );
  }

  Future<bool> topUp(double amount, String paymentMethod) async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await _repository.topUp(amount, paymentMethod);
    return result.fold(
      (failure) {
        state = state.copyWith(isLoading: false, error: failure.message);
        return false;
      },
      (_) {
        fetchData();
        return true;
      },
    );
  }

  Future<bool> withdraw(double amount, String bankCode, String accountNumber, String accountName) async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await _repository.withdraw(amount, bankCode, accountNumber, accountName);
    return result.fold(
      (failure) {
        state = state.copyWith(isLoading: false, error: failure.message);
        return false;
      },
      (_) {
        fetchData();
        return true;
      },
    );
  }

  Future<bool> payBill(double amount, String billType, String billId) async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await _repository.payBill(amount, billType, billId);
    return result.fold(
      (failure) {
        state = state.copyWith(isLoading: false, error: failure.message);
        return false;
      },
      (_) {
        fetchData();
        return true;
      },
    );
  }
}
