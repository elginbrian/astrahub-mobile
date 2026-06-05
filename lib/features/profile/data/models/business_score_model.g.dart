// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessScoreModel _$BusinessScoreModelFromJson(Map<String, dynamic> json) =>
    _BusinessScoreModel(
      score: (json['score'] as num).toInt(),
      maxScore: (json['max_score'] as num).toInt(),
      badge: json['badge'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$BusinessScoreModelToJson(_BusinessScoreModel instance) =>
    <String, dynamic>{
      'score': instance.score,
      'max_score': instance.maxScore,
      'badge': instance.badge,
      'description': instance.description,
    };
