import 'package:equatable/equatable.dart';

class HomeDashboardEntity extends Equatable {
  final double revenue;
  final int completedServices;
  final int lowStockCount;
  final List<HomeActivityEntity> recentActivities;

  const HomeDashboardEntity({
    required this.revenue,
    required this.completedServices,
    required this.lowStockCount,
    required this.recentActivities,
  });

  @override
  List<Object?> get props => [revenue, completedServices, lowStockCount, recentActivities];
}

class HomeActivityEntity extends Equatable {
  final String id;
  final String type;
  final String description;
  final String referenceId;
  final String referenceType;
  final DateTime createdAt;

  const HomeActivityEntity({
    required this.id,
    required this.type,
    required this.description,
    required this.referenceId,
    required this.referenceType,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, type, description, referenceId, referenceType, createdAt];
}

class HomeLowStockEntity extends Equatable {
  final String id;
  final String name;
  final int quantity;
  final String status;

  const HomeLowStockEntity({
    required this.id,
    required this.name,
    required this.quantity,
    required this.status,
  });

  @override
  List<Object?> get props => [id, name, quantity, status];
}
