// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderItemModel {

 String get id;@JsonKey(name: 'product_id') String get productId;@JsonKey(name: 'name') String get productName;@JsonKey(name: 'seller_id') String get sellerId; int get price; int get quantity; int get subtotal;
/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemModelCopyWith<OrderItemModel> get copyWith => _$OrderItemModelCopyWithImpl<OrderItemModel>(this as OrderItemModel, _$identity);

  /// Serializes this OrderItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,sellerId,price,quantity,subtotal);

@override
String toString() {
  return 'OrderItemModel(id: $id, productId: $productId, productName: $productName, sellerId: $sellerId, price: $price, quantity: $quantity, subtotal: $subtotal)';
}


}

/// @nodoc
abstract mixin class $OrderItemModelCopyWith<$Res>  {
  factory $OrderItemModelCopyWith(OrderItemModel value, $Res Function(OrderItemModel) _then) = _$OrderItemModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'name') String productName,@JsonKey(name: 'seller_id') String sellerId, int price, int quantity, int subtotal
});




}
/// @nodoc
class _$OrderItemModelCopyWithImpl<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  _$OrderItemModelCopyWithImpl(this._self, this._then);

  final OrderItemModel _self;
  final $Res Function(OrderItemModel) _then;

/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? sellerId = null,Object? price = null,Object? quantity = null,Object? subtotal = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItemModel].
extension OrderItemModelPatterns on OrderItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'name')  String productName, @JsonKey(name: 'seller_id')  String sellerId,  int price,  int quantity,  int subtotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItemModel() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.sellerId,_that.price,_that.quantity,_that.subtotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'name')  String productName, @JsonKey(name: 'seller_id')  String sellerId,  int price,  int quantity,  int subtotal)  $default,) {final _that = this;
switch (_that) {
case _OrderItemModel():
return $default(_that.id,_that.productId,_that.productName,_that.sellerId,_that.price,_that.quantity,_that.subtotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'name')  String productName, @JsonKey(name: 'seller_id')  String sellerId,  int price,  int quantity,  int subtotal)?  $default,) {final _that = this;
switch (_that) {
case _OrderItemModel() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.sellerId,_that.price,_that.quantity,_that.subtotal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItemModel implements OrderItemModel {
  const _OrderItemModel({required this.id, @JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'name') required this.productName, @JsonKey(name: 'seller_id') required this.sellerId, required this.price, required this.quantity, required this.subtotal});
  factory _OrderItemModel.fromJson(Map<String, dynamic> json) => _$OrderItemModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'product_id') final  String productId;
@override@JsonKey(name: 'name') final  String productName;
@override@JsonKey(name: 'seller_id') final  String sellerId;
@override final  int price;
@override final  int quantity;
@override final  int subtotal;

/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemModelCopyWith<_OrderItemModel> get copyWith => __$OrderItemModelCopyWithImpl<_OrderItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,sellerId,price,quantity,subtotal);

@override
String toString() {
  return 'OrderItemModel(id: $id, productId: $productId, productName: $productName, sellerId: $sellerId, price: $price, quantity: $quantity, subtotal: $subtotal)';
}


}

/// @nodoc
abstract mixin class _$OrderItemModelCopyWith<$Res> implements $OrderItemModelCopyWith<$Res> {
  factory _$OrderItemModelCopyWith(_OrderItemModel value, $Res Function(_OrderItemModel) _then) = __$OrderItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'name') String productName,@JsonKey(name: 'seller_id') String sellerId, int price, int quantity, int subtotal
});




}
/// @nodoc
class __$OrderItemModelCopyWithImpl<$Res>
    implements _$OrderItemModelCopyWith<$Res> {
  __$OrderItemModelCopyWithImpl(this._self, this._then);

  final _OrderItemModel _self;
  final $Res Function(_OrderItemModel) _then;

/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? sellerId = null,Object? price = null,Object? quantity = null,Object? subtotal = null,}) {
  return _then(_OrderItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$OrderSummaryModel {

 String get id; String get status;@JsonKey(name: 'shipping_method') String get shippingMethod; int get total;@JsonKey(name: 'item_count') int get itemCount;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of OrderSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderSummaryModelCopyWith<OrderSummaryModel> get copyWith => _$OrderSummaryModelCopyWithImpl<OrderSummaryModel>(this as OrderSummaryModel, _$identity);

  /// Serializes this OrderSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSummaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.shippingMethod, shippingMethod) || other.shippingMethod == shippingMethod)&&(identical(other.total, total) || other.total == total)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,shippingMethod,total,itemCount,createdAt);

@override
String toString() {
  return 'OrderSummaryModel(id: $id, status: $status, shippingMethod: $shippingMethod, total: $total, itemCount: $itemCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrderSummaryModelCopyWith<$Res>  {
  factory $OrderSummaryModelCopyWith(OrderSummaryModel value, $Res Function(OrderSummaryModel) _then) = _$OrderSummaryModelCopyWithImpl;
@useResult
$Res call({
 String id, String status,@JsonKey(name: 'shipping_method') String shippingMethod, int total,@JsonKey(name: 'item_count') int itemCount,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$OrderSummaryModelCopyWithImpl<$Res>
    implements $OrderSummaryModelCopyWith<$Res> {
  _$OrderSummaryModelCopyWithImpl(this._self, this._then);

  final OrderSummaryModel _self;
  final $Res Function(OrderSummaryModel) _then;

/// Create a copy of OrderSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? shippingMethod = null,Object? total = null,Object? itemCount = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,shippingMethod: null == shippingMethod ? _self.shippingMethod : shippingMethod // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderSummaryModel].
extension OrderSummaryModelPatterns on OrderSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status, @JsonKey(name: 'shipping_method')  String shippingMethod,  int total, @JsonKey(name: 'item_count')  int itemCount, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderSummaryModel() when $default != null:
return $default(_that.id,_that.status,_that.shippingMethod,_that.total,_that.itemCount,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status, @JsonKey(name: 'shipping_method')  String shippingMethod,  int total, @JsonKey(name: 'item_count')  int itemCount, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _OrderSummaryModel():
return $default(_that.id,_that.status,_that.shippingMethod,_that.total,_that.itemCount,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status, @JsonKey(name: 'shipping_method')  String shippingMethod,  int total, @JsonKey(name: 'item_count')  int itemCount, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderSummaryModel() when $default != null:
return $default(_that.id,_that.status,_that.shippingMethod,_that.total,_that.itemCount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderSummaryModel implements OrderSummaryModel {
  const _OrderSummaryModel({required this.id, required this.status, @JsonKey(name: 'shipping_method') required this.shippingMethod, required this.total, @JsonKey(name: 'item_count') required this.itemCount, @JsonKey(name: 'created_at') required this.createdAt});
  factory _OrderSummaryModel.fromJson(Map<String, dynamic> json) => _$OrderSummaryModelFromJson(json);

@override final  String id;
@override final  String status;
@override@JsonKey(name: 'shipping_method') final  String shippingMethod;
@override final  int total;
@override@JsonKey(name: 'item_count') final  int itemCount;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of OrderSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderSummaryModelCopyWith<_OrderSummaryModel> get copyWith => __$OrderSummaryModelCopyWithImpl<_OrderSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderSummaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.shippingMethod, shippingMethod) || other.shippingMethod == shippingMethod)&&(identical(other.total, total) || other.total == total)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,shippingMethod,total,itemCount,createdAt);

@override
String toString() {
  return 'OrderSummaryModel(id: $id, status: $status, shippingMethod: $shippingMethod, total: $total, itemCount: $itemCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrderSummaryModelCopyWith<$Res> implements $OrderSummaryModelCopyWith<$Res> {
  factory _$OrderSummaryModelCopyWith(_OrderSummaryModel value, $Res Function(_OrderSummaryModel) _then) = __$OrderSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String status,@JsonKey(name: 'shipping_method') String shippingMethod, int total,@JsonKey(name: 'item_count') int itemCount,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$OrderSummaryModelCopyWithImpl<$Res>
    implements _$OrderSummaryModelCopyWith<$Res> {
  __$OrderSummaryModelCopyWithImpl(this._self, this._then);

  final _OrderSummaryModel _self;
  final $Res Function(_OrderSummaryModel) _then;

/// Create a copy of OrderSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? shippingMethod = null,Object? total = null,Object? itemCount = null,Object? createdAt = null,}) {
  return _then(_OrderSummaryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,shippingMethod: null == shippingMethod ? _self.shippingMethod : shippingMethod // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,itemCount: null == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OrderDetailModel {

 String get id; String get status;@JsonKey(name: 'shipping_address_id') String? get shippingAddressId;@JsonKey(name: 'shipping_method') String get shippingMethod;@JsonKey(name: 'payment_method') String get paymentMethod;@JsonKey(name: 'use_product_protection') bool get useProductProtection; List<OrderItemModel> get items; int get subtotal;@JsonKey(name: 'shipping_cost') int get shippingCost;@JsonKey(name: 'protection_fee') int get protectionFee; int get total;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of OrderDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailModelCopyWith<OrderDetailModel> get copyWith => _$OrderDetailModelCopyWithImpl<OrderDetailModel>(this as OrderDetailModel, _$identity);

  /// Serializes this OrderDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.shippingAddressId, shippingAddressId) || other.shippingAddressId == shippingAddressId)&&(identical(other.shippingMethod, shippingMethod) || other.shippingMethod == shippingMethod)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.useProductProtection, useProductProtection) || other.useProductProtection == useProductProtection)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.protectionFee, protectionFee) || other.protectionFee == protectionFee)&&(identical(other.total, total) || other.total == total)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,shippingAddressId,shippingMethod,paymentMethod,useProductProtection,const DeepCollectionEquality().hash(items),subtotal,shippingCost,protectionFee,total,createdAt,updatedAt);

@override
String toString() {
  return 'OrderDetailModel(id: $id, status: $status, shippingAddressId: $shippingAddressId, shippingMethod: $shippingMethod, paymentMethod: $paymentMethod, useProductProtection: $useProductProtection, items: $items, subtotal: $subtotal, shippingCost: $shippingCost, protectionFee: $protectionFee, total: $total, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $OrderDetailModelCopyWith<$Res>  {
  factory $OrderDetailModelCopyWith(OrderDetailModel value, $Res Function(OrderDetailModel) _then) = _$OrderDetailModelCopyWithImpl;
@useResult
$Res call({
 String id, String status,@JsonKey(name: 'shipping_address_id') String? shippingAddressId,@JsonKey(name: 'shipping_method') String shippingMethod,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'use_product_protection') bool useProductProtection, List<OrderItemModel> items, int subtotal,@JsonKey(name: 'shipping_cost') int shippingCost,@JsonKey(name: 'protection_fee') int protectionFee, int total,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$OrderDetailModelCopyWithImpl<$Res>
    implements $OrderDetailModelCopyWith<$Res> {
  _$OrderDetailModelCopyWithImpl(this._self, this._then);

  final OrderDetailModel _self;
  final $Res Function(OrderDetailModel) _then;

/// Create a copy of OrderDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? shippingAddressId = freezed,Object? shippingMethod = null,Object? paymentMethod = null,Object? useProductProtection = null,Object? items = null,Object? subtotal = null,Object? shippingCost = null,Object? protectionFee = null,Object? total = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,shippingAddressId: freezed == shippingAddressId ? _self.shippingAddressId : shippingAddressId // ignore: cast_nullable_to_non_nullable
as String?,shippingMethod: null == shippingMethod ? _self.shippingMethod : shippingMethod // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,useProductProtection: null == useProductProtection ? _self.useProductProtection : useProductProtection // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemModel>,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as int,protectionFee: null == protectionFee ? _self.protectionFee : protectionFee // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderDetailModel].
extension OrderDetailModelPatterns on OrderDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status, @JsonKey(name: 'shipping_address_id')  String? shippingAddressId, @JsonKey(name: 'shipping_method')  String shippingMethod, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'use_product_protection')  bool useProductProtection,  List<OrderItemModel> items,  int subtotal, @JsonKey(name: 'shipping_cost')  int shippingCost, @JsonKey(name: 'protection_fee')  int protectionFee,  int total, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailModel() when $default != null:
return $default(_that.id,_that.status,_that.shippingAddressId,_that.shippingMethod,_that.paymentMethod,_that.useProductProtection,_that.items,_that.subtotal,_that.shippingCost,_that.protectionFee,_that.total,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status, @JsonKey(name: 'shipping_address_id')  String? shippingAddressId, @JsonKey(name: 'shipping_method')  String shippingMethod, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'use_product_protection')  bool useProductProtection,  List<OrderItemModel> items,  int subtotal, @JsonKey(name: 'shipping_cost')  int shippingCost, @JsonKey(name: 'protection_fee')  int protectionFee,  int total, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailModel():
return $default(_that.id,_that.status,_that.shippingAddressId,_that.shippingMethod,_that.paymentMethod,_that.useProductProtection,_that.items,_that.subtotal,_that.shippingCost,_that.protectionFee,_that.total,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status, @JsonKey(name: 'shipping_address_id')  String? shippingAddressId, @JsonKey(name: 'shipping_method')  String shippingMethod, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'use_product_protection')  bool useProductProtection,  List<OrderItemModel> items,  int subtotal, @JsonKey(name: 'shipping_cost')  int shippingCost, @JsonKey(name: 'protection_fee')  int protectionFee,  int total, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailModel() when $default != null:
return $default(_that.id,_that.status,_that.shippingAddressId,_that.shippingMethod,_that.paymentMethod,_that.useProductProtection,_that.items,_that.subtotal,_that.shippingCost,_that.protectionFee,_that.total,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderDetailModel implements OrderDetailModel {
  const _OrderDetailModel({required this.id, required this.status, @JsonKey(name: 'shipping_address_id') this.shippingAddressId, @JsonKey(name: 'shipping_method') required this.shippingMethod, @JsonKey(name: 'payment_method') required this.paymentMethod, @JsonKey(name: 'use_product_protection') required this.useProductProtection, final  List<OrderItemModel> items = const [], required this.subtotal, @JsonKey(name: 'shipping_cost') required this.shippingCost, @JsonKey(name: 'protection_fee') required this.protectionFee, required this.total, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): _items = items;
  factory _OrderDetailModel.fromJson(Map<String, dynamic> json) => _$OrderDetailModelFromJson(json);

@override final  String id;
@override final  String status;
@override@JsonKey(name: 'shipping_address_id') final  String? shippingAddressId;
@override@JsonKey(name: 'shipping_method') final  String shippingMethod;
@override@JsonKey(name: 'payment_method') final  String paymentMethod;
@override@JsonKey(name: 'use_product_protection') final  bool useProductProtection;
 final  List<OrderItemModel> _items;
@override@JsonKey() List<OrderItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int subtotal;
@override@JsonKey(name: 'shipping_cost') final  int shippingCost;
@override@JsonKey(name: 'protection_fee') final  int protectionFee;
@override final  int total;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of OrderDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailModelCopyWith<_OrderDetailModel> get copyWith => __$OrderDetailModelCopyWithImpl<_OrderDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.shippingAddressId, shippingAddressId) || other.shippingAddressId == shippingAddressId)&&(identical(other.shippingMethod, shippingMethod) || other.shippingMethod == shippingMethod)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.useProductProtection, useProductProtection) || other.useProductProtection == useProductProtection)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.protectionFee, protectionFee) || other.protectionFee == protectionFee)&&(identical(other.total, total) || other.total == total)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,shippingAddressId,shippingMethod,paymentMethod,useProductProtection,const DeepCollectionEquality().hash(_items),subtotal,shippingCost,protectionFee,total,createdAt,updatedAt);

@override
String toString() {
  return 'OrderDetailModel(id: $id, status: $status, shippingAddressId: $shippingAddressId, shippingMethod: $shippingMethod, paymentMethod: $paymentMethod, useProductProtection: $useProductProtection, items: $items, subtotal: $subtotal, shippingCost: $shippingCost, protectionFee: $protectionFee, total: $total, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailModelCopyWith<$Res> implements $OrderDetailModelCopyWith<$Res> {
  factory _$OrderDetailModelCopyWith(_OrderDetailModel value, $Res Function(_OrderDetailModel) _then) = __$OrderDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String status,@JsonKey(name: 'shipping_address_id') String? shippingAddressId,@JsonKey(name: 'shipping_method') String shippingMethod,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'use_product_protection') bool useProductProtection, List<OrderItemModel> items, int subtotal,@JsonKey(name: 'shipping_cost') int shippingCost,@JsonKey(name: 'protection_fee') int protectionFee, int total,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$OrderDetailModelCopyWithImpl<$Res>
    implements _$OrderDetailModelCopyWith<$Res> {
  __$OrderDetailModelCopyWithImpl(this._self, this._then);

  final _OrderDetailModel _self;
  final $Res Function(_OrderDetailModel) _then;

/// Create a copy of OrderDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? shippingAddressId = freezed,Object? shippingMethod = null,Object? paymentMethod = null,Object? useProductProtection = null,Object? items = null,Object? subtotal = null,Object? shippingCost = null,Object? protectionFee = null,Object? total = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_OrderDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,shippingAddressId: freezed == shippingAddressId ? _self.shippingAddressId : shippingAddressId // ignore: cast_nullable_to_non_nullable
as String?,shippingMethod: null == shippingMethod ? _self.shippingMethod : shippingMethod // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,useProductProtection: null == useProductProtection ? _self.useProductProtection : useProductProtection // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemModel>,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as int,protectionFee: null == protectionFee ? _self.protectionFee : protectionFee // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
