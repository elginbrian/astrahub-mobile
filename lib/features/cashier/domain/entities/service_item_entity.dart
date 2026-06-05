import 'package:equatable/equatable.dart';

class ServiceItemEntity extends Equatable {
  const ServiceItemEntity({
    required this.id,
    required this.itemType,
    this.itemId,
    required this.name,
    required this.price,
  });

  final String id;
  final String itemType;
  final String? itemId;
  final String name;
  final int price;

  @override
  List<Object?> get props => [id, itemType, itemId, name, price];
}
