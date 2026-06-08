// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardEntity {

 int get revenue; int get completedServices; List<ServiceSummaryEntity> get recentServices; int get stockTotal; int get stockAman; int get stockHampirHabis; int get stockTidakAman;
/// Create a copy of DashboardEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardEntityCopyWith<DashboardEntity> get copyWith => _$DashboardEntityCopyWithImpl<DashboardEntity>(this as DashboardEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardEntity&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.completedServices, completedServices) || other.completedServices == completedServices)&&const DeepCollectionEquality().equals(other.recentServices, recentServices)&&(identical(other.stockTotal, stockTotal) || other.stockTotal == stockTotal)&&(identical(other.stockAman, stockAman) || other.stockAman == stockAman)&&(identical(other.stockHampirHabis, stockHampirHabis) || other.stockHampirHabis == stockHampirHabis)&&(identical(other.stockTidakAman, stockTidakAman) || other.stockTidakAman == stockTidakAman));
}


@override
int get hashCode => Object.hash(runtimeType,revenue,completedServices,const DeepCollectionEquality().hash(recentServices),stockTotal,stockAman,stockHampirHabis,stockTidakAman);

@override
String toString() {
  return 'DashboardEntity(revenue: $revenue, completedServices: $completedServices, recentServices: $recentServices, stockTotal: $stockTotal, stockAman: $stockAman, stockHampirHabis: $stockHampirHabis, stockTidakAman: $stockTidakAman)';
}


}

/// @nodoc
abstract mixin class $DashboardEntityCopyWith<$Res>  {
  factory $DashboardEntityCopyWith(DashboardEntity value, $Res Function(DashboardEntity) _then) = _$DashboardEntityCopyWithImpl;
@useResult
$Res call({
 int revenue, int completedServices, List<ServiceSummaryEntity> recentServices, int stockTotal, int stockAman, int stockHampirHabis, int stockTidakAman
});




}
/// @nodoc
class _$DashboardEntityCopyWithImpl<$Res>
    implements $DashboardEntityCopyWith<$Res> {
  _$DashboardEntityCopyWithImpl(this._self, this._then);

  final DashboardEntity _self;
  final $Res Function(DashboardEntity) _then;

/// Create a copy of DashboardEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? revenue = null,Object? completedServices = null,Object? recentServices = null,Object? stockTotal = null,Object? stockAman = null,Object? stockHampirHabis = null,Object? stockTidakAman = null,}) {
  return _then(_self.copyWith(
revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,completedServices: null == completedServices ? _self.completedServices : completedServices // ignore: cast_nullable_to_non_nullable
as int,recentServices: null == recentServices ? _self.recentServices : recentServices // ignore: cast_nullable_to_non_nullable
as List<ServiceSummaryEntity>,stockTotal: null == stockTotal ? _self.stockTotal : stockTotal // ignore: cast_nullable_to_non_nullable
as int,stockAman: null == stockAman ? _self.stockAman : stockAman // ignore: cast_nullable_to_non_nullable
as int,stockHampirHabis: null == stockHampirHabis ? _self.stockHampirHabis : stockHampirHabis // ignore: cast_nullable_to_non_nullable
as int,stockTidakAman: null == stockTidakAman ? _self.stockTidakAman : stockTidakAman // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardEntity].
extension DashboardEntityPatterns on DashboardEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardEntity value)  $default,){
final _that = this;
switch (_that) {
case _DashboardEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int revenue,  int completedServices,  List<ServiceSummaryEntity> recentServices,  int stockTotal,  int stockAman,  int stockHampirHabis,  int stockTidakAman)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardEntity() when $default != null:
return $default(_that.revenue,_that.completedServices,_that.recentServices,_that.stockTotal,_that.stockAman,_that.stockHampirHabis,_that.stockTidakAman);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int revenue,  int completedServices,  List<ServiceSummaryEntity> recentServices,  int stockTotal,  int stockAman,  int stockHampirHabis,  int stockTidakAman)  $default,) {final _that = this;
switch (_that) {
case _DashboardEntity():
return $default(_that.revenue,_that.completedServices,_that.recentServices,_that.stockTotal,_that.stockAman,_that.stockHampirHabis,_that.stockTidakAman);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int revenue,  int completedServices,  List<ServiceSummaryEntity> recentServices,  int stockTotal,  int stockAman,  int stockHampirHabis,  int stockTidakAman)?  $default,) {final _that = this;
switch (_that) {
case _DashboardEntity() when $default != null:
return $default(_that.revenue,_that.completedServices,_that.recentServices,_that.stockTotal,_that.stockAman,_that.stockHampirHabis,_that.stockTidakAman);case _:
  return null;

}
}

}

/// @nodoc


class _DashboardEntity implements DashboardEntity {
  const _DashboardEntity({required this.revenue, required this.completedServices, required final  List<ServiceSummaryEntity> recentServices, required this.stockTotal, required this.stockAman, required this.stockHampirHabis, required this.stockTidakAman}): _recentServices = recentServices;
  

@override final  int revenue;
@override final  int completedServices;
 final  List<ServiceSummaryEntity> _recentServices;
@override List<ServiceSummaryEntity> get recentServices {
  if (_recentServices is EqualUnmodifiableListView) return _recentServices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentServices);
}

@override final  int stockTotal;
@override final  int stockAman;
@override final  int stockHampirHabis;
@override final  int stockTidakAman;

/// Create a copy of DashboardEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardEntityCopyWith<_DashboardEntity> get copyWith => __$DashboardEntityCopyWithImpl<_DashboardEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardEntity&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.completedServices, completedServices) || other.completedServices == completedServices)&&const DeepCollectionEquality().equals(other._recentServices, _recentServices)&&(identical(other.stockTotal, stockTotal) || other.stockTotal == stockTotal)&&(identical(other.stockAman, stockAman) || other.stockAman == stockAman)&&(identical(other.stockHampirHabis, stockHampirHabis) || other.stockHampirHabis == stockHampirHabis)&&(identical(other.stockTidakAman, stockTidakAman) || other.stockTidakAman == stockTidakAman));
}


@override
int get hashCode => Object.hash(runtimeType,revenue,completedServices,const DeepCollectionEquality().hash(_recentServices),stockTotal,stockAman,stockHampirHabis,stockTidakAman);

@override
String toString() {
  return 'DashboardEntity(revenue: $revenue, completedServices: $completedServices, recentServices: $recentServices, stockTotal: $stockTotal, stockAman: $stockAman, stockHampirHabis: $stockHampirHabis, stockTidakAman: $stockTidakAman)';
}


}

/// @nodoc
abstract mixin class _$DashboardEntityCopyWith<$Res> implements $DashboardEntityCopyWith<$Res> {
  factory _$DashboardEntityCopyWith(_DashboardEntity value, $Res Function(_DashboardEntity) _then) = __$DashboardEntityCopyWithImpl;
@override @useResult
$Res call({
 int revenue, int completedServices, List<ServiceSummaryEntity> recentServices, int stockTotal, int stockAman, int stockHampirHabis, int stockTidakAman
});




}
/// @nodoc
class __$DashboardEntityCopyWithImpl<$Res>
    implements _$DashboardEntityCopyWith<$Res> {
  __$DashboardEntityCopyWithImpl(this._self, this._then);

  final _DashboardEntity _self;
  final $Res Function(_DashboardEntity) _then;

/// Create a copy of DashboardEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? revenue = null,Object? completedServices = null,Object? recentServices = null,Object? stockTotal = null,Object? stockAman = null,Object? stockHampirHabis = null,Object? stockTidakAman = null,}) {
  return _then(_DashboardEntity(
revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,completedServices: null == completedServices ? _self.completedServices : completedServices // ignore: cast_nullable_to_non_nullable
as int,recentServices: null == recentServices ? _self._recentServices : recentServices // ignore: cast_nullable_to_non_nullable
as List<ServiceSummaryEntity>,stockTotal: null == stockTotal ? _self.stockTotal : stockTotal // ignore: cast_nullable_to_non_nullable
as int,stockAman: null == stockAman ? _self.stockAman : stockAman // ignore: cast_nullable_to_non_nullable
as int,stockHampirHabis: null == stockHampirHabis ? _self.stockHampirHabis : stockHampirHabis // ignore: cast_nullable_to_non_nullable
as int,stockTidakAman: null == stockTidakAman ? _self.stockTidakAman : stockTidakAman // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
