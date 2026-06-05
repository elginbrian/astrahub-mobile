// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KasirSummaryModel {

@JsonKey(name: 'total_revenue') int get totalRevenue;@JsonKey(name: 'service_count') int get serviceCount;@JsonKey(name: 'paid_count') int get paidCount;
/// Create a copy of KasirSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KasirSummaryModelCopyWith<KasirSummaryModel> get copyWith => _$KasirSummaryModelCopyWithImpl<KasirSummaryModel>(this as KasirSummaryModel, _$identity);

  /// Serializes this KasirSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KasirSummaryModel&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.serviceCount, serviceCount) || other.serviceCount == serviceCount)&&(identical(other.paidCount, paidCount) || other.paidCount == paidCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRevenue,serviceCount,paidCount);

@override
String toString() {
  return 'KasirSummaryModel(totalRevenue: $totalRevenue, serviceCount: $serviceCount, paidCount: $paidCount)';
}


}

/// @nodoc
abstract mixin class $KasirSummaryModelCopyWith<$Res>  {
  factory $KasirSummaryModelCopyWith(KasirSummaryModel value, $Res Function(KasirSummaryModel) _then) = _$KasirSummaryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_revenue') int totalRevenue,@JsonKey(name: 'service_count') int serviceCount,@JsonKey(name: 'paid_count') int paidCount
});




}
/// @nodoc
class _$KasirSummaryModelCopyWithImpl<$Res>
    implements $KasirSummaryModelCopyWith<$Res> {
  _$KasirSummaryModelCopyWithImpl(this._self, this._then);

  final KasirSummaryModel _self;
  final $Res Function(KasirSummaryModel) _then;

/// Create a copy of KasirSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalRevenue = null,Object? serviceCount = null,Object? paidCount = null,}) {
  return _then(_self.copyWith(
totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as int,serviceCount: null == serviceCount ? _self.serviceCount : serviceCount // ignore: cast_nullable_to_non_nullable
as int,paidCount: null == paidCount ? _self.paidCount : paidCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [KasirSummaryModel].
extension KasirSummaryModelPatterns on KasirSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KasirSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KasirSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KasirSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _KasirSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KasirSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _KasirSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_revenue')  int totalRevenue, @JsonKey(name: 'service_count')  int serviceCount, @JsonKey(name: 'paid_count')  int paidCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KasirSummaryModel() when $default != null:
return $default(_that.totalRevenue,_that.serviceCount,_that.paidCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_revenue')  int totalRevenue, @JsonKey(name: 'service_count')  int serviceCount, @JsonKey(name: 'paid_count')  int paidCount)  $default,) {final _that = this;
switch (_that) {
case _KasirSummaryModel():
return $default(_that.totalRevenue,_that.serviceCount,_that.paidCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_revenue')  int totalRevenue, @JsonKey(name: 'service_count')  int serviceCount, @JsonKey(name: 'paid_count')  int paidCount)?  $default,) {final _that = this;
switch (_that) {
case _KasirSummaryModel() when $default != null:
return $default(_that.totalRevenue,_that.serviceCount,_that.paidCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KasirSummaryModel implements KasirSummaryModel {
  const _KasirSummaryModel({@JsonKey(name: 'total_revenue') required this.totalRevenue, @JsonKey(name: 'service_count') required this.serviceCount, @JsonKey(name: 'paid_count') required this.paidCount});
  factory _KasirSummaryModel.fromJson(Map<String, dynamic> json) => _$KasirSummaryModelFromJson(json);

@override@JsonKey(name: 'total_revenue') final  int totalRevenue;
@override@JsonKey(name: 'service_count') final  int serviceCount;
@override@JsonKey(name: 'paid_count') final  int paidCount;

/// Create a copy of KasirSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KasirSummaryModelCopyWith<_KasirSummaryModel> get copyWith => __$KasirSummaryModelCopyWithImpl<_KasirSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KasirSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KasirSummaryModel&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.serviceCount, serviceCount) || other.serviceCount == serviceCount)&&(identical(other.paidCount, paidCount) || other.paidCount == paidCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRevenue,serviceCount,paidCount);

@override
String toString() {
  return 'KasirSummaryModel(totalRevenue: $totalRevenue, serviceCount: $serviceCount, paidCount: $paidCount)';
}


}

/// @nodoc
abstract mixin class _$KasirSummaryModelCopyWith<$Res> implements $KasirSummaryModelCopyWith<$Res> {
  factory _$KasirSummaryModelCopyWith(_KasirSummaryModel value, $Res Function(_KasirSummaryModel) _then) = __$KasirSummaryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_revenue') int totalRevenue,@JsonKey(name: 'service_count') int serviceCount,@JsonKey(name: 'paid_count') int paidCount
});




}
/// @nodoc
class __$KasirSummaryModelCopyWithImpl<$Res>
    implements _$KasirSummaryModelCopyWith<$Res> {
  __$KasirSummaryModelCopyWithImpl(this._self, this._then);

  final _KasirSummaryModel _self;
  final $Res Function(_KasirSummaryModel) _then;

/// Create a copy of KasirSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalRevenue = null,Object? serviceCount = null,Object? paidCount = null,}) {
  return _then(_KasirSummaryModel(
totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as int,serviceCount: null == serviceCount ? _self.serviceCount : serviceCount // ignore: cast_nullable_to_non_nullable
as int,paidCount: null == paidCount ? _self.paidCount : paidCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ShopSummaryModel {

@JsonKey(name: 'order_count') int get orderCount;@JsonKey(name: 'total_spent') int get totalSpent;
/// Create a copy of ShopSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopSummaryModelCopyWith<ShopSummaryModel> get copyWith => _$ShopSummaryModelCopyWithImpl<ShopSummaryModel>(this as ShopSummaryModel, _$identity);

  /// Serializes this ShopSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopSummaryModel&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.totalSpent, totalSpent) || other.totalSpent == totalSpent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderCount,totalSpent);

@override
String toString() {
  return 'ShopSummaryModel(orderCount: $orderCount, totalSpent: $totalSpent)';
}


}

/// @nodoc
abstract mixin class $ShopSummaryModelCopyWith<$Res>  {
  factory $ShopSummaryModelCopyWith(ShopSummaryModel value, $Res Function(ShopSummaryModel) _then) = _$ShopSummaryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'order_count') int orderCount,@JsonKey(name: 'total_spent') int totalSpent
});




}
/// @nodoc
class _$ShopSummaryModelCopyWithImpl<$Res>
    implements $ShopSummaryModelCopyWith<$Res> {
  _$ShopSummaryModelCopyWithImpl(this._self, this._then);

  final ShopSummaryModel _self;
  final $Res Function(ShopSummaryModel) _then;

/// Create a copy of ShopSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderCount = null,Object? totalSpent = null,}) {
  return _then(_self.copyWith(
orderCount: null == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int,totalSpent: null == totalSpent ? _self.totalSpent : totalSpent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ShopSummaryModel].
extension ShopSummaryModelPatterns on ShopSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShopSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShopSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShopSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _ShopSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShopSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ShopSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'order_count')  int orderCount, @JsonKey(name: 'total_spent')  int totalSpent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShopSummaryModel() when $default != null:
return $default(_that.orderCount,_that.totalSpent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'order_count')  int orderCount, @JsonKey(name: 'total_spent')  int totalSpent)  $default,) {final _that = this;
switch (_that) {
case _ShopSummaryModel():
return $default(_that.orderCount,_that.totalSpent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'order_count')  int orderCount, @JsonKey(name: 'total_spent')  int totalSpent)?  $default,) {final _that = this;
switch (_that) {
case _ShopSummaryModel() when $default != null:
return $default(_that.orderCount,_that.totalSpent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShopSummaryModel implements ShopSummaryModel {
  const _ShopSummaryModel({@JsonKey(name: 'order_count') required this.orderCount, @JsonKey(name: 'total_spent') required this.totalSpent});
  factory _ShopSummaryModel.fromJson(Map<String, dynamic> json) => _$ShopSummaryModelFromJson(json);

@override@JsonKey(name: 'order_count') final  int orderCount;
@override@JsonKey(name: 'total_spent') final  int totalSpent;

/// Create a copy of ShopSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopSummaryModelCopyWith<_ShopSummaryModel> get copyWith => __$ShopSummaryModelCopyWithImpl<_ShopSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShopSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopSummaryModel&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.totalSpent, totalSpent) || other.totalSpent == totalSpent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderCount,totalSpent);

@override
String toString() {
  return 'ShopSummaryModel(orderCount: $orderCount, totalSpent: $totalSpent)';
}


}

/// @nodoc
abstract mixin class _$ShopSummaryModelCopyWith<$Res> implements $ShopSummaryModelCopyWith<$Res> {
  factory _$ShopSummaryModelCopyWith(_ShopSummaryModel value, $Res Function(_ShopSummaryModel) _then) = __$ShopSummaryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'order_count') int orderCount,@JsonKey(name: 'total_spent') int totalSpent
});




}
/// @nodoc
class __$ShopSummaryModelCopyWithImpl<$Res>
    implements _$ShopSummaryModelCopyWith<$Res> {
  __$ShopSummaryModelCopyWithImpl(this._self, this._then);

  final _ShopSummaryModel _self;
  final $Res Function(_ShopSummaryModel) _then;

/// Create a copy of ShopSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderCount = null,Object? totalSpent = null,}) {
  return _then(_ShopSummaryModel(
orderCount: null == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int,totalSpent: null == totalSpent ? _self.totalSpent : totalSpent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ReportSummaryModel {

 String get period; KasirSummaryModel get kasir; ShopSummaryModel get shop;
/// Create a copy of ReportSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportSummaryModelCopyWith<ReportSummaryModel> get copyWith => _$ReportSummaryModelCopyWithImpl<ReportSummaryModel>(this as ReportSummaryModel, _$identity);

  /// Serializes this ReportSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportSummaryModel&&(identical(other.period, period) || other.period == period)&&(identical(other.kasir, kasir) || other.kasir == kasir)&&(identical(other.shop, shop) || other.shop == shop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,kasir,shop);

@override
String toString() {
  return 'ReportSummaryModel(period: $period, kasir: $kasir, shop: $shop)';
}


}

/// @nodoc
abstract mixin class $ReportSummaryModelCopyWith<$Res>  {
  factory $ReportSummaryModelCopyWith(ReportSummaryModel value, $Res Function(ReportSummaryModel) _then) = _$ReportSummaryModelCopyWithImpl;
@useResult
$Res call({
 String period, KasirSummaryModel kasir, ShopSummaryModel shop
});


$KasirSummaryModelCopyWith<$Res> get kasir;$ShopSummaryModelCopyWith<$Res> get shop;

}
/// @nodoc
class _$ReportSummaryModelCopyWithImpl<$Res>
    implements $ReportSummaryModelCopyWith<$Res> {
  _$ReportSummaryModelCopyWithImpl(this._self, this._then);

  final ReportSummaryModel _self;
  final $Res Function(ReportSummaryModel) _then;

/// Create a copy of ReportSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? kasir = null,Object? shop = null,}) {
  return _then(_self.copyWith(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,kasir: null == kasir ? _self.kasir : kasir // ignore: cast_nullable_to_non_nullable
as KasirSummaryModel,shop: null == shop ? _self.shop : shop // ignore: cast_nullable_to_non_nullable
as ShopSummaryModel,
  ));
}
/// Create a copy of ReportSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KasirSummaryModelCopyWith<$Res> get kasir {
  
  return $KasirSummaryModelCopyWith<$Res>(_self.kasir, (value) {
    return _then(_self.copyWith(kasir: value));
  });
}/// Create a copy of ReportSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopSummaryModelCopyWith<$Res> get shop {
  
  return $ShopSummaryModelCopyWith<$Res>(_self.shop, (value) {
    return _then(_self.copyWith(shop: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReportSummaryModel].
extension ReportSummaryModelPatterns on ReportSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _ReportSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReportSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String period,  KasirSummaryModel kasir,  ShopSummaryModel shop)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportSummaryModel() when $default != null:
return $default(_that.period,_that.kasir,_that.shop);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String period,  KasirSummaryModel kasir,  ShopSummaryModel shop)  $default,) {final _that = this;
switch (_that) {
case _ReportSummaryModel():
return $default(_that.period,_that.kasir,_that.shop);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String period,  KasirSummaryModel kasir,  ShopSummaryModel shop)?  $default,) {final _that = this;
switch (_that) {
case _ReportSummaryModel() when $default != null:
return $default(_that.period,_that.kasir,_that.shop);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportSummaryModel implements ReportSummaryModel {
  const _ReportSummaryModel({required this.period, required this.kasir, required this.shop});
  factory _ReportSummaryModel.fromJson(Map<String, dynamic> json) => _$ReportSummaryModelFromJson(json);

@override final  String period;
@override final  KasirSummaryModel kasir;
@override final  ShopSummaryModel shop;

/// Create a copy of ReportSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportSummaryModelCopyWith<_ReportSummaryModel> get copyWith => __$ReportSummaryModelCopyWithImpl<_ReportSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportSummaryModel&&(identical(other.period, period) || other.period == period)&&(identical(other.kasir, kasir) || other.kasir == kasir)&&(identical(other.shop, shop) || other.shop == shop));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,kasir,shop);

@override
String toString() {
  return 'ReportSummaryModel(period: $period, kasir: $kasir, shop: $shop)';
}


}

/// @nodoc
abstract mixin class _$ReportSummaryModelCopyWith<$Res> implements $ReportSummaryModelCopyWith<$Res> {
  factory _$ReportSummaryModelCopyWith(_ReportSummaryModel value, $Res Function(_ReportSummaryModel) _then) = __$ReportSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 String period, KasirSummaryModel kasir, ShopSummaryModel shop
});


@override $KasirSummaryModelCopyWith<$Res> get kasir;@override $ShopSummaryModelCopyWith<$Res> get shop;

}
/// @nodoc
class __$ReportSummaryModelCopyWithImpl<$Res>
    implements _$ReportSummaryModelCopyWith<$Res> {
  __$ReportSummaryModelCopyWithImpl(this._self, this._then);

  final _ReportSummaryModel _self;
  final $Res Function(_ReportSummaryModel) _then;

/// Create a copy of ReportSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? kasir = null,Object? shop = null,}) {
  return _then(_ReportSummaryModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,kasir: null == kasir ? _self.kasir : kasir // ignore: cast_nullable_to_non_nullable
as KasirSummaryModel,shop: null == shop ? _self.shop : shop // ignore: cast_nullable_to_non_nullable
as ShopSummaryModel,
  ));
}

/// Create a copy of ReportSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KasirSummaryModelCopyWith<$Res> get kasir {
  
  return $KasirSummaryModelCopyWith<$Res>(_self.kasir, (value) {
    return _then(_self.copyWith(kasir: value));
  });
}/// Create a copy of ReportSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopSummaryModelCopyWith<$Res> get shop {
  
  return $ShopSummaryModelCopyWith<$Res>(_self.shop, (value) {
    return _then(_self.copyWith(shop: value));
  });
}
}

// dart format on
