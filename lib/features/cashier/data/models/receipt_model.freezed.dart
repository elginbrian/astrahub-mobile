// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReceiptModel {

@JsonKey(name: 'service_id') String get serviceId;@JsonKey(name: 'customer_name') String get customerName;@JsonKey(name: 'vehicle_type') String get vehicleType;@JsonKey(name: 'plate_number') String get plateNumber; List<ServiceItemModel> get items; int get total;@JsonKey(name: 'amount_paid') int get amountPaid; int get change;@JsonKey(name: 'payment_method') String get paymentMethod;@JsonKey(name: 'paid_at') String get paidAt;
/// Create a copy of ReceiptModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceiptModelCopyWith<ReceiptModel> get copyWith => _$ReceiptModelCopyWithImpl<ReceiptModel>(this as ReceiptModel, _$identity);

  /// Serializes this ReceiptModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceiptModel&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.plateNumber, plateNumber) || other.plateNumber == plateNumber)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.total, total) || other.total == total)&&(identical(other.amountPaid, amountPaid) || other.amountPaid == amountPaid)&&(identical(other.change, change) || other.change == change)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceId,customerName,vehicleType,plateNumber,const DeepCollectionEquality().hash(items),total,amountPaid,change,paymentMethod,paidAt);

@override
String toString() {
  return 'ReceiptModel(serviceId: $serviceId, customerName: $customerName, vehicleType: $vehicleType, plateNumber: $plateNumber, items: $items, total: $total, amountPaid: $amountPaid, change: $change, paymentMethod: $paymentMethod, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class $ReceiptModelCopyWith<$Res>  {
  factory $ReceiptModelCopyWith(ReceiptModel value, $Res Function(ReceiptModel) _then) = _$ReceiptModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'service_id') String serviceId,@JsonKey(name: 'customer_name') String customerName,@JsonKey(name: 'vehicle_type') String vehicleType,@JsonKey(name: 'plate_number') String plateNumber, List<ServiceItemModel> items, int total,@JsonKey(name: 'amount_paid') int amountPaid, int change,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'paid_at') String paidAt
});




}
/// @nodoc
class _$ReceiptModelCopyWithImpl<$Res>
    implements $ReceiptModelCopyWith<$Res> {
  _$ReceiptModelCopyWithImpl(this._self, this._then);

  final ReceiptModel _self;
  final $Res Function(ReceiptModel) _then;

/// Create a copy of ReceiptModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceId = null,Object? customerName = null,Object? vehicleType = null,Object? plateNumber = null,Object? items = null,Object? total = null,Object? amountPaid = null,Object? change = null,Object? paymentMethod = null,Object? paidAt = null,}) {
  return _then(_self.copyWith(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,vehicleType: null == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String,plateNumber: null == plateNumber ? _self.plateNumber : plateNumber // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ServiceItemModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,amountPaid: null == amountPaid ? _self.amountPaid : amountPaid // ignore: cast_nullable_to_non_nullable
as int,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as int,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,paidAt: null == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReceiptModel].
extension ReceiptModelPatterns on ReceiptModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceiptModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceiptModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceiptModel value)  $default,){
final _that = this;
switch (_that) {
case _ReceiptModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceiptModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReceiptModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'service_id')  String serviceId, @JsonKey(name: 'customer_name')  String customerName, @JsonKey(name: 'vehicle_type')  String vehicleType, @JsonKey(name: 'plate_number')  String plateNumber,  List<ServiceItemModel> items,  int total, @JsonKey(name: 'amount_paid')  int amountPaid,  int change, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'paid_at')  String paidAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceiptModel() when $default != null:
return $default(_that.serviceId,_that.customerName,_that.vehicleType,_that.plateNumber,_that.items,_that.total,_that.amountPaid,_that.change,_that.paymentMethod,_that.paidAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'service_id')  String serviceId, @JsonKey(name: 'customer_name')  String customerName, @JsonKey(name: 'vehicle_type')  String vehicleType, @JsonKey(name: 'plate_number')  String plateNumber,  List<ServiceItemModel> items,  int total, @JsonKey(name: 'amount_paid')  int amountPaid,  int change, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'paid_at')  String paidAt)  $default,) {final _that = this;
switch (_that) {
case _ReceiptModel():
return $default(_that.serviceId,_that.customerName,_that.vehicleType,_that.plateNumber,_that.items,_that.total,_that.amountPaid,_that.change,_that.paymentMethod,_that.paidAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'service_id')  String serviceId, @JsonKey(name: 'customer_name')  String customerName, @JsonKey(name: 'vehicle_type')  String vehicleType, @JsonKey(name: 'plate_number')  String plateNumber,  List<ServiceItemModel> items,  int total, @JsonKey(name: 'amount_paid')  int amountPaid,  int change, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'paid_at')  String paidAt)?  $default,) {final _that = this;
switch (_that) {
case _ReceiptModel() when $default != null:
return $default(_that.serviceId,_that.customerName,_that.vehicleType,_that.plateNumber,_that.items,_that.total,_that.amountPaid,_that.change,_that.paymentMethod,_that.paidAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceiptModel implements ReceiptModel {
  const _ReceiptModel({@JsonKey(name: 'service_id') required this.serviceId, @JsonKey(name: 'customer_name') required this.customerName, @JsonKey(name: 'vehicle_type') required this.vehicleType, @JsonKey(name: 'plate_number') required this.plateNumber, final  List<ServiceItemModel> items = const [], required this.total, @JsonKey(name: 'amount_paid') required this.amountPaid, required this.change, @JsonKey(name: 'payment_method') required this.paymentMethod, @JsonKey(name: 'paid_at') required this.paidAt}): _items = items;
  factory _ReceiptModel.fromJson(Map<String, dynamic> json) => _$ReceiptModelFromJson(json);

@override@JsonKey(name: 'service_id') final  String serviceId;
@override@JsonKey(name: 'customer_name') final  String customerName;
@override@JsonKey(name: 'vehicle_type') final  String vehicleType;
@override@JsonKey(name: 'plate_number') final  String plateNumber;
 final  List<ServiceItemModel> _items;
@override@JsonKey() List<ServiceItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int total;
@override@JsonKey(name: 'amount_paid') final  int amountPaid;
@override final  int change;
@override@JsonKey(name: 'payment_method') final  String paymentMethod;
@override@JsonKey(name: 'paid_at') final  String paidAt;

/// Create a copy of ReceiptModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceiptModelCopyWith<_ReceiptModel> get copyWith => __$ReceiptModelCopyWithImpl<_ReceiptModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceiptModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceiptModel&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.plateNumber, plateNumber) || other.plateNumber == plateNumber)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.total, total) || other.total == total)&&(identical(other.amountPaid, amountPaid) || other.amountPaid == amountPaid)&&(identical(other.change, change) || other.change == change)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceId,customerName,vehicleType,plateNumber,const DeepCollectionEquality().hash(_items),total,amountPaid,change,paymentMethod,paidAt);

@override
String toString() {
  return 'ReceiptModel(serviceId: $serviceId, customerName: $customerName, vehicleType: $vehicleType, plateNumber: $plateNumber, items: $items, total: $total, amountPaid: $amountPaid, change: $change, paymentMethod: $paymentMethod, paidAt: $paidAt)';
}


}

/// @nodoc
abstract mixin class _$ReceiptModelCopyWith<$Res> implements $ReceiptModelCopyWith<$Res> {
  factory _$ReceiptModelCopyWith(_ReceiptModel value, $Res Function(_ReceiptModel) _then) = __$ReceiptModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'service_id') String serviceId,@JsonKey(name: 'customer_name') String customerName,@JsonKey(name: 'vehicle_type') String vehicleType,@JsonKey(name: 'plate_number') String plateNumber, List<ServiceItemModel> items, int total,@JsonKey(name: 'amount_paid') int amountPaid, int change,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'paid_at') String paidAt
});




}
/// @nodoc
class __$ReceiptModelCopyWithImpl<$Res>
    implements _$ReceiptModelCopyWith<$Res> {
  __$ReceiptModelCopyWithImpl(this._self, this._then);

  final _ReceiptModel _self;
  final $Res Function(_ReceiptModel) _then;

/// Create a copy of ReceiptModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceId = null,Object? customerName = null,Object? vehicleType = null,Object? plateNumber = null,Object? items = null,Object? total = null,Object? amountPaid = null,Object? change = null,Object? paymentMethod = null,Object? paidAt = null,}) {
  return _then(_ReceiptModel(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,vehicleType: null == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String,plateNumber: null == plateNumber ? _self.plateNumber : plateNumber // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ServiceItemModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,amountPaid: null == amountPaid ? _self.amountPaid : amountPaid // ignore: cast_nullable_to_non_nullable
as int,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as int,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,paidAt: null == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
