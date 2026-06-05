// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckoutItemSummaryModel {

@JsonKey(name: 'product_name') String get productName; int get quantity; int get price; int get subtotal;
/// Create a copy of CheckoutItemSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutItemSummaryModelCopyWith<CheckoutItemSummaryModel> get copyWith => _$CheckoutItemSummaryModelCopyWithImpl<CheckoutItemSummaryModel>(this as CheckoutItemSummaryModel, _$identity);

  /// Serializes this CheckoutItemSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutItemSummaryModel&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,quantity,price,subtotal);

@override
String toString() {
  return 'CheckoutItemSummaryModel(productName: $productName, quantity: $quantity, price: $price, subtotal: $subtotal)';
}


}

/// @nodoc
abstract mixin class $CheckoutItemSummaryModelCopyWith<$Res>  {
  factory $CheckoutItemSummaryModelCopyWith(CheckoutItemSummaryModel value, $Res Function(CheckoutItemSummaryModel) _then) = _$CheckoutItemSummaryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_name') String productName, int quantity, int price, int subtotal
});




}
/// @nodoc
class _$CheckoutItemSummaryModelCopyWithImpl<$Res>
    implements $CheckoutItemSummaryModelCopyWith<$Res> {
  _$CheckoutItemSummaryModelCopyWithImpl(this._self, this._then);

  final CheckoutItemSummaryModel _self;
  final $Res Function(CheckoutItemSummaryModel) _then;

/// Create a copy of CheckoutItemSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productName = null,Object? quantity = null,Object? price = null,Object? subtotal = null,}) {
  return _then(_self.copyWith(
productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutItemSummaryModel].
extension CheckoutItemSummaryModelPatterns on CheckoutItemSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutItemSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutItemSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutItemSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutItemSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutItemSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutItemSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_name')  String productName,  int quantity,  int price,  int subtotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutItemSummaryModel() when $default != null:
return $default(_that.productName,_that.quantity,_that.price,_that.subtotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_name')  String productName,  int quantity,  int price,  int subtotal)  $default,) {final _that = this;
switch (_that) {
case _CheckoutItemSummaryModel():
return $default(_that.productName,_that.quantity,_that.price,_that.subtotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_name')  String productName,  int quantity,  int price,  int subtotal)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutItemSummaryModel() when $default != null:
return $default(_that.productName,_that.quantity,_that.price,_that.subtotal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutItemSummaryModel implements CheckoutItemSummaryModel {
  const _CheckoutItemSummaryModel({@JsonKey(name: 'product_name') required this.productName, required this.quantity, required this.price, required this.subtotal});
  factory _CheckoutItemSummaryModel.fromJson(Map<String, dynamic> json) => _$CheckoutItemSummaryModelFromJson(json);

@override@JsonKey(name: 'product_name') final  String productName;
@override final  int quantity;
@override final  int price;
@override final  int subtotal;

/// Create a copy of CheckoutItemSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutItemSummaryModelCopyWith<_CheckoutItemSummaryModel> get copyWith => __$CheckoutItemSummaryModelCopyWithImpl<_CheckoutItemSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutItemSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutItemSummaryModel&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,quantity,price,subtotal);

@override
String toString() {
  return 'CheckoutItemSummaryModel(productName: $productName, quantity: $quantity, price: $price, subtotal: $subtotal)';
}


}

/// @nodoc
abstract mixin class _$CheckoutItemSummaryModelCopyWith<$Res> implements $CheckoutItemSummaryModelCopyWith<$Res> {
  factory _$CheckoutItemSummaryModelCopyWith(_CheckoutItemSummaryModel value, $Res Function(_CheckoutItemSummaryModel) _then) = __$CheckoutItemSummaryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_name') String productName, int quantity, int price, int subtotal
});




}
/// @nodoc
class __$CheckoutItemSummaryModelCopyWithImpl<$Res>
    implements _$CheckoutItemSummaryModelCopyWith<$Res> {
  __$CheckoutItemSummaryModelCopyWithImpl(this._self, this._then);

  final _CheckoutItemSummaryModel _self;
  final $Res Function(_CheckoutItemSummaryModel) _then;

/// Create a copy of CheckoutItemSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productName = null,Object? quantity = null,Object? price = null,Object? subtotal = null,}) {
  return _then(_CheckoutItemSummaryModel(
productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CheckoutSummaryModel {

 List<CheckoutItemSummaryModel> get items; int get subtotal;@JsonKey(name: 'shipping_cost') int get shippingCost;@JsonKey(name: 'protection_fee') int get protectionFee; int get total;
/// Create a copy of CheckoutSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutSummaryModelCopyWith<CheckoutSummaryModel> get copyWith => _$CheckoutSummaryModelCopyWithImpl<CheckoutSummaryModel>(this as CheckoutSummaryModel, _$identity);

  /// Serializes this CheckoutSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutSummaryModel&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.protectionFee, protectionFee) || other.protectionFee == protectionFee)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),subtotal,shippingCost,protectionFee,total);

@override
String toString() {
  return 'CheckoutSummaryModel(items: $items, subtotal: $subtotal, shippingCost: $shippingCost, protectionFee: $protectionFee, total: $total)';
}


}

/// @nodoc
abstract mixin class $CheckoutSummaryModelCopyWith<$Res>  {
  factory $CheckoutSummaryModelCopyWith(CheckoutSummaryModel value, $Res Function(CheckoutSummaryModel) _then) = _$CheckoutSummaryModelCopyWithImpl;
@useResult
$Res call({
 List<CheckoutItemSummaryModel> items, int subtotal,@JsonKey(name: 'shipping_cost') int shippingCost,@JsonKey(name: 'protection_fee') int protectionFee, int total
});




}
/// @nodoc
class _$CheckoutSummaryModelCopyWithImpl<$Res>
    implements $CheckoutSummaryModelCopyWith<$Res> {
  _$CheckoutSummaryModelCopyWithImpl(this._self, this._then);

  final CheckoutSummaryModel _self;
  final $Res Function(CheckoutSummaryModel) _then;

/// Create a copy of CheckoutSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? subtotal = null,Object? shippingCost = null,Object? protectionFee = null,Object? total = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CheckoutItemSummaryModel>,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as int,protectionFee: null == protectionFee ? _self.protectionFee : protectionFee // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutSummaryModel].
extension CheckoutSummaryModelPatterns on CheckoutSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CheckoutItemSummaryModel> items,  int subtotal, @JsonKey(name: 'shipping_cost')  int shippingCost, @JsonKey(name: 'protection_fee')  int protectionFee,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutSummaryModel() when $default != null:
return $default(_that.items,_that.subtotal,_that.shippingCost,_that.protectionFee,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CheckoutItemSummaryModel> items,  int subtotal, @JsonKey(name: 'shipping_cost')  int shippingCost, @JsonKey(name: 'protection_fee')  int protectionFee,  int total)  $default,) {final _that = this;
switch (_that) {
case _CheckoutSummaryModel():
return $default(_that.items,_that.subtotal,_that.shippingCost,_that.protectionFee,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CheckoutItemSummaryModel> items,  int subtotal, @JsonKey(name: 'shipping_cost')  int shippingCost, @JsonKey(name: 'protection_fee')  int protectionFee,  int total)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutSummaryModel() when $default != null:
return $default(_that.items,_that.subtotal,_that.shippingCost,_that.protectionFee,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckoutSummaryModel implements CheckoutSummaryModel {
  const _CheckoutSummaryModel({final  List<CheckoutItemSummaryModel> items = const [], required this.subtotal, @JsonKey(name: 'shipping_cost') required this.shippingCost, @JsonKey(name: 'protection_fee') required this.protectionFee, required this.total}): _items = items;
  factory _CheckoutSummaryModel.fromJson(Map<String, dynamic> json) => _$CheckoutSummaryModelFromJson(json);

 final  List<CheckoutItemSummaryModel> _items;
@override@JsonKey() List<CheckoutItemSummaryModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int subtotal;
@override@JsonKey(name: 'shipping_cost') final  int shippingCost;
@override@JsonKey(name: 'protection_fee') final  int protectionFee;
@override final  int total;

/// Create a copy of CheckoutSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutSummaryModelCopyWith<_CheckoutSummaryModel> get copyWith => __$CheckoutSummaryModelCopyWithImpl<_CheckoutSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutSummaryModel&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.protectionFee, protectionFee) || other.protectionFee == protectionFee)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),subtotal,shippingCost,protectionFee,total);

@override
String toString() {
  return 'CheckoutSummaryModel(items: $items, subtotal: $subtotal, shippingCost: $shippingCost, protectionFee: $protectionFee, total: $total)';
}


}

/// @nodoc
abstract mixin class _$CheckoutSummaryModelCopyWith<$Res> implements $CheckoutSummaryModelCopyWith<$Res> {
  factory _$CheckoutSummaryModelCopyWith(_CheckoutSummaryModel value, $Res Function(_CheckoutSummaryModel) _then) = __$CheckoutSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 List<CheckoutItemSummaryModel> items, int subtotal,@JsonKey(name: 'shipping_cost') int shippingCost,@JsonKey(name: 'protection_fee') int protectionFee, int total
});




}
/// @nodoc
class __$CheckoutSummaryModelCopyWithImpl<$Res>
    implements _$CheckoutSummaryModelCopyWith<$Res> {
  __$CheckoutSummaryModelCopyWithImpl(this._self, this._then);

  final _CheckoutSummaryModel _self;
  final $Res Function(_CheckoutSummaryModel) _then;

/// Create a copy of CheckoutSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? subtotal = null,Object? shippingCost = null,Object? protectionFee = null,Object? total = null,}) {
  return _then(_CheckoutSummaryModel(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CheckoutItemSummaryModel>,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as int,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as int,protectionFee: null == protectionFee ? _self.protectionFee : protectionFee // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
