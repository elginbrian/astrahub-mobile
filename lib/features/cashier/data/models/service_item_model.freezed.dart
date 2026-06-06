// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceItemModel {

 String get id;@JsonKey(name: 'item_type') String get itemType;@JsonKey(name: 'item_id') String? get itemId; String get name; int get price;
/// Create a copy of ServiceItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceItemModelCopyWith<ServiceItemModel> get copyWith => _$ServiceItemModelCopyWithImpl<ServiceItemModel>(this as ServiceItemModel, _$identity);

  /// Serializes this ServiceItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemType,itemId,name,price);

@override
String toString() {
  return 'ServiceItemModel(id: $id, itemType: $itemType, itemId: $itemId, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class $ServiceItemModelCopyWith<$Res>  {
  factory $ServiceItemModelCopyWith(ServiceItemModel value, $Res Function(ServiceItemModel) _then) = _$ServiceItemModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'item_type') String itemType,@JsonKey(name: 'item_id') String? itemId, String name, int price
});




}
/// @nodoc
class _$ServiceItemModelCopyWithImpl<$Res>
    implements $ServiceItemModelCopyWith<$Res> {
  _$ServiceItemModelCopyWithImpl(this._self, this._then);

  final ServiceItemModel _self;
  final $Res Function(ServiceItemModel) _then;

/// Create a copy of ServiceItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? itemType = null,Object? itemId = freezed,Object? name = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceItemModel].
extension ServiceItemModelPatterns on ServiceItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceItemModel value)  $default,){
final _that = this;
switch (_that) {
case _ServiceItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'item_type')  String itemType, @JsonKey(name: 'item_id')  String? itemId,  String name,  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceItemModel() when $default != null:
return $default(_that.id,_that.itemType,_that.itemId,_that.name,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'item_type')  String itemType, @JsonKey(name: 'item_id')  String? itemId,  String name,  int price)  $default,) {final _that = this;
switch (_that) {
case _ServiceItemModel():
return $default(_that.id,_that.itemType,_that.itemId,_that.name,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'item_type')  String itemType, @JsonKey(name: 'item_id')  String? itemId,  String name,  int price)?  $default,) {final _that = this;
switch (_that) {
case _ServiceItemModel() when $default != null:
return $default(_that.id,_that.itemType,_that.itemId,_that.name,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceItemModel implements ServiceItemModel {
  const _ServiceItemModel({required this.id, @JsonKey(name: 'item_type') required this.itemType, @JsonKey(name: 'item_id') this.itemId, required this.name, required this.price});
  factory _ServiceItemModel.fromJson(Map<String, dynamic> json) => _$ServiceItemModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'item_type') final  String itemType;
@override@JsonKey(name: 'item_id') final  String? itemId;
@override final  String name;
@override final  int price;

/// Create a copy of ServiceItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceItemModelCopyWith<_ServiceItemModel> get copyWith => __$ServiceItemModelCopyWithImpl<_ServiceItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemType,itemId,name,price);

@override
String toString() {
  return 'ServiceItemModel(id: $id, itemType: $itemType, itemId: $itemId, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class _$ServiceItemModelCopyWith<$Res> implements $ServiceItemModelCopyWith<$Res> {
  factory _$ServiceItemModelCopyWith(_ServiceItemModel value, $Res Function(_ServiceItemModel) _then) = __$ServiceItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'item_type') String itemType,@JsonKey(name: 'item_id') String? itemId, String name, int price
});




}
/// @nodoc
class __$ServiceItemModelCopyWithImpl<$Res>
    implements _$ServiceItemModelCopyWith<$Res> {
  __$ServiceItemModelCopyWithImpl(this._self, this._then);

  final _ServiceItemModel _self;
  final $Res Function(_ServiceItemModel) _then;

/// Create a copy of ServiceItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? itemType = null,Object? itemId = freezed,Object? name = null,Object? price = null,}) {
  return _then(_ServiceItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
