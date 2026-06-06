import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/workshop_info_entity.dart';

part 'workshop_info_model.freezed.dart';
part 'workshop_info_model.g.dart';

@freezed
abstract class WorkshopInfoModel with _$WorkshopInfoModel {
  const factory WorkshopInfoModel({
    required String id,
    required String name,
    @JsonKey(name: 'owner_name') String? ownerName,
    String? phone,
    String? address,
    String? province,
    String? city,
    String? type,
    @JsonKey(name: 'mechanic_count') String? mechanicCount,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'logo_url') String? logoUrl,
    @JsonKey(name: 'is_activated') required bool isActivated,
    @JsonKey(name: 'business_score') required int businessScore,
    @JsonKey(name: 'astrapay_account') String? astrapayAccount,
  }) = _WorkshopInfoModel;

  factory WorkshopInfoModel.fromJson(Map<String, dynamic> json) =>
      _$WorkshopInfoModelFromJson(json);
}

extension WorkshopInfoModelX on WorkshopInfoModel {
  WorkshopInfoEntity toEntity() => WorkshopInfoEntity(
        id: id,
        name: name,
        ownerName: ownerName,
        phone: phone,
        address: address,
        province: province,
        city: city,
        type: type,
        mechanicCount: mechanicCount,
        photoUrl: photoUrl,
        logoUrl: logoUrl,
        isActivated: isActivated,
        businessScore: businessScore,
        astrapayAccount: astrapayAccount,
      );
}
