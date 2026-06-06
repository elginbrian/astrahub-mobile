// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_services_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopServiceModel {

 int get rank; String get name; int get count; int get revenue;
/// Create a copy of TopServiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopServiceModelCopyWith<TopServiceModel> get copyWith => _$TopServiceModelCopyWithImpl<TopServiceModel>(this as TopServiceModel, _$identity);

  /// Serializes this TopServiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopServiceModel&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&(identical(other.revenue, revenue) || other.revenue == revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rank,name,count,revenue);

@override
String toString() {
  return 'TopServiceModel(rank: $rank, name: $name, count: $count, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class $TopServiceModelCopyWith<$Res>  {
  factory $TopServiceModelCopyWith(TopServiceModel value, $Res Function(TopServiceModel) _then) = _$TopServiceModelCopyWithImpl;
@useResult
$Res call({
 int rank, String name, int count, int revenue
});




}
/// @nodoc
class _$TopServiceModelCopyWithImpl<$Res>
    implements $TopServiceModelCopyWith<$Res> {
  _$TopServiceModelCopyWithImpl(this._self, this._then);

  final TopServiceModel _self;
  final $Res Function(TopServiceModel) _then;

/// Create a copy of TopServiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rank = null,Object? name = null,Object? count = null,Object? revenue = null,}) {
  return _then(_self.copyWith(
rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TopServiceModel].
extension TopServiceModelPatterns on TopServiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopServiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopServiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopServiceModel value)  $default,){
final _that = this;
switch (_that) {
case _TopServiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopServiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _TopServiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int rank,  String name,  int count,  int revenue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopServiceModel() when $default != null:
return $default(_that.rank,_that.name,_that.count,_that.revenue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int rank,  String name,  int count,  int revenue)  $default,) {final _that = this;
switch (_that) {
case _TopServiceModel():
return $default(_that.rank,_that.name,_that.count,_that.revenue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int rank,  String name,  int count,  int revenue)?  $default,) {final _that = this;
switch (_that) {
case _TopServiceModel() when $default != null:
return $default(_that.rank,_that.name,_that.count,_that.revenue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopServiceModel implements TopServiceModel {
  const _TopServiceModel({required this.rank, required this.name, required this.count, required this.revenue});
  factory _TopServiceModel.fromJson(Map<String, dynamic> json) => _$TopServiceModelFromJson(json);

@override final  int rank;
@override final  String name;
@override final  int count;
@override final  int revenue;

/// Create a copy of TopServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopServiceModelCopyWith<_TopServiceModel> get copyWith => __$TopServiceModelCopyWithImpl<_TopServiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopServiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopServiceModel&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.name, name) || other.name == name)&&(identical(other.count, count) || other.count == count)&&(identical(other.revenue, revenue) || other.revenue == revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rank,name,count,revenue);

@override
String toString() {
  return 'TopServiceModel(rank: $rank, name: $name, count: $count, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class _$TopServiceModelCopyWith<$Res> implements $TopServiceModelCopyWith<$Res> {
  factory _$TopServiceModelCopyWith(_TopServiceModel value, $Res Function(_TopServiceModel) _then) = __$TopServiceModelCopyWithImpl;
@override @useResult
$Res call({
 int rank, String name, int count, int revenue
});




}
/// @nodoc
class __$TopServiceModelCopyWithImpl<$Res>
    implements _$TopServiceModelCopyWith<$Res> {
  __$TopServiceModelCopyWithImpl(this._self, this._then);

  final _TopServiceModel _self;
  final $Res Function(_TopServiceModel) _then;

/// Create a copy of TopServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rank = null,Object? name = null,Object? count = null,Object? revenue = null,}) {
  return _then(_TopServiceModel(
rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TopServicesResponseModel {

 String get period; List<TopServiceModel> get services;
/// Create a copy of TopServicesResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopServicesResponseModelCopyWith<TopServicesResponseModel> get copyWith => _$TopServicesResponseModelCopyWithImpl<TopServicesResponseModel>(this as TopServicesResponseModel, _$identity);

  /// Serializes this TopServicesResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopServicesResponseModel&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other.services, services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,const DeepCollectionEquality().hash(services));

@override
String toString() {
  return 'TopServicesResponseModel(period: $period, services: $services)';
}


}

/// @nodoc
abstract mixin class $TopServicesResponseModelCopyWith<$Res>  {
  factory $TopServicesResponseModelCopyWith(TopServicesResponseModel value, $Res Function(TopServicesResponseModel) _then) = _$TopServicesResponseModelCopyWithImpl;
@useResult
$Res call({
 String period, List<TopServiceModel> services
});




}
/// @nodoc
class _$TopServicesResponseModelCopyWithImpl<$Res>
    implements $TopServicesResponseModelCopyWith<$Res> {
  _$TopServicesResponseModelCopyWithImpl(this._self, this._then);

  final TopServicesResponseModel _self;
  final $Res Function(TopServicesResponseModel) _then;

/// Create a copy of TopServicesResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? services = null,}) {
  return _then(_self.copyWith(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<TopServiceModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [TopServicesResponseModel].
extension TopServicesResponseModelPatterns on TopServicesResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopServicesResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopServicesResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopServicesResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _TopServicesResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopServicesResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _TopServicesResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String period,  List<TopServiceModel> services)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopServicesResponseModel() when $default != null:
return $default(_that.period,_that.services);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String period,  List<TopServiceModel> services)  $default,) {final _that = this;
switch (_that) {
case _TopServicesResponseModel():
return $default(_that.period,_that.services);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String period,  List<TopServiceModel> services)?  $default,) {final _that = this;
switch (_that) {
case _TopServicesResponseModel() when $default != null:
return $default(_that.period,_that.services);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopServicesResponseModel implements TopServicesResponseModel {
  const _TopServicesResponseModel({required this.period, final  List<TopServiceModel> services = const []}): _services = services;
  factory _TopServicesResponseModel.fromJson(Map<String, dynamic> json) => _$TopServicesResponseModelFromJson(json);

@override final  String period;
 final  List<TopServiceModel> _services;
@override@JsonKey() List<TopServiceModel> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}


/// Create a copy of TopServicesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopServicesResponseModelCopyWith<_TopServicesResponseModel> get copyWith => __$TopServicesResponseModelCopyWithImpl<_TopServicesResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopServicesResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopServicesResponseModel&&(identical(other.period, period) || other.period == period)&&const DeepCollectionEquality().equals(other._services, _services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,const DeepCollectionEquality().hash(_services));

@override
String toString() {
  return 'TopServicesResponseModel(period: $period, services: $services)';
}


}

/// @nodoc
abstract mixin class _$TopServicesResponseModelCopyWith<$Res> implements $TopServicesResponseModelCopyWith<$Res> {
  factory _$TopServicesResponseModelCopyWith(_TopServicesResponseModel value, $Res Function(_TopServicesResponseModel) _then) = __$TopServicesResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String period, List<TopServiceModel> services
});




}
/// @nodoc
class __$TopServicesResponseModelCopyWithImpl<$Res>
    implements _$TopServicesResponseModelCopyWith<$Res> {
  __$TopServicesResponseModelCopyWithImpl(this._self, this._then);

  final _TopServicesResponseModel _self;
  final $Res Function(_TopServicesResponseModel) _then;

/// Create a copy of TopServicesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? services = null,}) {
  return _then(_TopServicesResponseModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<TopServiceModel>,
  ));
}


}

// dart format on
