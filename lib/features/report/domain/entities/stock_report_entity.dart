import 'package:equatable/equatable.dart';

class StockStatusCountEntity extends Equatable {
  const StockStatusCountEntity({
    required this.kritis,
    required this.menipis,
    required this.aman,
  });

  final int kritis;
  final int menipis;
  final int aman;

  @override
  List<Object?> get props => [kritis, menipis, aman];
}

class StockItemEntity extends Equatable {
  const StockItemEntity({
    required this.productId,
    required this.productName,
    required this.category,
    required this.stock,
    required this.status,
  });

  final String productId;
  final String productName;
  final String category;
  final int stock;
  final String status;

  @override
  List<Object?> get props => [productId, productName, category, stock, status];
}

class StockReportEntity extends Equatable {
  const StockReportEntity({
    required this.period,
    required this.summary,
    required this.items,
  });

  final String period;
  final StockStatusCountEntity summary;
  final List<StockItemEntity> items;

  @override
  List<Object?> get props => [period, summary, items];
}
