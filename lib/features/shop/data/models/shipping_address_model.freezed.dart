// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShippingAddressModel {

 String get id; String get label;@JsonKey(name: 'recipient_name') String get recipientName; String get phone; String get address; String get province; String get city;@JsonKey(name: 'postal_code') String? get postalCode;@JsonKey(name: 'is_default') bool get isDefault;
/// Create a copy of ShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingAddressModelCopyWith<ShippingAddressModel> get copyWith => _$ShippingAddressModelCopyWithImpl<ShippingAddressModel>(this as ShippingAddressModel, _$identity);

  /// Serializes this ShippingAddressModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingAddressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,recipientName,phone,address,province,city,postalCode,isDefault);

@override
String toString() {
  return 'ShippingAddressModel(id: $id, label: $label, recipientName: $recipientName, phone: $phone, address: $address, province: $province, city: $city, postalCode: $postalCode, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $ShippingAddressModelCopyWith<$Res>  {
  factory $ShippingAddressModelCopyWith(ShippingAddressModel value, $Res Function(ShippingAddressModel) _then) = _$ShippingAddressModelCopyWithImpl;
@useResult
$Res call({
 String id, String label,@JsonKey(name: 'recipient_name') String recipientName, String phone, String address, String province, String city,@JsonKey(name: 'postal_code') String? postalCode,@JsonKey(name: 'is_default') bool isDefault
});




}
/// @nodoc
class _$ShippingAddressModelCopyWithImpl<$Res>
    implements $ShippingAddressModelCopyWith<$Res> {
  _$ShippingAddressModelCopyWithImpl(this._self, this._then);

  final ShippingAddressModel _self;
  final $Res Function(ShippingAddressModel) _then;

/// Create a copy of ShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? recipientName = null,Object? phone = null,Object? address = null,Object? province = null,Object? city = null,Object? postalCode = freezed,Object? isDefault = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,province: null == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ShippingAddressModel].
extension ShippingAddressModelPatterns on ShippingAddressModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShippingAddressModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShippingAddressModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShippingAddressModel value)  $default,){
final _that = this;
switch (_that) {
case _ShippingAddressModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShippingAddressModel value)?  $default,){
final _that = this;
switch (_that) {
case _ShippingAddressModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label, @JsonKey(name: 'recipient_name')  String recipientName,  String phone,  String address,  String province,  String city, @JsonKey(name: 'postal_code')  String? postalCode, @JsonKey(name: 'is_default')  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShippingAddressModel() when $default != null:
return $default(_that.id,_that.label,_that.recipientName,_that.phone,_that.address,_that.province,_that.city,_that.postalCode,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label, @JsonKey(name: 'recipient_name')  String recipientName,  String phone,  String address,  String province,  String city, @JsonKey(name: 'postal_code')  String? postalCode, @JsonKey(name: 'is_default')  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _ShippingAddressModel():
return $default(_that.id,_that.label,_that.recipientName,_that.phone,_that.address,_that.province,_that.city,_that.postalCode,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label, @JsonKey(name: 'recipient_name')  String recipientName,  String phone,  String address,  String province,  String city, @JsonKey(name: 'postal_code')  String? postalCode, @JsonKey(name: 'is_default')  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _ShippingAddressModel() when $default != null:
return $default(_that.id,_that.label,_that.recipientName,_that.phone,_that.address,_that.province,_that.city,_that.postalCode,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShippingAddressModel implements ShippingAddressModel {
  const _ShippingAddressModel({required this.id, required this.label, @JsonKey(name: 'recipient_name') required this.recipientName, required this.phone, required this.address, required this.province, required this.city, @JsonKey(name: 'postal_code') this.postalCode, @JsonKey(name: 'is_default') required this.isDefault});
  factory _ShippingAddressModel.fromJson(Map<String, dynamic> json) => _$ShippingAddressModelFromJson(json);

@override final  String id;
@override final  String label;
@override@JsonKey(name: 'recipient_name') final  String recipientName;
@override final  String phone;
@override final  String address;
@override final  String province;
@override final  String city;
@override@JsonKey(name: 'postal_code') final  String? postalCode;
@override@JsonKey(name: 'is_default') final  bool isDefault;

/// Create a copy of ShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShippingAddressModelCopyWith<_ShippingAddressModel> get copyWith => __$ShippingAddressModelCopyWithImpl<_ShippingAddressModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShippingAddressModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingAddressModel&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,recipientName,phone,address,province,city,postalCode,isDefault);

@override
String toString() {
  return 'ShippingAddressModel(id: $id, label: $label, recipientName: $recipientName, phone: $phone, address: $address, province: $province, city: $city, postalCode: $postalCode, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$ShippingAddressModelCopyWith<$Res> implements $ShippingAddressModelCopyWith<$Res> {
  factory _$ShippingAddressModelCopyWith(_ShippingAddressModel value, $Res Function(_ShippingAddressModel) _then) = __$ShippingAddressModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String label,@JsonKey(name: 'recipient_name') String recipientName, String phone, String address, String province, String city,@JsonKey(name: 'postal_code') String? postalCode,@JsonKey(name: 'is_default') bool isDefault
});




}
/// @nodoc
class __$ShippingAddressModelCopyWithImpl<$Res>
    implements _$ShippingAddressModelCopyWith<$Res> {
  __$ShippingAddressModelCopyWithImpl(this._self, this._then);

  final _ShippingAddressModel _self;
  final $Res Function(_ShippingAddressModel) _then;

/// Create a copy of ShippingAddressModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? recipientName = null,Object? phone = null,Object? address = null,Object? province = null,Object? city = null,Object? postalCode = freezed,Object? isDefault = null,}) {
  return _then(_ShippingAddressModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,province: null == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
