import 'package:equatable/equatable.dart';

class KasirSummaryEntity extends Equatable {
  const KasirSummaryEntity({
    required this.totalRevenue,
    required this.serviceCount,
    required this.paidCount,
  });

  final int totalRevenue;
  final int serviceCount;
  final int paidCount;

  @override
  List<Object?> get props => [totalRevenue, serviceCount, paidCount];
}

class ShopSummaryEntity extends Equatable {
  const ShopSummaryEntity({
    required this.orderCount,
    required this.totalSpent,
  });

  final int orderCount;
  final int totalSpent;

  @override
  List<Object?> get props => [orderCount, totalSpent];
}

class ReportSummaryEntity extends Equatable {
  const ReportSummaryEntity({
    required this.period,
    required this.kasir,
    required this.shop,
  });

  final String period;
  final KasirSummaryEntity kasir;
  final ShopSummaryEntity shop;

  @override
  List<Object?> get props => [period, kasir, shop];
}
