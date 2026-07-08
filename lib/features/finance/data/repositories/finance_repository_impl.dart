import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/dio_error_handler.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/finance_entity.dart';
import '../../domain/repositories/finance_repository.dart';
import '../datasources/finance_api_service.dart';

class FinanceRepositoryImpl implements FinanceRepository {
  FinanceRepositoryImpl({required this.apiService});

  final FinanceApiService apiService;

  @override
  Future<Either<Failure, AstraPayBalanceEntity>> getBalance() async {
    try {
      final model = await apiService.getBalance();
      return Right(model);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PayLaterBillEntity>> getPayLaterBill() async {
    try {
      final model = await apiService.getPayLaterBill();
      return Right(model);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> topUp(double amount, String paymentMethod) async {
    try {
      await apiService.topUp(amount, paymentMethod);
      return const Right(null);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> withdraw(double amount, String bankCode, String accountNumber, String accountName) async {
    try {
      await apiService.withdraw(amount, bankCode, accountNumber, accountName);
      return const Right(null);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> payBill(double amount, String billType, String billId) async {
    try {
      await apiService.payBill(amount, billType, billId);
      return const Right(null);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
