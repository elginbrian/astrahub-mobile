import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/dashboard_entity.dart';
import 'service_summary_model.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
abstract class DashboardModel with _$DashboardModel {
  const factory DashboardModel({
    required int revenue,
    @JsonKey(name: 'completed_services') required int completedServices,
    @JsonKey(name: 'recent_services') required List<ServiceSummaryModel> recentServices,
    required Map<String, dynamic> stock,
  }) = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);
}

extension DashboardModelX on DashboardModel {
  DashboardEntity toEntity() => DashboardEntity(
        revenue: revenue,
        completedServices: completedServices,
        recentServices: recentServices.map((e) => e.toEntity()).toList(),
        stockTotal: stock['total'] as int? ?? 0,
        stockAman: stock['aman'] as int? ?? 0,
        stockHampirHabis: stock['hampir_habis'] as int? ?? 0,
        stockTidakAman: stock['tidak_aman'] as int? ?? 0,
      );
}
