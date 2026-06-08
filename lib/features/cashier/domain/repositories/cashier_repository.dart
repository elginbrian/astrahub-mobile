import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/dashboard_entity.dart';
import '../entities/receipt_entity.dart';
import '../entities/service_detail_entity.dart';
import '../entities/service_summary_entity.dart';
import '../entities/service_type_entity.dart';

abstract class CashierRepository {
  Future<Either<Failure, DashboardEntity>> getDashboard({String? date});
  
  Future<Either<Failure, List<ServiceSummaryEntity>>> getHistory();
  
  Future<Either<Failure, ServiceDetailEntity>> createService({
    required String customerName,
    required String vehicleType,
    required String plateNumber,
    String? serviceTypeId,
    String? notes,
  });
  
  Future<Either<Failure, ServiceDetailEntity>> createServiceVoice({
    required String customerName,
    required String vehicleType,
    required String plateNumber,
    required String voiceNoteUrl,
    String? notes,
  });
  
  Future<Either<Failure, ServiceDetailEntity>> getServiceDetail(String serviceId);
  
  Future<Either<Failure, ServiceDetailEntity>> addServiceItem(
    String serviceId, {
    required String itemType,
    String? itemId,
    required String name,
    required int price,
  });
  
  Future<Either<Failure, void>> deleteServiceItem(String serviceId, String itemId);
  
  Future<Either<Failure, ReceiptEntity>> processPayment(
    String serviceId, {
    required String paymentMethod,
    required int amount,
  });
  
  Future<Either<Failure, ReceiptEntity>> getReceipt(String serviceId);
  
  Future<Either<Failure, List<ServiceTypeEntity>>> getServiceTypes();
}
