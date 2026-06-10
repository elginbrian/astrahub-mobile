import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../domain/entities/service_detail_entity.dart';
import '../../domain/repositories/cashier_repository.dart';

part 'service_detail_viewmodel.g.dart';

@riverpod
class ServiceDetailViewModel extends _$ServiceDetailViewModel {
  late final CashierRepository _repository;

  @override
  FutureOr<ServiceDetailEntity?> build(String serviceId) async {
    _repository = getIt<CashierRepository>();
    return _fetchDetail(serviceId);
  }

  Future<ServiceDetailEntity?> _fetchDetail(String id) async {
    final result = await _repository.getServiceDetail(id);
    return result.fold(
      (l) => throw Exception(l.message),
      (r) => r,
    );
  }

  Future<void> addPart(String stockId, String name, int price) async {
    state = const AsyncValue.loading();
    final result = await _repository.addServiceItem(
      serviceId,
      itemType: 'part',
      itemId: stockId,
      name: name,
      price: price,
    );

    state = result.fold(
      (l) => AsyncValue.error(l.message, StackTrace.current),
      (r) => AsyncValue.data(r),
    );
  }

  Future<void> updateServiceInfo({
    required String customerName,
    required String vehicleType,
    required String plateNumber,
    String? notes,
  }) async {
    state = const AsyncValue.loading();
    final result = await _repository.updateService(
      serviceId,
      customerName: customerName,
      vehicleType: vehicleType,
      plateNumber: plateNumber,
      notes: notes,
    );

    state = result.fold(
      (l) => AsyncValue.error(l.message, StackTrace.current),
      (r) => AsyncValue.data(r),
    );
  }

  Future<void> deleteItem(String itemId) async {
    state = const AsyncValue.loading();
    final deleteResult = await _repository.deleteServiceItem(serviceId, itemId);
    
    state = await deleteResult.fold(
      (l) => AsyncValue.error(l.message, StackTrace.current),
      (r) async {
        final refetchResult = await _repository.getServiceDetail(serviceId);
        return refetchResult.fold(
          (l) => AsyncValue.error(l.message, StackTrace.current),
          (r) => AsyncValue.data(r),
        );
      },
    );
  }
}
