import 'package:equatable/equatable.dart';

class TopServiceEntity extends Equatable {
  const TopServiceEntity({
    required this.rank,
    required this.name,
    required this.count,
    required this.revenue,
  });

  final int rank;
  final String name;
  final int count;
  final int revenue;

  @override
  List<Object?> get props => [rank, name, count, revenue];
}

class TopServicesResponseEntity extends Equatable {
  const TopServicesResponseEntity({
    required this.period,
    required this.services,
  });

  final String period;
  final List<TopServiceEntity> services;

  @override
  List<Object?> get props => [period, services];
}
