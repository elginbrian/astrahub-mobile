import 'package:freezed_annotation/freezed_annotation.dart';

import 'service_summary_entity.dart';

part 'dashboard_entity.freezed.dart';

@freezed
abstract class DashboardEntity with _$DashboardEntity {
  const factory DashboardEntity({
    required int revenue,
    required int completedServices,
    required List<ServiceSummaryEntity> recentServices,
    required int stockTotal,
    required int stockAman,
    required int stockHampirHabis,
    required int stockTidakAman,
  }) = _DashboardEntity;
}
