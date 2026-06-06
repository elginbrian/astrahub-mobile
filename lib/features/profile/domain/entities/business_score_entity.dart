import 'package:equatable/equatable.dart';

class BusinessScoreEntity extends Equatable {
  const BusinessScoreEntity({
    required this.score,
    required this.maxScore,
    required this.badge,
    required this.description,
  });

  final int score;
  final int maxScore;
  final String badge;
  final String description;

  @override
  List<Object?> get props => [score, maxScore, badge, description];
}
