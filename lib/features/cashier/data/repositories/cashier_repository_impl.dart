import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/dio_error_handler.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/receipt_entity.dart';
import '../../domain/entities/service_detail_entity.dart';
import '../../domain/entities/service_summary_entity.dart';
import '../../domain/entities/service_type_entity.dart';
import '../../domain/repositories/cashier_repository.dart';
import '../datasources/cashier_api_service.dart';
import '../models/receipt_model.dart';
import '../models/service_detail_model.dart';
import '../models/service_summary_model.dart';
import '../models/service_type_model.dart';

class CashierRepositoryImpl implements CashierRepository {
  CashierRepositoryImpl({required this.apiService});

  final CashierApiService apiService;

  @override
  Future<Either<Failure, List<ServiceSummaryEntity>>> getTodayServices({String? date}) async {
    try {
      final models = await apiService.getTodayServices(date: date);
      return Right(models.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ServiceSummaryEntity>>> getHistory() async {
    try {
      final models = await apiService.getHistory();
      return Right(models.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ServiceDetailEntity>> createService({
    required String customerName,
    required String vehicleType,
    required String plateNumber,
    String? serviceTypeId,
    String? notes,
  }) async {
    try {
      final body = {
        'customer_name': customerName,
        'vehicle_type': vehicleType,
        'plate_number': plateNumber,
        if (serviceTypeId != null) 'service_type_id': serviceTypeId,
        if (notes != null) 'notes': notes,
      };
      final model = await apiService.createService(body);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ServiceDetailEntity>> createServiceVoice({
    required String customerName,
    required String vehicleType,
    required String plateNumber,
    required String voiceNoteUrl,
    String? notes,
  }) async {
    try {
      final body = {
        'customer_name': customerName,
        'vehicle_type': vehicleType,
        'plate_number': plateNumber,
        'voice_note_url': voiceNoteUrl,
        if (notes != null) 'notes': notes,
      };
      final model = await apiService.createServiceVoice(body);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ServiceDetailEntity>> getServiceDetail(String serviceId) async {
    try {
      final model = await apiService.getServiceDetail(serviceId);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ServiceDetailEntity>> addServiceItem(
    String serviceId, {
    required String itemType,
    String? itemId,
    required String name,
    required int price,
  }) async {
    try {
      final body = {
        'item_type': itemType,
        if (itemId != null) 'item_id': itemId,
        'name': name,
        'price': price,
      };
      final model = await apiService.addServiceItem(serviceId, body);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteServiceItem(String serviceId, String itemId) async {
    try {
      await apiService.deleteServiceItem(serviceId, itemId);
      return const Right(null);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ReceiptEntity>> processPayment(
    String serviceId, {
    required String paymentMethod,
    required int amount,
  }) async {
    try {
      final body = {
        'payment_method': paymentMethod,
        'amount': amount,
      };
      final model = await apiService.processPayment(serviceId, body);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ReceiptEntity>> getReceipt(String serviceId) async {
    try {
      final model = await apiService.getReceipt(serviceId);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ServiceTypeEntity>>> getServiceTypes() async {
    try {
      final models = await apiService.getServiceTypes();
      return Right(models.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
