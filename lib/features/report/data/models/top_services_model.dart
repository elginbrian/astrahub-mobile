import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/top_services_entity.dart';

part 'top_services_model.freezed.dart';
part 'top_services_model.g.dart';

@freezed
abstract class TopServiceModel with _$TopServiceModel {
  const factory TopServiceModel({
    required int rank,
    required String name,
    required int count,
    required int revenue,
  }) = _TopServiceModel;

  factory TopServiceModel.fromJson(Map<String, dynamic> json) =>
      _$TopServiceModelFromJson(json);
}

extension TopServiceModelX on TopServiceModel {
  TopServiceEntity toEntity() => TopServiceEntity(
        rank: rank,
        name: name,
        count: count,
        revenue: revenue,
      );
}

@freezed
abstract class TopServicesResponseModel with _$TopServicesResponseModel {
  const factory TopServicesResponseModel({
    required String period,
    @Default([]) List<TopServiceModel> services,
  }) = _TopServicesResponseModel;

  factory TopServicesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TopServicesResponseModelFromJson(json);
}

extension TopServicesResponseModelX on TopServicesResponseModel {
  TopServicesResponseEntity toEntity() => TopServicesResponseEntity(
        period: period,
        services: services.map((e) => e.toEntity()).toList(),
      );
}
