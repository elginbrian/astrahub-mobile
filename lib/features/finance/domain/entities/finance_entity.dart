import 'package:equatable/equatable.dart';

class AstraPayBalanceEntity extends Equatable {
  final double balance;
  final double incomeThisMonth;
  final double paylaterLimit;
  final double paylaterUsed;

  const AstraPayBalanceEntity({
    required this.balance,
    required this.incomeThisMonth,
    required this.paylaterLimit,
    required this.paylaterUsed,
  });

  @override
  List<Object?> get props => [balance, incomeThisMonth, paylaterLimit, paylaterUsed];
}

class PayLaterBillEntity extends Equatable {
  final double limit;
  final double used;
  final double remaining;
  final String? dueDate;

  const PayLaterBillEntity({
    required this.limit,
    required this.used,
    required this.remaining,
    this.dueDate,
  });

  @override
  List<Object?> get props => [limit, used, remaining, dueDate];
}
