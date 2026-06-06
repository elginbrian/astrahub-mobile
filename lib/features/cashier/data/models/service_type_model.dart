import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/service_type_entity.dart';

part 'service_type_model.freezed.dart';
part 'service_type_model.g.dart';

@freezed
abstract class ServiceTypeModel with _$ServiceTypeModel {
  const factory ServiceTypeModel({
    required String id,
    required String name,
    String? description,
  }) = _ServiceTypeModel;

  factory ServiceTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceTypeModelFromJson(json);
}

extension ServiceTypeModelX on ServiceTypeModel {
  ServiceTypeEntity toEntity() => ServiceTypeEntity(
        id: id,
        name: name,
        description: description,
      );
}
