// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportTransactionModel _$ReportTransactionModelFromJson(
  Map<String, dynamic> json,
) => _ReportTransactionModel(
  id: json['id'] as String,
  type: json['type'] as String,
  description: json['description'] as String,
  amount: (json['amount'] as num).toInt(),
  status: json['status'] as String,
  date: json['date'] as String,
);

Map<String, dynamic> _$ReportTransactionModelToJson(
  _ReportTransactionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'description': instance.description,
  'amount': instance.amount,
  'status': instance.status,
  'date': instance.date,
};
