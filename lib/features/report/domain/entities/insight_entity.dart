import 'package:equatable/equatable.dart';

class InsightEntity extends Equatable {
  const InsightEntity({
    required this.type,
    required this.title,
    required this.description,
    this.metric,
  });

  final String type;
  final String title;
  final String description;
  final String? metric;

  @override
  List<Object?> get props => [type, title, description, metric];
}

class InsightResponseEntity extends Equatable {
  const InsightResponseEntity({
    required this.insights,
  });

  final List<InsightEntity> insights;

  @override
  List<Object?> get props => [insights];
}
