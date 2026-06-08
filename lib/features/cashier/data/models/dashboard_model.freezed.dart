// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardModel {

 int get revenue;@JsonKey(name: 'completed_services') int get completedServices;@JsonKey(name: 'recent_services') List<ServiceSummaryModel> get recentServices; Map<String, dynamic> get stock;
/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardModelCopyWith<DashboardModel> get copyWith => _$DashboardModelCopyWithImpl<DashboardModel>(this as DashboardModel, _$identity);

  /// Serializes this DashboardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardModel&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.completedServices, completedServices) || other.completedServices == completedServices)&&const DeepCollectionEquality().equals(other.recentServices, recentServices)&&const DeepCollectionEquality().equals(other.stock, stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,revenue,completedServices,const DeepCollectionEquality().hash(recentServices),const DeepCollectionEquality().hash(stock));

@override
String toString() {
  return 'DashboardModel(revenue: $revenue, completedServices: $completedServices, recentServices: $recentServices, stock: $stock)';
}


}

/// @nodoc
abstract mixin class $DashboardModelCopyWith<$Res>  {
  factory $DashboardModelCopyWith(DashboardModel value, $Res Function(DashboardModel) _then) = _$DashboardModelCopyWithImpl;
@useResult
$Res call({
 int revenue,@JsonKey(name: 'completed_services') int completedServices,@JsonKey(name: 'recent_services') List<ServiceSummaryModel> recentServices, Map<String, dynamic> stock
});




}
/// @nodoc
class _$DashboardModelCopyWithImpl<$Res>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._self, this._then);

  final DashboardModel _self;
  final $Res Function(DashboardModel) _then;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? revenue = null,Object? completedServices = null,Object? recentServices = null,Object? stock = null,}) {
  return _then(_self.copyWith(
revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,completedServices: null == completedServices ? _self.completedServices : completedServices // ignore: cast_nullable_to_non_nullable
as int,recentServices: null == recentServices ? _self.recentServices : recentServices // ignore: cast_nullable_to_non_nullable
as List<ServiceSummaryModel>,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardModel].
extension DashboardModelPatterns on DashboardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int revenue, @JsonKey(name: 'completed_services')  int completedServices, @JsonKey(name: 'recent_services')  List<ServiceSummaryModel> recentServices,  Map<String, dynamic> stock)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that.revenue,_that.completedServices,_that.recentServices,_that.stock);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int revenue, @JsonKey(name: 'completed_services')  int completedServices, @JsonKey(name: 'recent_services')  List<ServiceSummaryModel> recentServices,  Map<String, dynamic> stock)  $default,) {final _that = this;
switch (_that) {
case _DashboardModel():
return $default(_that.revenue,_that.completedServices,_that.recentServices,_that.stock);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int revenue, @JsonKey(name: 'completed_services')  int completedServices, @JsonKey(name: 'recent_services')  List<ServiceSummaryModel> recentServices,  Map<String, dynamic> stock)?  $default,) {final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that.revenue,_that.completedServices,_that.recentServices,_that.stock);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardModel implements DashboardModel {
  const _DashboardModel({required this.revenue, @JsonKey(name: 'completed_services') required this.completedServices, @JsonKey(name: 'recent_services') required final  List<ServiceSummaryModel> recentServices, required final  Map<String, dynamic> stock}): _recentServices = recentServices,_stock = stock;
  factory _DashboardModel.fromJson(Map<String, dynamic> json) => _$DashboardModelFromJson(json);

@override final  int revenue;
@override@JsonKey(name: 'completed_services') final  int completedServices;
 final  List<ServiceSummaryModel> _recentServices;
@override@JsonKey(name: 'recent_services') List<ServiceSummaryModel> get recentServices {
  if (_recentServices is EqualUnmodifiableListView) return _recentServices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentServices);
}

 final  Map<String, dynamic> _stock;
@override Map<String, dynamic> get stock {
  if (_stock is EqualUnmodifiableMapView) return _stock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_stock);
}


/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardModelCopyWith<_DashboardModel> get copyWith => __$DashboardModelCopyWithImpl<_DashboardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardModel&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.completedServices, completedServices) || other.completedServices == completedServices)&&const DeepCollectionEquality().equals(other._recentServices, _recentServices)&&const DeepCollectionEquality().equals(other._stock, _stock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,revenue,completedServices,const DeepCollectionEquality().hash(_recentServices),const DeepCollectionEquality().hash(_stock));

@override
String toString() {
  return 'DashboardModel(revenue: $revenue, completedServices: $completedServices, recentServices: $recentServices, stock: $stock)';
}


}

/// @nodoc
abstract mixin class _$DashboardModelCopyWith<$Res> implements $DashboardModelCopyWith<$Res> {
  factory _$DashboardModelCopyWith(_DashboardModel value, $Res Function(_DashboardModel) _then) = __$DashboardModelCopyWithImpl;
@override @useResult
$Res call({
 int revenue,@JsonKey(name: 'completed_services') int completedServices,@JsonKey(name: 'recent_services') List<ServiceSummaryModel> recentServices, Map<String, dynamic> stock
});




}
/// @nodoc
class __$DashboardModelCopyWithImpl<$Res>
    implements _$DashboardModelCopyWith<$Res> {
  __$DashboardModelCopyWithImpl(this._self, this._then);

  final _DashboardModel _self;
  final $Res Function(_DashboardModel) _then;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? revenue = null,Object? completedServices = null,Object? recentServices = null,Object? stock = null,}) {
  return _then(_DashboardModel(
revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,completedServices: null == completedServices ? _self.completedServices : completedServices // ignore: cast_nullable_to_non_nullable
as int,recentServices: null == recentServices ? _self._recentServices : recentServices // ignore: cast_nullable_to_non_nullable
as List<ServiceSummaryModel>,stock: null == stock ? _self._stock : stock // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
