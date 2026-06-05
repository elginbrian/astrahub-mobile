import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../models/cart_model.dart';
import '../models/checkout_model.dart';
import '../models/order_model.dart';
import '../models/product_model.dart';
import '../models/shipping_address_model.dart';
import '../models/wishlist_model.dart';

class ShopApiService {
  ShopApiService(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> getProducts({
    String? category,
    String? query,
    int page = 1,
    int limit = 20,
  }) async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.shopProducts,
      queryParameters: {
        if (category != null) 'category': category,
        if (query != null) 'q': query,
        'page': page,
        'limit': limit,
      },
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    final products = (data['products'] as List<dynamic>)
        .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
        .toList();
    // Returning both products and meta data for pagination if needed
    return {'products': products, 'meta': data['meta']};
  }

  Future<ProductDetailModel> getProductDetail(String productId) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '${ApiConstants.shopProducts}/$productId',
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return ProductDetailModel.fromJson(data);
  }

  Future<List<ProductModel>> getRecommendations() async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.shopRecommendations,
    );
    final data = response.data!['data'] as List<dynamic>;
    return data.map((e) => ProductModel.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<CartModel> getCart() async {
    final response = await _dio.get<Map<String, dynamic>>(ApiConstants.shopCart);
    final data = response.data!['data'] as Map<String, dynamic>;
    return CartModel.fromJson(data);
  }

  Future<CartModel> addToCart(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.shopCartItems,
      data: body,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return CartModel.fromJson(data);
  }

  Future<CartModel> updateCartItem(String cartItemId, Map<String, dynamic> body) async {
    final response = await _dio.patch<Map<String, dynamic>>(
      '${ApiConstants.shopCartItems}/$cartItemId',
      data: body,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return CartModel.fromJson(data);
  }

  Future<void> deleteCartItem(String cartItemId) async {
    await _dio.delete<void>('${ApiConstants.shopCartItems}/$cartItemId');
  }

  Future<void> deleteCartItemsBulk(Map<String, dynamic> body) async {
    await _dio.delete<void>(
      ApiConstants.shopCartItemsBulk,
      data: body,
    );
  }

  Future<CheckoutSummaryModel> getCheckoutSummary(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.shopCheckoutSummary,
      data: body,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return CheckoutSummaryModel.fromJson(data);
  }

  Future<OrderDetailModel> placeOrder(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.shopOrders,
      data: body,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return OrderDetailModel.fromJson(data);
  }

  Future<List<OrderSummaryModel>> getOrders({String? status}) async {
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.shopOrders,
      queryParameters: status != null ? {'status': status} : null,
    );
    final data = response.data!['data'] as List<dynamic>;
    return data.map((e) => OrderSummaryModel.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<OrderDetailModel> getOrderDetail(String orderId) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '${ApiConstants.shopOrders}/$orderId',
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return OrderDetailModel.fromJson(data);
  }

  Future<OrderDetailModel> confirmOrderReceived(String orderId) async {
    final response = await _dio.post<Map<String, dynamic>>(
      '${ApiConstants.shopOrders}/$orderId/confirm-received',
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return OrderDetailModel.fromJson(data);
  }

  Future<List<ShippingAddressModel>> getShippingAddresses() async {
    // Calling from workshop or profile addresses. Backend has it mapped to /shopHandler as well.
    final response = await _dio.get<Map<String, dynamic>>(
      ApiConstants.shopAddresses,
    );
    final data = response.data!['data'] as List<dynamic>;
    return data
        .map((e) => ShippingAddressModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<WishlistToggleModel> toggleWishlist(Map<String, dynamic> body) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.shopWishlistToggle,
      data: body,
    );
    final data = response.data!['data'] as Map<String, dynamic>;
    return WishlistToggleModel.fromJson(data);
  }
}
