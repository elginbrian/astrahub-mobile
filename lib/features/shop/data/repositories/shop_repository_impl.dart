import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/dio_error_handler.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/cart_entity.dart';
import '../../domain/entities/checkout_entity.dart';
import '../../domain/entities/order_entity.dart';
import '../../domain/entities/product_entity.dart';
import '../../domain/entities/shipping_address_entity.dart';
import '../../domain/entities/wishlist_entity.dart';
import '../../domain/repositories/shop_repository.dart';
import '../datasources/shop_api_service.dart';

class ShopRepositoryImpl implements ShopRepository {
  ShopRepositoryImpl({required this.apiService});

  final ShopApiService apiService;

  @override
  Future<Either<Failure, Map<String, dynamic>>> getProducts({
    String? category,
    String? query,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final result = await apiService.getProducts(
        category: category,
        query: query,
        page: page,
        limit: limit,
      );
      final products = (result['products'] as List)
          .map((e) => e.toEntity())
          .toList();
      return Right({'products': products, 'meta': result['meta']});
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ProductDetailEntity>> getProductDetail(String productId) async {
    try {
      final model = await apiService.getProductDetail(productId);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getRecommendations() async {
    try {
      final models = await apiService.getRecommendations();
      return Right(models.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CartEntity>> getCart() async {
    try {
      final model = await apiService.getCart();
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CartEntity>> addToCart({
    required String productId,
    required int quantity,
    required String sellerId,
  }) async {
    try {
      final body = {
        'product_id': productId,
        'quantity': quantity,
        'seller_id': sellerId,
      };
      final model = await apiService.addToCart(body);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CartEntity>> updateCartItem(
    String cartItemId, {
    required int quantity,
  }) async {
    try {
      final body = {'quantity': quantity};
      final model = await apiService.updateCartItem(cartItemId, body);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteCartItem(String cartItemId) async {
    try {
      await apiService.deleteCartItem(cartItemId);
      return const Right(null);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteCartItemsBulk(List<String> cartItemIds) async {
    try {
      final body = {'cart_item_ids': cartItemIds};
      await apiService.deleteCartItemsBulk(body);
      return const Right(null);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CheckoutSummaryEntity>> getCheckoutSummary({
    required List<String> cartItemIds,
    required String shippingAddressId,
    required String shippingMethod,
    bool useProductProtection = false,
  }) async {
    try {
      final body = {
        'cart_item_ids': cartItemIds,
        'shipping_address_id': shippingAddressId,
        'shipping_method': shippingMethod,
        'use_product_protection': useProductProtection,
      };
      final model = await apiService.getCheckoutSummary(body);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, OrderDetailEntity>> placeOrder({
    required List<String> cartItemIds,
    required String shippingAddressId,
    required String shippingMethod,
    required String paymentMethod,
    bool useProductProtection = false,
  }) async {
    try {
      final body = {
        'cart_item_ids': cartItemIds,
        'shipping_address_id': shippingAddressId,
        'shipping_method': shippingMethod,
        'payment_method': paymentMethod,
        'use_product_protection': useProductProtection,
      };
      final model = await apiService.placeOrder(body);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<OrderSummaryEntity>>> getOrders({String? status}) async {
    try {
      final models = await apiService.getOrders(status: status);
      return Right(models.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, OrderDetailEntity>> getOrderDetail(String orderId) async {
    try {
      final model = await apiService.getOrderDetail(orderId);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, OrderDetailEntity>> confirmOrderReceived(String orderId) async {
    try {
      final model = await apiService.confirmOrderReceived(orderId);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ShippingAddressEntity>>> getShippingAddresses() async {
    try {
      final models = await apiService.getShippingAddresses();
      return Right(models.map((e) => e.toEntity()).toList());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, WishlistToggleEntity>> toggleWishlist(String productId) async {
    try {
      final body = {'product_id': productId};
      final model = await apiService.toggleWishlist(body);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handle(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
