import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/finance_model.dart';

class FinanceApiService {
  FinanceApiService(this._dio);

  final Dio _dio;

  Future<AstraPayBalanceModel> getBalance() async {
    final response = await _dio.get<Map<String, dynamic>>(ApiConstants.financeAstraPay);
    final data = response.data!['data'] as Map<String, dynamic>;
    return AstraPayBalanceModel.fromJson(data);
  }

  Future<PayLaterBillModel> getPayLaterBill() async {
    final response = await _dio.get<Map<String, dynamic>>(ApiConstants.financePayLaterBill);
    final data = response.data!['data'] as Map<String, dynamic>;
    return PayLaterBillModel.fromJson(data);
  }

  Future<void> topUp(double amount, String paymentMethod) async {
    await _dio.post(
      ApiConstants.financeTopUp,
      data: {
        'amount': amount,
        'payment_method': paymentMethod,
      },
    );
  }

  Future<void> withdraw(double amount, String bankCode, String accountNumber, String accountName) async {
    await _dio.post(
      ApiConstants.financeWithdraw,
      data: {
        'amount': amount,
        'bank_code': bankCode,
        'account_number': accountNumber,
        'account_name': accountName,
      },
    );
  }

  Future<void> payBill(double amount, String billType, String billId) async {
    await _dio.post(
      ApiConstants.financePayBill,
      data: {
        'amount': amount,
        'bill_type': billType,
        'bill_id': billId,
      },
    );
  }
}
