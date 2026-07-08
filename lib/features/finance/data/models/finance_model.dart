import '../../domain/entities/finance_entity.dart';

class AstraPayBalanceModel extends AstraPayBalanceEntity {
  const AstraPayBalanceModel({
    required super.balance,
    required super.incomeThisMonth,
    required super.paylaterLimit,
    required super.paylaterUsed,
  });

  factory AstraPayBalanceModel.fromJson(Map<String, dynamic> json) {
    return AstraPayBalanceModel(
      balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
      incomeThisMonth: (json['income_this_month'] as num?)?.toDouble() ?? 0.0,
      paylaterLimit: (json['paylater_limit'] as num?)?.toDouble() ?? 0.0,
      paylaterUsed: (json['paylater_used'] as num?)?.toDouble() ?? 0.0,
    );
  }
}

class PayLaterBillModel extends PayLaterBillEntity {
  const PayLaterBillModel({
    required super.limit,
    required super.used,
    required super.remaining,
    super.dueDate,
  });

  factory PayLaterBillModel.fromJson(Map<String, dynamic> json) {
    return PayLaterBillModel(
      limit: (json['limit'] as num?)?.toDouble() ?? 0.0,
      used: (json['used'] as num?)?.toDouble() ?? 0.0,
      remaining: (json['remaining'] as num?)?.toDouble() ?? 0.0,
      dueDate: json['due_date'] as String?,
    );
  }
}
