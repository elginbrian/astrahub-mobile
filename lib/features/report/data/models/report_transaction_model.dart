import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/report_transaction_entity.dart';

part 'report_transaction_model.freezed.dart';
part 'report_transaction_model.g.dart';

@freezed
abstract class ReportTransactionModel with _$ReportTransactionModel {
  const factory ReportTransactionModel({
    required String id,
    required String type,
    required String description,
    required int amount,
    required String status,
    required String date,
  }) = _ReportTransactionModel;

  factory ReportTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$ReportTransactionModelFromJson(json);
}

extension ReportTransactionModelX on ReportTransactionModel {
  ReportTransactionEntity toEntity() => ReportTransactionEntity(
        id: id,
        type: type,
        description: description,
        amount: amount,
        status: status,
        date: date,
      );
}
