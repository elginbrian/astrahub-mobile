import 'package:equatable/equatable.dart';

class ProfileTransactionEntity extends Equatable {
  const ProfileTransactionEntity({
    required this.id,
    required this.type,
    required this.description,
    required this.amount,
    required this.status,
    required this.date,
  });

  final String id;
  final String type;
  final String description;
  final int amount;
  final String status;
  final String date;

  @override
  List<Object?> get props => [id, type, description, amount, status, date];
}
