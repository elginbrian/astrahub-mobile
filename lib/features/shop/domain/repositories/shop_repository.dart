import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/cart_entity.dart';
import '../entities/checkout_entity.dart';
import '../entities/order_entity.dart';
import '../entities/product_entity.dart';
import '../entities/shipping_address_entity.dart';
import '../entities/wishlist_entity.dart';

abstract class ShopRepository {
  Future<Either<Failure, Map<String, dynamic>>> getProducts({
    String? category,
    String? query,
    int page = 1,
    int limit = 20,
  });

  Future<Either<Failure, ProductDetailEntity>> getProductDetail(String productId);
  
  Future<Either<Failure, List<ProductEntity>>> getRecommendations();
  
  Future<Either<Failure, CartEntity>> getCart();
  
  Future<Either<Failure, CartEntity>> addToCart({
    required String productId,
    required int quantity,
    required String sellerId,
  });
  
  Future<Either<Failure, CartEntity>> updateCartItem(
    String cartItemId, {
    required int quantity,
  });
  
  Future<Either<Failure, void>> deleteCartItem(String cartItemId);
  
  Future<Either<Failure, void>> deleteCartItemsBulk(List<String> cartItemIds);
  
  Future<Either<Failure, CheckoutSummaryEntity>> getCheckoutSummary({
    required List<String> cartItemIds,
    required String shippingAddressId,
    required String shippingMethod,
    bool useProductProtection = false,
  });
  
  Future<Either<Failure, OrderDetailEntity>> placeOrder({
    required List<String> cartItemIds,
    required String shippingAddressId,
    required String shippingMethod,
    required String paymentMethod,
    bool useProductProtection = false,
  });
  
  Future<Either<Failure, List<OrderSummaryEntity>>> getOrders({String? status});
  
  Future<Either<Failure, OrderDetailEntity>> getOrderDetail(String orderId);
  
  Future<Either<Failure, OrderDetailEntity>> confirmOrderReceived(String orderId);
  
  Future<Either<Failure, List<ShippingAddressEntity>>> getShippingAddresses();
  
  Future<Either<Failure, WishlistToggleEntity>> toggleWishlist(String productId);
}
