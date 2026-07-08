import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/finance_entity.dart';

abstract class FinanceRepository {
  Future<Either<Failure, AstraPayBalanceEntity>> getBalance();
  Future<Either<Failure, PayLaterBillEntity>> getPayLaterBill();
  Future<Either<Failure, void>> topUp(double amount, String paymentMethod);
  Future<Either<Failure, void>> withdraw(double amount, String bankCode, String accountNumber, String accountName);
  Future<Either<Failure, void>> payBill(double amount, String billType, String billId);
}
