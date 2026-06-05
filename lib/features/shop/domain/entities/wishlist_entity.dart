import 'package:equatable/equatable.dart';

class WishlistToggleEntity extends Equatable {
  const WishlistToggleEntity({
    required this.productId,
    required this.isWishlisted,
  });

  final String productId;
  final bool isWishlisted;

  @override
  List<Object?> get props => [productId, isWishlisted];
}
