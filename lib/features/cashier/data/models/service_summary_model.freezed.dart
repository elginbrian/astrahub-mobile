// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceSummaryModel {

 String get id;@JsonKey(name: 'customer_name') String get customerName;@JsonKey(name: 'vehicle_type') String get vehicleType;@JsonKey(name: 'plate_number') String get plateNumber; String get status;@JsonKey(name: 'payment_status') String get paymentStatus; int get total;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of ServiceSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceSummaryModelCopyWith<ServiceSummaryModel> get copyWith => _$ServiceSummaryModelCopyWithImpl<ServiceSummaryModel>(this as ServiceSummaryModel, _$identity);

  /// Serializes this ServiceSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceSummaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.plateNumber, plateNumber) || other.plateNumber == plateNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.total, total) || other.total == total)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerName,vehicleType,plateNumber,status,paymentStatus,total,createdAt);

@override
String toString() {
  return 'ServiceSummaryModel(id: $id, customerName: $customerName, vehicleType: $vehicleType, plateNumber: $plateNumber, status: $status, paymentStatus: $paymentStatus, total: $total, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ServiceSummaryModelCopyWith<$Res>  {
  factory $ServiceSummaryModelCopyWith(ServiceSummaryModel value, $Res Function(ServiceSummaryModel) _then) = _$ServiceSummaryModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'customer_name') String customerName,@JsonKey(name: 'vehicle_type') String vehicleType,@JsonKey(name: 'plate_number') String plateNumber, String status,@JsonKey(name: 'payment_status') String paymentStatus, int total,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$ServiceSummaryModelCopyWithImpl<$Res>
    implements $ServiceSummaryModelCopyWith<$Res> {
  _$ServiceSummaryModelCopyWithImpl(this._self, this._then);

  final ServiceSummaryModel _self;
  final $Res Function(ServiceSummaryModel) _then;

/// Create a copy of ServiceSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? customerName = null,Object? vehicleType = null,Object? plateNumber = null,Object? status = null,Object? paymentStatus = null,Object? total = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,vehicleType: null == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String,plateNumber: null == plateNumber ? _self.plateNumber : plateNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceSummaryModel].
extension ServiceSummaryModelPatterns on ServiceSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _ServiceSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'customer_name')  String customerName, @JsonKey(name: 'vehicle_type')  String vehicleType, @JsonKey(name: 'plate_number')  String plateNumber,  String status, @JsonKey(name: 'payment_status')  String paymentStatus,  int total, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceSummaryModel() when $default != null:
return $default(_that.id,_that.customerName,_that.vehicleType,_that.plateNumber,_that.status,_that.paymentStatus,_that.total,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'customer_name')  String customerName, @JsonKey(name: 'vehicle_type')  String vehicleType, @JsonKey(name: 'plate_number')  String plateNumber,  String status, @JsonKey(name: 'payment_status')  String paymentStatus,  int total, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _ServiceSummaryModel():
return $default(_that.id,_that.customerName,_that.vehicleType,_that.plateNumber,_that.status,_that.paymentStatus,_that.total,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'customer_name')  String customerName, @JsonKey(name: 'vehicle_type')  String vehicleType, @JsonKey(name: 'plate_number')  String plateNumber,  String status, @JsonKey(name: 'payment_status')  String paymentStatus,  int total, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ServiceSummaryModel() when $default != null:
return $default(_that.id,_that.customerName,_that.vehicleType,_that.plateNumber,_that.status,_that.paymentStatus,_that.total,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceSummaryModel implements ServiceSummaryModel {
  const _ServiceSummaryModel({required this.id, @JsonKey(name: 'customer_name') required this.customerName, @JsonKey(name: 'vehicle_type') required this.vehicleType, @JsonKey(name: 'plate_number') required this.plateNumber, required this.status, @JsonKey(name: 'payment_status') required this.paymentStatus, required this.total, @JsonKey(name: 'created_at') required this.createdAt});
  factory _ServiceSummaryModel.fromJson(Map<String, dynamic> json) => _$ServiceSummaryModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'customer_name') final  String customerName;
@override@JsonKey(name: 'vehicle_type') final  String vehicleType;
@override@JsonKey(name: 'plate_number') final  String plateNumber;
@override final  String status;
@override@JsonKey(name: 'payment_status') final  String paymentStatus;
@override final  int total;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of ServiceSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceSummaryModelCopyWith<_ServiceSummaryModel> get copyWith => __$ServiceSummaryModelCopyWithImpl<_ServiceSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceSummaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.plateNumber, plateNumber) || other.plateNumber == plateNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.total, total) || other.total == total)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerName,vehicleType,plateNumber,status,paymentStatus,total,createdAt);

@override
String toString() {
  return 'ServiceSummaryModel(id: $id, customerName: $customerName, vehicleType: $vehicleType, plateNumber: $plateNumber, status: $status, paymentStatus: $paymentStatus, total: $total, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ServiceSummaryModelCopyWith<$Res> implements $ServiceSummaryModelCopyWith<$Res> {
  factory _$ServiceSummaryModelCopyWith(_ServiceSummaryModel value, $Res Function(_ServiceSummaryModel) _then) = __$ServiceSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'customer_name') String customerName,@JsonKey(name: 'vehicle_type') String vehicleType,@JsonKey(name: 'plate_number') String plateNumber, String status,@JsonKey(name: 'payment_status') String paymentStatus, int total,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$ServiceSummaryModelCopyWithImpl<$Res>
    implements _$ServiceSummaryModelCopyWith<$Res> {
  __$ServiceSummaryModelCopyWithImpl(this._self, this._then);

  final _ServiceSummaryModel _self;
  final $Res Function(_ServiceSummaryModel) _then;

/// Create a copy of ServiceSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? customerName = null,Object? vehicleType = null,Object? plateNumber = null,Object? status = null,Object? paymentStatus = null,Object? total = null,Object? createdAt = null,}) {
  return _then(_ServiceSummaryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,vehicleType: null == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String,plateNumber: null == plateNumber ? _self.plateNumber : plateNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
