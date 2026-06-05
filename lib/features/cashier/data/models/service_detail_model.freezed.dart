// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceDetailModel {

 String get id;@JsonKey(name: 'customer_name') String get customerName;@JsonKey(name: 'vehicle_type') String get vehicleType;@JsonKey(name: 'plate_number') String get plateNumber;@JsonKey(name: 'service_type_id') String? get serviceTypeId; String? get notes;@JsonKey(name: 'voice_note_url') String? get voiceNoteUrl; String get status;@JsonKey(name: 'payment_status') String get paymentStatus; List<ServiceItemModel> get items; int get total;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of ServiceDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceDetailModelCopyWith<ServiceDetailModel> get copyWith => _$ServiceDetailModelCopyWithImpl<ServiceDetailModel>(this as ServiceDetailModel, _$identity);

  /// Serializes this ServiceDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.plateNumber, plateNumber) || other.plateNumber == plateNumber)&&(identical(other.serviceTypeId, serviceTypeId) || other.serviceTypeId == serviceTypeId)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.voiceNoteUrl, voiceNoteUrl) || other.voiceNoteUrl == voiceNoteUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.total, total) || other.total == total)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerName,vehicleType,plateNumber,serviceTypeId,notes,voiceNoteUrl,status,paymentStatus,const DeepCollectionEquality().hash(items),total,createdAt,updatedAt);

@override
String toString() {
  return 'ServiceDetailModel(id: $id, customerName: $customerName, vehicleType: $vehicleType, plateNumber: $plateNumber, serviceTypeId: $serviceTypeId, notes: $notes, voiceNoteUrl: $voiceNoteUrl, status: $status, paymentStatus: $paymentStatus, items: $items, total: $total, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ServiceDetailModelCopyWith<$Res>  {
  factory $ServiceDetailModelCopyWith(ServiceDetailModel value, $Res Function(ServiceDetailModel) _then) = _$ServiceDetailModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'customer_name') String customerName,@JsonKey(name: 'vehicle_type') String vehicleType,@JsonKey(name: 'plate_number') String plateNumber,@JsonKey(name: 'service_type_id') String? serviceTypeId, String? notes,@JsonKey(name: 'voice_note_url') String? voiceNoteUrl, String status,@JsonKey(name: 'payment_status') String paymentStatus, List<ServiceItemModel> items, int total,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$ServiceDetailModelCopyWithImpl<$Res>
    implements $ServiceDetailModelCopyWith<$Res> {
  _$ServiceDetailModelCopyWithImpl(this._self, this._then);

  final ServiceDetailModel _self;
  final $Res Function(ServiceDetailModel) _then;

/// Create a copy of ServiceDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? customerName = null,Object? vehicleType = null,Object? plateNumber = null,Object? serviceTypeId = freezed,Object? notes = freezed,Object? voiceNoteUrl = freezed,Object? status = null,Object? paymentStatus = null,Object? items = null,Object? total = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,vehicleType: null == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String,plateNumber: null == plateNumber ? _self.plateNumber : plateNumber // ignore: cast_nullable_to_non_nullable
as String,serviceTypeId: freezed == serviceTypeId ? _self.serviceTypeId : serviceTypeId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,voiceNoteUrl: freezed == voiceNoteUrl ? _self.voiceNoteUrl : voiceNoteUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ServiceItemModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceDetailModel].
extension ServiceDetailModelPatterns on ServiceDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _ServiceDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'customer_name')  String customerName, @JsonKey(name: 'vehicle_type')  String vehicleType, @JsonKey(name: 'plate_number')  String plateNumber, @JsonKey(name: 'service_type_id')  String? serviceTypeId,  String? notes, @JsonKey(name: 'voice_note_url')  String? voiceNoteUrl,  String status, @JsonKey(name: 'payment_status')  String paymentStatus,  List<ServiceItemModel> items,  int total, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceDetailModel() when $default != null:
return $default(_that.id,_that.customerName,_that.vehicleType,_that.plateNumber,_that.serviceTypeId,_that.notes,_that.voiceNoteUrl,_that.status,_that.paymentStatus,_that.items,_that.total,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'customer_name')  String customerName, @JsonKey(name: 'vehicle_type')  String vehicleType, @JsonKey(name: 'plate_number')  String plateNumber, @JsonKey(name: 'service_type_id')  String? serviceTypeId,  String? notes, @JsonKey(name: 'voice_note_url')  String? voiceNoteUrl,  String status, @JsonKey(name: 'payment_status')  String paymentStatus,  List<ServiceItemModel> items,  int total, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ServiceDetailModel():
return $default(_that.id,_that.customerName,_that.vehicleType,_that.plateNumber,_that.serviceTypeId,_that.notes,_that.voiceNoteUrl,_that.status,_that.paymentStatus,_that.items,_that.total,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'customer_name')  String customerName, @JsonKey(name: 'vehicle_type')  String vehicleType, @JsonKey(name: 'plate_number')  String plateNumber, @JsonKey(name: 'service_type_id')  String? serviceTypeId,  String? notes, @JsonKey(name: 'voice_note_url')  String? voiceNoteUrl,  String status, @JsonKey(name: 'payment_status')  String paymentStatus,  List<ServiceItemModel> items,  int total, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ServiceDetailModel() when $default != null:
return $default(_that.id,_that.customerName,_that.vehicleType,_that.plateNumber,_that.serviceTypeId,_that.notes,_that.voiceNoteUrl,_that.status,_that.paymentStatus,_that.items,_that.total,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceDetailModel implements ServiceDetailModel {
  const _ServiceDetailModel({required this.id, @JsonKey(name: 'customer_name') required this.customerName, @JsonKey(name: 'vehicle_type') required this.vehicleType, @JsonKey(name: 'plate_number') required this.plateNumber, @JsonKey(name: 'service_type_id') this.serviceTypeId, this.notes, @JsonKey(name: 'voice_note_url') this.voiceNoteUrl, required this.status, @JsonKey(name: 'payment_status') required this.paymentStatus, final  List<ServiceItemModel> items = const [], required this.total, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt}): _items = items;
  factory _ServiceDetailModel.fromJson(Map<String, dynamic> json) => _$ServiceDetailModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'customer_name') final  String customerName;
@override@JsonKey(name: 'vehicle_type') final  String vehicleType;
@override@JsonKey(name: 'plate_number') final  String plateNumber;
@override@JsonKey(name: 'service_type_id') final  String? serviceTypeId;
@override final  String? notes;
@override@JsonKey(name: 'voice_note_url') final  String? voiceNoteUrl;
@override final  String status;
@override@JsonKey(name: 'payment_status') final  String paymentStatus;
 final  List<ServiceItemModel> _items;
@override@JsonKey() List<ServiceItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int total;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of ServiceDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceDetailModelCopyWith<_ServiceDetailModel> get copyWith => __$ServiceDetailModelCopyWithImpl<_ServiceDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.plateNumber, plateNumber) || other.plateNumber == plateNumber)&&(identical(other.serviceTypeId, serviceTypeId) || other.serviceTypeId == serviceTypeId)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.voiceNoteUrl, voiceNoteUrl) || other.voiceNoteUrl == voiceNoteUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.total, total) || other.total == total)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,customerName,vehicleType,plateNumber,serviceTypeId,notes,voiceNoteUrl,status,paymentStatus,const DeepCollectionEquality().hash(_items),total,createdAt,updatedAt);

@override
String toString() {
  return 'ServiceDetailModel(id: $id, customerName: $customerName, vehicleType: $vehicleType, plateNumber: $plateNumber, serviceTypeId: $serviceTypeId, notes: $notes, voiceNoteUrl: $voiceNoteUrl, status: $status, paymentStatus: $paymentStatus, items: $items, total: $total, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ServiceDetailModelCopyWith<$Res> implements $ServiceDetailModelCopyWith<$Res> {
  factory _$ServiceDetailModelCopyWith(_ServiceDetailModel value, $Res Function(_ServiceDetailModel) _then) = __$ServiceDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'customer_name') String customerName,@JsonKey(name: 'vehicle_type') String vehicleType,@JsonKey(name: 'plate_number') String plateNumber,@JsonKey(name: 'service_type_id') String? serviceTypeId, String? notes,@JsonKey(name: 'voice_note_url') String? voiceNoteUrl, String status,@JsonKey(name: 'payment_status') String paymentStatus, List<ServiceItemModel> items, int total,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$ServiceDetailModelCopyWithImpl<$Res>
    implements _$ServiceDetailModelCopyWith<$Res> {
  __$ServiceDetailModelCopyWithImpl(this._self, this._then);

  final _ServiceDetailModel _self;
  final $Res Function(_ServiceDetailModel) _then;

/// Create a copy of ServiceDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? customerName = null,Object? vehicleType = null,Object? plateNumber = null,Object? serviceTypeId = freezed,Object? notes = freezed,Object? voiceNoteUrl = freezed,Object? status = null,Object? paymentStatus = null,Object? items = null,Object? total = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ServiceDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,vehicleType: null == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String,plateNumber: null == plateNumber ? _self.plateNumber : plateNumber // ignore: cast_nullable_to_non_nullable
as String,serviceTypeId: freezed == serviceTypeId ? _self.serviceTypeId : serviceTypeId // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,voiceNoteUrl: freezed == voiceNoteUrl ? _self.voiceNoteUrl : voiceNoteUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ServiceItemModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
