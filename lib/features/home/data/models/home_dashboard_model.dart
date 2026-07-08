import '../../domain/entities/home_dashboard_entity.dart';

class HomeDashboardModel extends HomeDashboardEntity {
  const HomeDashboardModel({
    required super.revenue,
    required super.completedServices,
    required super.lowStockCount,
    required super.recentActivities,
  });

  factory HomeDashboardModel.fromJson(Map<String, dynamic> json) {
    return HomeDashboardModel(
      revenue: (json['revenue'] as num?)?.toDouble() ?? 0.0,
      completedServices: json['completed_services'] as int? ?? 0,
      lowStockCount: json['low_stock_count'] as int? ?? 0,
      recentActivities: (json['recent_activities'] as List<dynamic>?)
              ?.map((e) => HomeActivityModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }
}

class HomeActivityModel extends HomeActivityEntity {
  const HomeActivityModel({
    required super.id,
    required super.type,
    required super.description,
    required super.referenceId,
    required super.referenceType,
    required super.createdAt,
  });

  factory HomeActivityModel.fromJson(Map<String, dynamic> json) {
    return HomeActivityModel(
      id: json['id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      description: json['description'] as String? ?? '',
      referenceId: json['reference_id'] as String? ?? '',
      referenceType: json['reference_type'] as String? ?? '',
      createdAt: json['created_at'] != null 
          ? DateTime.parse(json['created_at'] as String) 
          : DateTime.now(),
    );
  }
}

class HomeLowStockModel extends HomeLowStockEntity {
  const HomeLowStockModel({
    required super.id,
    required super.name,
    required super.quantity,
    required super.status,
  });

  factory HomeLowStockModel.fromJson(Map<String, dynamic> json) {
    return HomeLowStockModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      quantity: json['quantity'] as int? ?? 0,
      status: json['status'] as String? ?? '',
    );
  }
}
