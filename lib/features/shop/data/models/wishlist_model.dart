import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/wishlist_entity.dart';

part 'wishlist_model.freezed.dart';
part 'wishlist_model.g.dart';

@freezed
abstract class WishlistToggleModel with _$WishlistToggleModel {
  const factory WishlistToggleModel({
    @JsonKey(name: 'product_id') required String productId,
    @JsonKey(name: 'is_wishlisted') required bool isWishlisted,
  }) = _WishlistToggleModel;

  factory WishlistToggleModel.fromJson(Map<String, dynamic> json) =>
      _$WishlistToggleModelFromJson(json);
}

extension WishlistToggleModelX on WishlistToggleModel {
  WishlistToggleEntity toEntity() => WishlistToggleEntity(
        productId: productId,
        isWishlisted: isWishlisted,
      );
}
