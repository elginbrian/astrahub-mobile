import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/business_data_entity.dart';

part 'business_data_model.freezed.dart';
part 'business_data_model.g.dart';

@freezed
abstract class BusinessDataModel with _$BusinessDataModel {
  const factory BusinessDataModel({
    @JsonKey(name: 'workshop_type') String? workshopType,
    @JsonKey(name: 'mechanic_count') String? mechanicCount,
    String? address,
    String? city,
    String? province,
    @JsonKey(name: 'is_activated') required bool isActivated,
  }) = _BusinessDataModel;

  factory BusinessDataModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessDataModelFromJson(json);
}

extension BusinessDataModelX on BusinessDataModel {
  BusinessDataEntity toEntity() => BusinessDataEntity(
        workshopType: workshopType,
        mechanicCount: mechanicCount,
        address: address,
        city: city,
        province: province,
        isActivated: isActivated,
      );
}
