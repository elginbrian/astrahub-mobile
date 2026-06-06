// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cashier_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CashierState {

 bool get isLoading; List<ServiceSummaryEntity> get todayServices; List<ServiceSummaryEntity> get historyServices; String? get error;
/// Create a copy of CashierState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CashierStateCopyWith<CashierState> get copyWith => _$CashierStateCopyWithImpl<CashierState>(this as CashierState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CashierState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.todayServices, todayServices)&&const DeepCollectionEquality().equals(other.historyServices, historyServices)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(todayServices),const DeepCollectionEquality().hash(historyServices),error);

@override
String toString() {
  return 'CashierState(isLoading: $isLoading, todayServices: $todayServices, historyServices: $historyServices, error: $error)';
}


}

/// @nodoc
abstract mixin class $CashierStateCopyWith<$Res>  {
  factory $CashierStateCopyWith(CashierState value, $Res Function(CashierState) _then) = _$CashierStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<ServiceSummaryEntity> todayServices, List<ServiceSummaryEntity> historyServices, String? error
});




}
/// @nodoc
class _$CashierStateCopyWithImpl<$Res>
    implements $CashierStateCopyWith<$Res> {
  _$CashierStateCopyWithImpl(this._self, this._then);

  final CashierState _self;
  final $Res Function(CashierState) _then;

/// Create a copy of CashierState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? todayServices = null,Object? historyServices = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,todayServices: null == todayServices ? _self.todayServices : todayServices // ignore: cast_nullable_to_non_nullable
as List<ServiceSummaryEntity>,historyServices: null == historyServices ? _self.historyServices : historyServices // ignore: cast_nullable_to_non_nullable
as List<ServiceSummaryEntity>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CashierState].
extension CashierStatePatterns on CashierState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CashierState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CashierState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CashierState value)  $default,){
final _that = this;
switch (_that) {
case _CashierState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CashierState value)?  $default,){
final _that = this;
switch (_that) {
case _CashierState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<ServiceSummaryEntity> todayServices,  List<ServiceSummaryEntity> historyServices,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CashierState() when $default != null:
return $default(_that.isLoading,_that.todayServices,_that.historyServices,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<ServiceSummaryEntity> todayServices,  List<ServiceSummaryEntity> historyServices,  String? error)  $default,) {final _that = this;
switch (_that) {
case _CashierState():
return $default(_that.isLoading,_that.todayServices,_that.historyServices,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<ServiceSummaryEntity> todayServices,  List<ServiceSummaryEntity> historyServices,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _CashierState() when $default != null:
return $default(_that.isLoading,_that.todayServices,_that.historyServices,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _CashierState implements CashierState {
  const _CashierState({this.isLoading = false, final  List<ServiceSummaryEntity> todayServices = const [], final  List<ServiceSummaryEntity> historyServices = const [], this.error}): _todayServices = todayServices,_historyServices = historyServices;
  

@override@JsonKey() final  bool isLoading;
 final  List<ServiceSummaryEntity> _todayServices;
@override@JsonKey() List<ServiceSummaryEntity> get todayServices {
  if (_todayServices is EqualUnmodifiableListView) return _todayServices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todayServices);
}

 final  List<ServiceSummaryEntity> _historyServices;
@override@JsonKey() List<ServiceSummaryEntity> get historyServices {
  if (_historyServices is EqualUnmodifiableListView) return _historyServices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_historyServices);
}

@override final  String? error;

/// Create a copy of CashierState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CashierStateCopyWith<_CashierState> get copyWith => __$CashierStateCopyWithImpl<_CashierState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CashierState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._todayServices, _todayServices)&&const DeepCollectionEquality().equals(other._historyServices, _historyServices)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_todayServices),const DeepCollectionEquality().hash(_historyServices),error);

@override
String toString() {
  return 'CashierState(isLoading: $isLoading, todayServices: $todayServices, historyServices: $historyServices, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CashierStateCopyWith<$Res> implements $CashierStateCopyWith<$Res> {
  factory _$CashierStateCopyWith(_CashierState value, $Res Function(_CashierState) _then) = __$CashierStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<ServiceSummaryEntity> todayServices, List<ServiceSummaryEntity> historyServices, String? error
});




}
/// @nodoc
class __$CashierStateCopyWithImpl<$Res>
    implements _$CashierStateCopyWith<$Res> {
  __$CashierStateCopyWithImpl(this._self, this._then);

  final _CashierState _self;
  final $Res Function(_CashierState) _then;

/// Create a copy of CashierState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? todayServices = null,Object? historyServices = null,Object? error = freezed,}) {
  return _then(_CashierState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,todayServices: null == todayServices ? _self._todayServices : todayServices // ignore: cast_nullable_to_non_nullable
as List<ServiceSummaryEntity>,historyServices: null == historyServices ? _self._historyServices : historyServices // ignore: cast_nullable_to_non_nullable
as List<ServiceSummaryEntity>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
