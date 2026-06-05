// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceTypeModel {

 String get id; String get name; String? get description;
/// Create a copy of ServiceTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceTypeModelCopyWith<ServiceTypeModel> get copyWith => _$ServiceTypeModelCopyWithImpl<ServiceTypeModel>(this as ServiceTypeModel, _$identity);

  /// Serializes this ServiceTypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'ServiceTypeModel(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $ServiceTypeModelCopyWith<$Res>  {
  factory $ServiceTypeModelCopyWith(ServiceTypeModel value, $Res Function(ServiceTypeModel) _then) = _$ServiceTypeModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description
});




}
/// @nodoc
class _$ServiceTypeModelCopyWithImpl<$Res>
    implements $ServiceTypeModelCopyWith<$Res> {
  _$ServiceTypeModelCopyWithImpl(this._self, this._then);

  final ServiceTypeModel _self;
  final $Res Function(ServiceTypeModel) _then;

/// Create a copy of ServiceTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceTypeModel].
extension ServiceTypeModelPatterns on ServiceTypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceTypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _ServiceTypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceTypeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceTypeModel() when $default != null:
return $default(_that.id,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description)  $default,) {final _that = this;
switch (_that) {
case _ServiceTypeModel():
return $default(_that.id,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _ServiceTypeModel() when $default != null:
return $default(_that.id,_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceTypeModel implements ServiceTypeModel {
  const _ServiceTypeModel({required this.id, required this.name, this.description});
  factory _ServiceTypeModel.fromJson(Map<String, dynamic> json) => _$ServiceTypeModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;

/// Create a copy of ServiceTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceTypeModelCopyWith<_ServiceTypeModel> get copyWith => __$ServiceTypeModelCopyWithImpl<_ServiceTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceTypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'ServiceTypeModel(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ServiceTypeModelCopyWith<$Res> implements $ServiceTypeModelCopyWith<$Res> {
  factory _$ServiceTypeModelCopyWith(_ServiceTypeModel value, $Res Function(_ServiceTypeModel) _then) = __$ServiceTypeModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description
});




}
/// @nodoc
class __$ServiceTypeModelCopyWithImpl<$Res>
    implements _$ServiceTypeModelCopyWith<$Res> {
  __$ServiceTypeModelCopyWithImpl(this._self, this._then);

  final _ServiceTypeModel _self;
  final $Res Function(_ServiceTypeModel) _then;

/// Create a copy of ServiceTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,}) {
  return _then(_ServiceTypeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
