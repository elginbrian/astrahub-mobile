// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WishlistToggleModel {

@JsonKey(name: 'product_id') String get productId;@JsonKey(name: 'is_wishlisted') bool get isWishlisted;
/// Create a copy of WishlistToggleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistToggleModelCopyWith<WishlistToggleModel> get copyWith => _$WishlistToggleModelCopyWithImpl<WishlistToggleModel>(this as WishlistToggleModel, _$identity);

  /// Serializes this WishlistToggleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistToggleModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.isWishlisted, isWishlisted) || other.isWishlisted == isWishlisted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,isWishlisted);

@override
String toString() {
  return 'WishlistToggleModel(productId: $productId, isWishlisted: $isWishlisted)';
}


}

/// @nodoc
abstract mixin class $WishlistToggleModelCopyWith<$Res>  {
  factory $WishlistToggleModelCopyWith(WishlistToggleModel value, $Res Function(WishlistToggleModel) _then) = _$WishlistToggleModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'is_wishlisted') bool isWishlisted
});




}
/// @nodoc
class _$WishlistToggleModelCopyWithImpl<$Res>
    implements $WishlistToggleModelCopyWith<$Res> {
  _$WishlistToggleModelCopyWithImpl(this._self, this._then);

  final WishlistToggleModel _self;
  final $Res Function(WishlistToggleModel) _then;

/// Create a copy of WishlistToggleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? isWishlisted = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,isWishlisted: null == isWishlisted ? _self.isWishlisted : isWishlisted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WishlistToggleModel].
extension WishlistToggleModelPatterns on WishlistToggleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WishlistToggleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WishlistToggleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WishlistToggleModel value)  $default,){
final _that = this;
switch (_that) {
case _WishlistToggleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WishlistToggleModel value)?  $default,){
final _that = this;
switch (_that) {
case _WishlistToggleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'is_wishlisted')  bool isWishlisted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WishlistToggleModel() when $default != null:
return $default(_that.productId,_that.isWishlisted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'is_wishlisted')  bool isWishlisted)  $default,) {final _that = this;
switch (_that) {
case _WishlistToggleModel():
return $default(_that.productId,_that.isWishlisted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'is_wishlisted')  bool isWishlisted)?  $default,) {final _that = this;
switch (_that) {
case _WishlistToggleModel() when $default != null:
return $default(_that.productId,_that.isWishlisted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WishlistToggleModel implements WishlistToggleModel {
  const _WishlistToggleModel({@JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'is_wishlisted') required this.isWishlisted});
  factory _WishlistToggleModel.fromJson(Map<String, dynamic> json) => _$WishlistToggleModelFromJson(json);

@override@JsonKey(name: 'product_id') final  String productId;
@override@JsonKey(name: 'is_wishlisted') final  bool isWishlisted;

/// Create a copy of WishlistToggleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistToggleModelCopyWith<_WishlistToggleModel> get copyWith => __$WishlistToggleModelCopyWithImpl<_WishlistToggleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WishlistToggleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistToggleModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.isWishlisted, isWishlisted) || other.isWishlisted == isWishlisted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,isWishlisted);

@override
String toString() {
  return 'WishlistToggleModel(productId: $productId, isWishlisted: $isWishlisted)';
}


}

/// @nodoc
abstract mixin class _$WishlistToggleModelCopyWith<$Res> implements $WishlistToggleModelCopyWith<$Res> {
  factory _$WishlistToggleModelCopyWith(_WishlistToggleModel value, $Res Function(_WishlistToggleModel) _then) = __$WishlistToggleModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'is_wishlisted') bool isWishlisted
});




}
/// @nodoc
class __$WishlistToggleModelCopyWithImpl<$Res>
    implements _$WishlistToggleModelCopyWith<$Res> {
  __$WishlistToggleModelCopyWithImpl(this._self, this._then);

  final _WishlistToggleModel _self;
  final $Res Function(_WishlistToggleModel) _then;

/// Create a copy of WishlistToggleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? isWishlisted = null,}) {
  return _then(_WishlistToggleModel(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,isWishlisted: null == isWishlisted ? _self.isWishlisted : isWishlisted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
