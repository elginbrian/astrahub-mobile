import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/business_score_entity.dart';

part 'business_score_model.freezed.dart';
part 'business_score_model.g.dart';

@freezed
abstract class BusinessScoreModel with _$BusinessScoreModel {
  const factory BusinessScoreModel({
    required int score,
    @JsonKey(name: 'max_score') required int maxScore,
    required String badge,
    required String description,
  }) = _BusinessScoreModel;

  factory BusinessScoreModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessScoreModelFromJson(json);
}

extension BusinessScoreModelX on BusinessScoreModel {
  BusinessScoreEntity toEntity() => BusinessScoreEntity(
        score: score,
        maxScore: maxScore,
        badge: badge,
        description: description,
      );
}
