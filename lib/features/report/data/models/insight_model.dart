import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/insight_entity.dart';

part 'insight_model.freezed.dart';
part 'insight_model.g.dart';

@freezed
abstract class InsightModel with _$InsightModel {
  const factory InsightModel({
    required String type,
    required String title,
    required String description,
    String? metric,
  }) = _InsightModel;

  factory InsightModel.fromJson(Map<String, dynamic> json) =>
      _$InsightModelFromJson(json);
}

extension InsightModelX on InsightModel {
  InsightEntity toEntity() => InsightEntity(
        type: type,
        title: title,
        description: description,
        metric: metric,
      );
}

@freezed
abstract class InsightResponseModel with _$InsightResponseModel {
  const factory InsightResponseModel({
    @Default([]) List<InsightModel> insights,
  }) = _InsightResponseModel;

  factory InsightResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InsightResponseModelFromJson(json);
}

extension InsightResponseModelX on InsightResponseModel {
  InsightResponseEntity toEntity() => InsightResponseEntity(
        insights: insights.map((e) => e.toEntity()).toList(),
      );
}
