import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth/domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// Data model with JSON serialization. Maps to [UserEntity].
@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'user_id') required String id,
    @JsonKey(name: 'full_name') required String fullName,
    required String phone,
    String? email,
    @JsonKey(name: 'workshop_id') String? workshopId,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserModelX on UserModel {
  UserEntity toEntity() => UserEntity(
        id: id,
        fullName: fullName,
        phone: phone,
        email: email,
        workshopId: workshopId,
      );
}
