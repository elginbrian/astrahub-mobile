// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileTransactionModel _$ProfileTransactionModelFromJson(
  Map<String, dynamic> json,
) => _ProfileTransactionModel(
  id: json['id'] as String,
  type: json['type'] as String,
  description: json['description'] as String,
  amount: (json['amount'] as num).toInt(),
  status: json['status'] as String,
  date: json['date'] as String,
);

Map<String, dynamic> _$ProfileTransactionModelToJson(
  _ProfileTransactionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'description': instance.description,
  'amount': instance.amount,
  'status': instance.status,
  'date': instance.date,
};
