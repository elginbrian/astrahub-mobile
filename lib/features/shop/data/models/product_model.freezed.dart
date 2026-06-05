// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SellerModel {

 String get id; String get name; String get location; double get rating;
/// Create a copy of SellerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerModelCopyWith<SellerModel> get copyWith => _$SellerModelCopyWithImpl<SellerModel>(this as SellerModel, _$identity);

  /// Serializes this SellerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,location,rating);

@override
String toString() {
  return 'SellerModel(id: $id, name: $name, location: $location, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $SellerModelCopyWith<$Res>  {
  factory $SellerModelCopyWith(SellerModel value, $Res Function(SellerModel) _then) = _$SellerModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String location, double rating
});




}
/// @nodoc
class _$SellerModelCopyWithImpl<$Res>
    implements $SellerModelCopyWith<$Res> {
  _$SellerModelCopyWithImpl(this._self, this._then);

  final SellerModel _self;
  final $Res Function(SellerModel) _then;

/// Create a copy of SellerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? location = null,Object? rating = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [SellerModel].
extension SellerModelPatterns on SellerModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellerModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellerModel value)  $default,){
final _that = this;
switch (_that) {
case _SellerModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellerModel value)?  $default,){
final _that = this;
switch (_that) {
case _SellerModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String location,  double rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellerModel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.rating);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String location,  double rating)  $default,) {final _that = this;
switch (_that) {
case _SellerModel():
return $default(_that.id,_that.name,_that.location,_that.rating);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String location,  double rating)?  $default,) {final _that = this;
switch (_that) {
case _SellerModel() when $default != null:
return $default(_that.id,_that.name,_that.location,_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellerModel implements SellerModel {
  const _SellerModel({required this.id, required this.name, required this.location, required this.rating});
  factory _SellerModel.fromJson(Map<String, dynamic> json) => _$SellerModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String location;
@override final  double rating;

/// Create a copy of SellerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerModelCopyWith<_SellerModel> get copyWith => __$SellerModelCopyWithImpl<_SellerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,location,rating);

@override
String toString() {
  return 'SellerModel(id: $id, name: $name, location: $location, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$SellerModelCopyWith<$Res> implements $SellerModelCopyWith<$Res> {
  factory _$SellerModelCopyWith(_SellerModel value, $Res Function(_SellerModel) _then) = __$SellerModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String location, double rating
});




}
/// @nodoc
class __$SellerModelCopyWithImpl<$Res>
    implements _$SellerModelCopyWith<$Res> {
  __$SellerModelCopyWithImpl(this._self, this._then);

  final _SellerModel _self;
  final $Res Function(_SellerModel) _then;

/// Create a copy of SellerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? location = null,Object? rating = null,}) {
  return _then(_SellerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$ProductModel {

 String get id;@JsonKey(name: 'seller_id') String get sellerId;@JsonKey(name: 'seller_name') String get sellerName; String get name; String get category; int get price;@JsonKey(name: 'discount_price') int? get discountPrice;@JsonKey(name: 'image_url') String? get imageUrl; int get stock;@JsonKey(name: 'is_wishlisted') bool get isWishlisted;
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelCopyWith<ProductModel> get copyWith => _$ProductModelCopyWithImpl<ProductModel>(this as ProductModel, _$identity);

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountPrice, discountPrice) || other.discountPrice == discountPrice)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.isWishlisted, isWishlisted) || other.isWishlisted == isWishlisted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sellerId,sellerName,name,category,price,discountPrice,imageUrl,stock,isWishlisted);

@override
String toString() {
  return 'ProductModel(id: $id, sellerId: $sellerId, sellerName: $sellerName, name: $name, category: $category, price: $price, discountPrice: $discountPrice, imageUrl: $imageUrl, stock: $stock, isWishlisted: $isWishlisted)';
}


}

/// @nodoc
abstract mixin class $ProductModelCopyWith<$Res>  {
  factory $ProductModelCopyWith(ProductModel value, $Res Function(ProductModel) _then) = _$ProductModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'seller_id') String sellerId,@JsonKey(name: 'seller_name') String sellerName, String name, String category, int price,@JsonKey(name: 'discount_price') int? discountPrice,@JsonKey(name: 'image_url') String? imageUrl, int stock,@JsonKey(name: 'is_wishlisted') bool isWishlisted
});




}
/// @nodoc
class _$ProductModelCopyWithImpl<$Res>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._self, this._then);

  final ProductModel _self;
  final $Res Function(ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sellerId = null,Object? sellerName = null,Object? name = null,Object? category = null,Object? price = null,Object? discountPrice = freezed,Object? imageUrl = freezed,Object? stock = null,Object? isWishlisted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,sellerName: null == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,discountPrice: freezed == discountPrice ? _self.discountPrice : discountPrice // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,isWishlisted: null == isWishlisted ? _self.isWishlisted : isWishlisted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductModel].
extension ProductModelPatterns on ProductModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'seller_id')  String sellerId, @JsonKey(name: 'seller_name')  String sellerName,  String name,  String category,  int price, @JsonKey(name: 'discount_price')  int? discountPrice, @JsonKey(name: 'image_url')  String? imageUrl,  int stock, @JsonKey(name: 'is_wishlisted')  bool isWishlisted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.sellerId,_that.sellerName,_that.name,_that.category,_that.price,_that.discountPrice,_that.imageUrl,_that.stock,_that.isWishlisted);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'seller_id')  String sellerId, @JsonKey(name: 'seller_name')  String sellerName,  String name,  String category,  int price, @JsonKey(name: 'discount_price')  int? discountPrice, @JsonKey(name: 'image_url')  String? imageUrl,  int stock, @JsonKey(name: 'is_wishlisted')  bool isWishlisted)  $default,) {final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that.id,_that.sellerId,_that.sellerName,_that.name,_that.category,_that.price,_that.discountPrice,_that.imageUrl,_that.stock,_that.isWishlisted);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'seller_id')  String sellerId, @JsonKey(name: 'seller_name')  String sellerName,  String name,  String category,  int price, @JsonKey(name: 'discount_price')  int? discountPrice, @JsonKey(name: 'image_url')  String? imageUrl,  int stock, @JsonKey(name: 'is_wishlisted')  bool isWishlisted)?  $default,) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.sellerId,_that.sellerName,_that.name,_that.category,_that.price,_that.discountPrice,_that.imageUrl,_that.stock,_that.isWishlisted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductModel implements ProductModel {
  const _ProductModel({required this.id, @JsonKey(name: 'seller_id') required this.sellerId, @JsonKey(name: 'seller_name') required this.sellerName, required this.name, required this.category, required this.price, @JsonKey(name: 'discount_price') this.discountPrice, @JsonKey(name: 'image_url') this.imageUrl, required this.stock, @JsonKey(name: 'is_wishlisted') required this.isWishlisted});
  factory _ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'seller_id') final  String sellerId;
@override@JsonKey(name: 'seller_name') final  String sellerName;
@override final  String name;
@override final  String category;
@override final  int price;
@override@JsonKey(name: 'discount_price') final  int? discountPrice;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override final  int stock;
@override@JsonKey(name: 'is_wishlisted') final  bool isWishlisted;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelCopyWith<_ProductModel> get copyWith => __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountPrice, discountPrice) || other.discountPrice == discountPrice)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.isWishlisted, isWishlisted) || other.isWishlisted == isWishlisted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sellerId,sellerName,name,category,price,discountPrice,imageUrl,stock,isWishlisted);

@override
String toString() {
  return 'ProductModel(id: $id, sellerId: $sellerId, sellerName: $sellerName, name: $name, category: $category, price: $price, discountPrice: $discountPrice, imageUrl: $imageUrl, stock: $stock, isWishlisted: $isWishlisted)';
}


}

/// @nodoc
abstract mixin class _$ProductModelCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(_ProductModel value, $Res Function(_ProductModel) _then) = __$ProductModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'seller_id') String sellerId,@JsonKey(name: 'seller_name') String sellerName, String name, String category, int price,@JsonKey(name: 'discount_price') int? discountPrice,@JsonKey(name: 'image_url') String? imageUrl, int stock,@JsonKey(name: 'is_wishlisted') bool isWishlisted
});




}
/// @nodoc
class __$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(this._self, this._then);

  final _ProductModel _self;
  final $Res Function(_ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sellerId = null,Object? sellerName = null,Object? name = null,Object? category = null,Object? price = null,Object? discountPrice = freezed,Object? imageUrl = freezed,Object? stock = null,Object? isWishlisted = null,}) {
  return _then(_ProductModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,sellerName: null == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,discountPrice: freezed == discountPrice ? _self.discountPrice : discountPrice // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,isWishlisted: null == isWishlisted ? _self.isWishlisted : isWishlisted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ProductDetailModel {

 String get id;@JsonKey(name: 'seller_id') String get sellerId;@JsonKey(name: 'seller_name') String get sellerName; String get name; String get category; int get price;@JsonKey(name: 'discount_price') int? get discountPrice;@JsonKey(name: 'image_url') String? get imageUrl; int get stock;@JsonKey(name: 'is_wishlisted') bool get isWishlisted; String? get description; SellerModel? get seller;
/// Create a copy of ProductDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailModelCopyWith<ProductDetailModel> get copyWith => _$ProductDetailModelCopyWithImpl<ProductDetailModel>(this as ProductDetailModel, _$identity);

  /// Serializes this ProductDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountPrice, discountPrice) || other.discountPrice == discountPrice)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.isWishlisted, isWishlisted) || other.isWishlisted == isWishlisted)&&(identical(other.description, description) || other.description == description)&&(identical(other.seller, seller) || other.seller == seller));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sellerId,sellerName,name,category,price,discountPrice,imageUrl,stock,isWishlisted,description,seller);

@override
String toString() {
  return 'ProductDetailModel(id: $id, sellerId: $sellerId, sellerName: $sellerName, name: $name, category: $category, price: $price, discountPrice: $discountPrice, imageUrl: $imageUrl, stock: $stock, isWishlisted: $isWishlisted, description: $description, seller: $seller)';
}


}

/// @nodoc
abstract mixin class $ProductDetailModelCopyWith<$Res>  {
  factory $ProductDetailModelCopyWith(ProductDetailModel value, $Res Function(ProductDetailModel) _then) = _$ProductDetailModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'seller_id') String sellerId,@JsonKey(name: 'seller_name') String sellerName, String name, String category, int price,@JsonKey(name: 'discount_price') int? discountPrice,@JsonKey(name: 'image_url') String? imageUrl, int stock,@JsonKey(name: 'is_wishlisted') bool isWishlisted, String? description, SellerModel? seller
});


$SellerModelCopyWith<$Res>? get seller;

}
/// @nodoc
class _$ProductDetailModelCopyWithImpl<$Res>
    implements $ProductDetailModelCopyWith<$Res> {
  _$ProductDetailModelCopyWithImpl(this._self, this._then);

  final ProductDetailModel _self;
  final $Res Function(ProductDetailModel) _then;

/// Create a copy of ProductDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sellerId = null,Object? sellerName = null,Object? name = null,Object? category = null,Object? price = null,Object? discountPrice = freezed,Object? imageUrl = freezed,Object? stock = null,Object? isWishlisted = null,Object? description = freezed,Object? seller = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,sellerName: null == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,discountPrice: freezed == discountPrice ? _self.discountPrice : discountPrice // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,isWishlisted: null == isWishlisted ? _self.isWishlisted : isWishlisted // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as SellerModel?,
  ));
}
/// Create a copy of ProductDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerModelCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $SellerModelCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetailModel].
extension ProductDetailModelPatterns on ProductDetailModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'seller_id')  String sellerId, @JsonKey(name: 'seller_name')  String sellerName,  String name,  String category,  int price, @JsonKey(name: 'discount_price')  int? discountPrice, @JsonKey(name: 'image_url')  String? imageUrl,  int stock, @JsonKey(name: 'is_wishlisted')  bool isWishlisted,  String? description,  SellerModel? seller)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailModel() when $default != null:
return $default(_that.id,_that.sellerId,_that.sellerName,_that.name,_that.category,_that.price,_that.discountPrice,_that.imageUrl,_that.stock,_that.isWishlisted,_that.description,_that.seller);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'seller_id')  String sellerId, @JsonKey(name: 'seller_name')  String sellerName,  String name,  String category,  int price, @JsonKey(name: 'discount_price')  int? discountPrice, @JsonKey(name: 'image_url')  String? imageUrl,  int stock, @JsonKey(name: 'is_wishlisted')  bool isWishlisted,  String? description,  SellerModel? seller)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailModel():
return $default(_that.id,_that.sellerId,_that.sellerName,_that.name,_that.category,_that.price,_that.discountPrice,_that.imageUrl,_that.stock,_that.isWishlisted,_that.description,_that.seller);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'seller_id')  String sellerId, @JsonKey(name: 'seller_name')  String sellerName,  String name,  String category,  int price, @JsonKey(name: 'discount_price')  int? discountPrice, @JsonKey(name: 'image_url')  String? imageUrl,  int stock, @JsonKey(name: 'is_wishlisted')  bool isWishlisted,  String? description,  SellerModel? seller)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailModel() when $default != null:
return $default(_that.id,_that.sellerId,_that.sellerName,_that.name,_that.category,_that.price,_that.discountPrice,_that.imageUrl,_that.stock,_that.isWishlisted,_that.description,_that.seller);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDetailModel implements ProductDetailModel {
  const _ProductDetailModel({required this.id, @JsonKey(name: 'seller_id') required this.sellerId, @JsonKey(name: 'seller_name') required this.sellerName, required this.name, required this.category, required this.price, @JsonKey(name: 'discount_price') this.discountPrice, @JsonKey(name: 'image_url') this.imageUrl, required this.stock, @JsonKey(name: 'is_wishlisted') required this.isWishlisted, this.description, this.seller});
  factory _ProductDetailModel.fromJson(Map<String, dynamic> json) => _$ProductDetailModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'seller_id') final  String sellerId;
@override@JsonKey(name: 'seller_name') final  String sellerName;
@override final  String name;
@override final  String category;
@override final  int price;
@override@JsonKey(name: 'discount_price') final  int? discountPrice;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override final  int stock;
@override@JsonKey(name: 'is_wishlisted') final  bool isWishlisted;
@override final  String? description;
@override final  SellerModel? seller;

/// Create a copy of ProductDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailModelCopyWith<_ProductDetailModel> get copyWith => __$ProductDetailModelCopyWithImpl<_ProductDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountPrice, discountPrice) || other.discountPrice == discountPrice)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.isWishlisted, isWishlisted) || other.isWishlisted == isWishlisted)&&(identical(other.description, description) || other.description == description)&&(identical(other.seller, seller) || other.seller == seller));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sellerId,sellerName,name,category,price,discountPrice,imageUrl,stock,isWishlisted,description,seller);

@override
String toString() {
  return 'ProductDetailModel(id: $id, sellerId: $sellerId, sellerName: $sellerName, name: $name, category: $category, price: $price, discountPrice: $discountPrice, imageUrl: $imageUrl, stock: $stock, isWishlisted: $isWishlisted, description: $description, seller: $seller)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailModelCopyWith<$Res> implements $ProductDetailModelCopyWith<$Res> {
  factory _$ProductDetailModelCopyWith(_ProductDetailModel value, $Res Function(_ProductDetailModel) _then) = __$ProductDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'seller_id') String sellerId,@JsonKey(name: 'seller_name') String sellerName, String name, String category, int price,@JsonKey(name: 'discount_price') int? discountPrice,@JsonKey(name: 'image_url') String? imageUrl, int stock,@JsonKey(name: 'is_wishlisted') bool isWishlisted, String? description, SellerModel? seller
});


@override $SellerModelCopyWith<$Res>? get seller;

}
/// @nodoc
class __$ProductDetailModelCopyWithImpl<$Res>
    implements _$ProductDetailModelCopyWith<$Res> {
  __$ProductDetailModelCopyWithImpl(this._self, this._then);

  final _ProductDetailModel _self;
  final $Res Function(_ProductDetailModel) _then;

/// Create a copy of ProductDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sellerId = null,Object? sellerName = null,Object? name = null,Object? category = null,Object? price = null,Object? discountPrice = freezed,Object? imageUrl = freezed,Object? stock = null,Object? isWishlisted = null,Object? description = freezed,Object? seller = freezed,}) {
  return _then(_ProductDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,sellerName: null == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,discountPrice: freezed == discountPrice ? _self.discountPrice : discountPrice // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,isWishlisted: null == isWishlisted ? _self.isWishlisted : isWishlisted // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as SellerModel?,
  ));
}

/// Create a copy of ProductDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerModelCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $SellerModelCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}

// dart format on
