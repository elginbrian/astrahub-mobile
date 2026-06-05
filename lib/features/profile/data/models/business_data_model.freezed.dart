// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessDataModel {

@JsonKey(name: 'workshop_type') String? get workshopType;@JsonKey(name: 'mechanic_count') String? get mechanicCount; String? get address; String? get city; String? get province;@JsonKey(name: 'is_activated') bool get isActivated;
/// Create a copy of BusinessDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessDataModelCopyWith<BusinessDataModel> get copyWith => _$BusinessDataModelCopyWithImpl<BusinessDataModel>(this as BusinessDataModel, _$identity);

  /// Serializes this BusinessDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessDataModel&&(identical(other.workshopType, workshopType) || other.workshopType == workshopType)&&(identical(other.mechanicCount, mechanicCount) || other.mechanicCount == mechanicCount)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.province, province) || other.province == province)&&(identical(other.isActivated, isActivated) || other.isActivated == isActivated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workshopType,mechanicCount,address,city,province,isActivated);

@override
String toString() {
  return 'BusinessDataModel(workshopType: $workshopType, mechanicCount: $mechanicCount, address: $address, city: $city, province: $province, isActivated: $isActivated)';
}


}

/// @nodoc
abstract mixin class $BusinessDataModelCopyWith<$Res>  {
  factory $BusinessDataModelCopyWith(BusinessDataModel value, $Res Function(BusinessDataModel) _then) = _$BusinessDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'workshop_type') String? workshopType,@JsonKey(name: 'mechanic_count') String? mechanicCount, String? address, String? city, String? province,@JsonKey(name: 'is_activated') bool isActivated
});




}
/// @nodoc
class _$BusinessDataModelCopyWithImpl<$Res>
    implements $BusinessDataModelCopyWith<$Res> {
  _$BusinessDataModelCopyWithImpl(this._self, this._then);

  final BusinessDataModel _self;
  final $Res Function(BusinessDataModel) _then;

/// Create a copy of BusinessDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workshopType = freezed,Object? mechanicCount = freezed,Object? address = freezed,Object? city = freezed,Object? province = freezed,Object? isActivated = null,}) {
  return _then(_self.copyWith(
workshopType: freezed == workshopType ? _self.workshopType : workshopType // ignore: cast_nullable_to_non_nullable
as String?,mechanicCount: freezed == mechanicCount ? _self.mechanicCount : mechanicCount // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String?,isActivated: null == isActivated ? _self.isActivated : isActivated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BusinessDataModel].
extension BusinessDataModelPatterns on BusinessDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessDataModel value)  $default,){
final _that = this;
switch (_that) {
case _BusinessDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'workshop_type')  String? workshopType, @JsonKey(name: 'mechanic_count')  String? mechanicCount,  String? address,  String? city,  String? province, @JsonKey(name: 'is_activated')  bool isActivated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessDataModel() when $default != null:
return $default(_that.workshopType,_that.mechanicCount,_that.address,_that.city,_that.province,_that.isActivated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'workshop_type')  String? workshopType, @JsonKey(name: 'mechanic_count')  String? mechanicCount,  String? address,  String? city,  String? province, @JsonKey(name: 'is_activated')  bool isActivated)  $default,) {final _that = this;
switch (_that) {
case _BusinessDataModel():
return $default(_that.workshopType,_that.mechanicCount,_that.address,_that.city,_that.province,_that.isActivated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'workshop_type')  String? workshopType, @JsonKey(name: 'mechanic_count')  String? mechanicCount,  String? address,  String? city,  String? province, @JsonKey(name: 'is_activated')  bool isActivated)?  $default,) {final _that = this;
switch (_that) {
case _BusinessDataModel() when $default != null:
return $default(_that.workshopType,_that.mechanicCount,_that.address,_that.city,_that.province,_that.isActivated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusinessDataModel implements BusinessDataModel {
  const _BusinessDataModel({@JsonKey(name: 'workshop_type') this.workshopType, @JsonKey(name: 'mechanic_count') this.mechanicCount, this.address, this.city, this.province, @JsonKey(name: 'is_activated') required this.isActivated});
  factory _BusinessDataModel.fromJson(Map<String, dynamic> json) => _$BusinessDataModelFromJson(json);

@override@JsonKey(name: 'workshop_type') final  String? workshopType;
@override@JsonKey(name: 'mechanic_count') final  String? mechanicCount;
@override final  String? address;
@override final  String? city;
@override final  String? province;
@override@JsonKey(name: 'is_activated') final  bool isActivated;

/// Create a copy of BusinessDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessDataModelCopyWith<_BusinessDataModel> get copyWith => __$BusinessDataModelCopyWithImpl<_BusinessDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessDataModel&&(identical(other.workshopType, workshopType) || other.workshopType == workshopType)&&(identical(other.mechanicCount, mechanicCount) || other.mechanicCount == mechanicCount)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.province, province) || other.province == province)&&(identical(other.isActivated, isActivated) || other.isActivated == isActivated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workshopType,mechanicCount,address,city,province,isActivated);

@override
String toString() {
  return 'BusinessDataModel(workshopType: $workshopType, mechanicCount: $mechanicCount, address: $address, city: $city, province: $province, isActivated: $isActivated)';
}


}

/// @nodoc
abstract mixin class _$BusinessDataModelCopyWith<$Res> implements $BusinessDataModelCopyWith<$Res> {
  factory _$BusinessDataModelCopyWith(_BusinessDataModel value, $Res Function(_BusinessDataModel) _then) = __$BusinessDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'workshop_type') String? workshopType,@JsonKey(name: 'mechanic_count') String? mechanicCount, String? address, String? city, String? province,@JsonKey(name: 'is_activated') bool isActivated
});




}
/// @nodoc
class __$BusinessDataModelCopyWithImpl<$Res>
    implements _$BusinessDataModelCopyWith<$Res> {
  __$BusinessDataModelCopyWithImpl(this._self, this._then);

  final _BusinessDataModel _self;
  final $Res Function(_BusinessDataModel) _then;

/// Create a copy of BusinessDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workshopType = freezed,Object? mechanicCount = freezed,Object? address = freezed,Object? city = freezed,Object? province = freezed,Object? isActivated = null,}) {
  return _then(_BusinessDataModel(
workshopType: freezed == workshopType ? _self.workshopType : workshopType // ignore: cast_nullable_to_non_nullable
as String?,mechanicCount: freezed == mechanicCount ? _self.mechanicCount : mechanicCount // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String?,isActivated: null == isActivated ? _self.isActivated : isActivated // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
