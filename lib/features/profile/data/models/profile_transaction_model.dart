import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/profile_transaction_entity.dart';

part 'profile_transaction_model.freezed.dart';
part 'profile_transaction_model.g.dart';

@freezed
abstract class ProfileTransactionModel with _$ProfileTransactionModel {
  const factory ProfileTransactionModel({
    required String id,
    required String type,
    required String description,
    required int amount,
    required String status,
    required String date,
  }) = _ProfileTransactionModel;

  factory ProfileTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileTransactionModelFromJson(json);
}

extension ProfileTransactionModelX on ProfileTransactionModel {
  ProfileTransactionEntity toEntity() => ProfileTransactionEntity(
        id: id,
        type: type,
        description: description,
        amount: amount,
        status: status,
        date: date,
      );
}
