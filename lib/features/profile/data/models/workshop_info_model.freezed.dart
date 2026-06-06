// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workshop_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkshopInfoModel {

 String get id; String get name;@JsonKey(name: 'owner_name') String? get ownerName; String? get phone; String? get address; String? get province; String? get city; String? get type;@JsonKey(name: 'mechanic_count') String? get mechanicCount;@JsonKey(name: 'photo_url') String? get photoUrl;@JsonKey(name: 'logo_url') String? get logoUrl;@JsonKey(name: 'is_activated') bool get isActivated;@JsonKey(name: 'business_score') int get businessScore;@JsonKey(name: 'astrapay_account') String? get astrapayAccount;
/// Create a copy of WorkshopInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkshopInfoModelCopyWith<WorkshopInfoModel> get copyWith => _$WorkshopInfoModelCopyWithImpl<WorkshopInfoModel>(this as WorkshopInfoModel, _$identity);

  /// Serializes this WorkshopInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkshopInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.type, type) || other.type == type)&&(identical(other.mechanicCount, mechanicCount) || other.mechanicCount == mechanicCount)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.isActivated, isActivated) || other.isActivated == isActivated)&&(identical(other.businessScore, businessScore) || other.businessScore == businessScore)&&(identical(other.astrapayAccount, astrapayAccount) || other.astrapayAccount == astrapayAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,ownerName,phone,address,province,city,type,mechanicCount,photoUrl,logoUrl,isActivated,businessScore,astrapayAccount);

@override
String toString() {
  return 'WorkshopInfoModel(id: $id, name: $name, ownerName: $ownerName, phone: $phone, address: $address, province: $province, city: $city, type: $type, mechanicCount: $mechanicCount, photoUrl: $photoUrl, logoUrl: $logoUrl, isActivated: $isActivated, businessScore: $businessScore, astrapayAccount: $astrapayAccount)';
}


}

/// @nodoc
abstract mixin class $WorkshopInfoModelCopyWith<$Res>  {
  factory $WorkshopInfoModelCopyWith(WorkshopInfoModel value, $Res Function(WorkshopInfoModel) _then) = _$WorkshopInfoModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'owner_name') String? ownerName, String? phone, String? address, String? province, String? city, String? type,@JsonKey(name: 'mechanic_count') String? mechanicCount,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'logo_url') String? logoUrl,@JsonKey(name: 'is_activated') bool isActivated,@JsonKey(name: 'business_score') int businessScore,@JsonKey(name: 'astrapay_account') String? astrapayAccount
});




}
/// @nodoc
class _$WorkshopInfoModelCopyWithImpl<$Res>
    implements $WorkshopInfoModelCopyWith<$Res> {
  _$WorkshopInfoModelCopyWithImpl(this._self, this._then);

  final WorkshopInfoModel _self;
  final $Res Function(WorkshopInfoModel) _then;

/// Create a copy of WorkshopInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? ownerName = freezed,Object? phone = freezed,Object? address = freezed,Object? province = freezed,Object? city = freezed,Object? type = freezed,Object? mechanicCount = freezed,Object? photoUrl = freezed,Object? logoUrl = freezed,Object? isActivated = null,Object? businessScore = null,Object? astrapayAccount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ownerName: freezed == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,mechanicCount: freezed == mechanicCount ? _self.mechanicCount : mechanicCount // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,isActivated: null == isActivated ? _self.isActivated : isActivated // ignore: cast_nullable_to_non_nullable
as bool,businessScore: null == businessScore ? _self.businessScore : businessScore // ignore: cast_nullable_to_non_nullable
as int,astrapayAccount: freezed == astrapayAccount ? _self.astrapayAccount : astrapayAccount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkshopInfoModel].
extension WorkshopInfoModelPatterns on WorkshopInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkshopInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkshopInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkshopInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkshopInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkshopInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkshopInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'owner_name')  String? ownerName,  String? phone,  String? address,  String? province,  String? city,  String? type, @JsonKey(name: 'mechanic_count')  String? mechanicCount, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'logo_url')  String? logoUrl, @JsonKey(name: 'is_activated')  bool isActivated, @JsonKey(name: 'business_score')  int businessScore, @JsonKey(name: 'astrapay_account')  String? astrapayAccount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkshopInfoModel() when $default != null:
return $default(_that.id,_that.name,_that.ownerName,_that.phone,_that.address,_that.province,_that.city,_that.type,_that.mechanicCount,_that.photoUrl,_that.logoUrl,_that.isActivated,_that.businessScore,_that.astrapayAccount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'owner_name')  String? ownerName,  String? phone,  String? address,  String? province,  String? city,  String? type, @JsonKey(name: 'mechanic_count')  String? mechanicCount, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'logo_url')  String? logoUrl, @JsonKey(name: 'is_activated')  bool isActivated, @JsonKey(name: 'business_score')  int businessScore, @JsonKey(name: 'astrapay_account')  String? astrapayAccount)  $default,) {final _that = this;
switch (_that) {
case _WorkshopInfoModel():
return $default(_that.id,_that.name,_that.ownerName,_that.phone,_that.address,_that.province,_that.city,_that.type,_that.mechanicCount,_that.photoUrl,_that.logoUrl,_that.isActivated,_that.businessScore,_that.astrapayAccount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'owner_name')  String? ownerName,  String? phone,  String? address,  String? province,  String? city,  String? type, @JsonKey(name: 'mechanic_count')  String? mechanicCount, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'logo_url')  String? logoUrl, @JsonKey(name: 'is_activated')  bool isActivated, @JsonKey(name: 'business_score')  int businessScore, @JsonKey(name: 'astrapay_account')  String? astrapayAccount)?  $default,) {final _that = this;
switch (_that) {
case _WorkshopInfoModel() when $default != null:
return $default(_that.id,_that.name,_that.ownerName,_that.phone,_that.address,_that.province,_that.city,_that.type,_that.mechanicCount,_that.photoUrl,_that.logoUrl,_that.isActivated,_that.businessScore,_that.astrapayAccount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkshopInfoModel implements WorkshopInfoModel {
  const _WorkshopInfoModel({required this.id, required this.name, @JsonKey(name: 'owner_name') this.ownerName, this.phone, this.address, this.province, this.city, this.type, @JsonKey(name: 'mechanic_count') this.mechanicCount, @JsonKey(name: 'photo_url') this.photoUrl, @JsonKey(name: 'logo_url') this.logoUrl, @JsonKey(name: 'is_activated') required this.isActivated, @JsonKey(name: 'business_score') required this.businessScore, @JsonKey(name: 'astrapay_account') this.astrapayAccount});
  factory _WorkshopInfoModel.fromJson(Map<String, dynamic> json) => _$WorkshopInfoModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'owner_name') final  String? ownerName;
@override final  String? phone;
@override final  String? address;
@override final  String? province;
@override final  String? city;
@override final  String? type;
@override@JsonKey(name: 'mechanic_count') final  String? mechanicCount;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override@JsonKey(name: 'logo_url') final  String? logoUrl;
@override@JsonKey(name: 'is_activated') final  bool isActivated;
@override@JsonKey(name: 'business_score') final  int businessScore;
@override@JsonKey(name: 'astrapay_account') final  String? astrapayAccount;

/// Create a copy of WorkshopInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkshopInfoModelCopyWith<_WorkshopInfoModel> get copyWith => __$WorkshopInfoModelCopyWithImpl<_WorkshopInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkshopInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkshopInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.address, address) || other.address == address)&&(identical(other.province, province) || other.province == province)&&(identical(other.city, city) || other.city == city)&&(identical(other.type, type) || other.type == type)&&(identical(other.mechanicCount, mechanicCount) || other.mechanicCount == mechanicCount)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.isActivated, isActivated) || other.isActivated == isActivated)&&(identical(other.businessScore, businessScore) || other.businessScore == businessScore)&&(identical(other.astrapayAccount, astrapayAccount) || other.astrapayAccount == astrapayAccount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,ownerName,phone,address,province,city,type,mechanicCount,photoUrl,logoUrl,isActivated,businessScore,astrapayAccount);

@override
String toString() {
  return 'WorkshopInfoModel(id: $id, name: $name, ownerName: $ownerName, phone: $phone, address: $address, province: $province, city: $city, type: $type, mechanicCount: $mechanicCount, photoUrl: $photoUrl, logoUrl: $logoUrl, isActivated: $isActivated, businessScore: $businessScore, astrapayAccount: $astrapayAccount)';
}


}

/// @nodoc
abstract mixin class _$WorkshopInfoModelCopyWith<$Res> implements $WorkshopInfoModelCopyWith<$Res> {
  factory _$WorkshopInfoModelCopyWith(_WorkshopInfoModel value, $Res Function(_WorkshopInfoModel) _then) = __$WorkshopInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'owner_name') String? ownerName, String? phone, String? address, String? province, String? city, String? type,@JsonKey(name: 'mechanic_count') String? mechanicCount,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'logo_url') String? logoUrl,@JsonKey(name: 'is_activated') bool isActivated,@JsonKey(name: 'business_score') int businessScore,@JsonKey(name: 'astrapay_account') String? astrapayAccount
});




}
/// @nodoc
class __$WorkshopInfoModelCopyWithImpl<$Res>
    implements _$WorkshopInfoModelCopyWith<$Res> {
  __$WorkshopInfoModelCopyWithImpl(this._self, this._then);

  final _WorkshopInfoModel _self;
  final $Res Function(_WorkshopInfoModel) _then;

/// Create a copy of WorkshopInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? ownerName = freezed,Object? phone = freezed,Object? address = freezed,Object? province = freezed,Object? city = freezed,Object? type = freezed,Object? mechanicCount = freezed,Object? photoUrl = freezed,Object? logoUrl = freezed,Object? isActivated = null,Object? businessScore = null,Object? astrapayAccount = freezed,}) {
  return _then(_WorkshopInfoModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ownerName: freezed == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,mechanicCount: freezed == mechanicCount ? _self.mechanicCount : mechanicCount // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,isActivated: null == isActivated ? _self.isActivated : isActivated // ignore: cast_nullable_to_non_nullable
as bool,businessScore: null == businessScore ? _self.businessScore : businessScore // ignore: cast_nullable_to_non_nullable
as int,astrapayAccount: freezed == astrapayAccount ? _self.astrapayAccount : astrapayAccount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
