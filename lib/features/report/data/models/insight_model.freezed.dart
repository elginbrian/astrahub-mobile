// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insight_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InsightModel {

 String get type; String get title; String get description; String? get metric;
/// Create a copy of InsightModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsightModelCopyWith<InsightModel> get copyWith => _$InsightModelCopyWithImpl<InsightModel>(this as InsightModel, _$identity);

  /// Serializes this InsightModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsightModel&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.metric, metric) || other.metric == metric));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,description,metric);

@override
String toString() {
  return 'InsightModel(type: $type, title: $title, description: $description, metric: $metric)';
}


}

/// @nodoc
abstract mixin class $InsightModelCopyWith<$Res>  {
  factory $InsightModelCopyWith(InsightModel value, $Res Function(InsightModel) _then) = _$InsightModelCopyWithImpl;
@useResult
$Res call({
 String type, String title, String description, String? metric
});




}
/// @nodoc
class _$InsightModelCopyWithImpl<$Res>
    implements $InsightModelCopyWith<$Res> {
  _$InsightModelCopyWithImpl(this._self, this._then);

  final InsightModel _self;
  final $Res Function(InsightModel) _then;

/// Create a copy of InsightModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? title = null,Object? description = null,Object? metric = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,metric: freezed == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InsightModel].
extension InsightModelPatterns on InsightModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InsightModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InsightModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InsightModel value)  $default,){
final _that = this;
switch (_that) {
case _InsightModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InsightModel value)?  $default,){
final _that = this;
switch (_that) {
case _InsightModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String title,  String description,  String? metric)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InsightModel() when $default != null:
return $default(_that.type,_that.title,_that.description,_that.metric);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String title,  String description,  String? metric)  $default,) {final _that = this;
switch (_that) {
case _InsightModel():
return $default(_that.type,_that.title,_that.description,_that.metric);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String title,  String description,  String? metric)?  $default,) {final _that = this;
switch (_that) {
case _InsightModel() when $default != null:
return $default(_that.type,_that.title,_that.description,_that.metric);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InsightModel implements InsightModel {
  const _InsightModel({required this.type, required this.title, required this.description, this.metric});
  factory _InsightModel.fromJson(Map<String, dynamic> json) => _$InsightModelFromJson(json);

@override final  String type;
@override final  String title;
@override final  String description;
@override final  String? metric;

/// Create a copy of InsightModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsightModelCopyWith<_InsightModel> get copyWith => __$InsightModelCopyWithImpl<_InsightModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InsightModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InsightModel&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.metric, metric) || other.metric == metric));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,description,metric);

@override
String toString() {
  return 'InsightModel(type: $type, title: $title, description: $description, metric: $metric)';
}


}

/// @nodoc
abstract mixin class _$InsightModelCopyWith<$Res> implements $InsightModelCopyWith<$Res> {
  factory _$InsightModelCopyWith(_InsightModel value, $Res Function(_InsightModel) _then) = __$InsightModelCopyWithImpl;
@override @useResult
$Res call({
 String type, String title, String description, String? metric
});




}
/// @nodoc
class __$InsightModelCopyWithImpl<$Res>
    implements _$InsightModelCopyWith<$Res> {
  __$InsightModelCopyWithImpl(this._self, this._then);

  final _InsightModel _self;
  final $Res Function(_InsightModel) _then;

/// Create a copy of InsightModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? title = null,Object? description = null,Object? metric = freezed,}) {
  return _then(_InsightModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,metric: freezed == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$InsightResponseModel {

 List<InsightModel> get insights;
/// Create a copy of InsightResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsightResponseModelCopyWith<InsightResponseModel> get copyWith => _$InsightResponseModelCopyWithImpl<InsightResponseModel>(this as InsightResponseModel, _$identity);

  /// Serializes this InsightResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsightResponseModel&&const DeepCollectionEquality().equals(other.insights, insights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(insights));

@override
String toString() {
  return 'InsightResponseModel(insights: $insights)';
}


}

/// @nodoc
abstract mixin class $InsightResponseModelCopyWith<$Res>  {
  factory $InsightResponseModelCopyWith(InsightResponseModel value, $Res Function(InsightResponseModel) _then) = _$InsightResponseModelCopyWithImpl;
@useResult
$Res call({
 List<InsightModel> insights
});




}
/// @nodoc
class _$InsightResponseModelCopyWithImpl<$Res>
    implements $InsightResponseModelCopyWith<$Res> {
  _$InsightResponseModelCopyWithImpl(this._self, this._then);

  final InsightResponseModel _self;
  final $Res Function(InsightResponseModel) _then;

/// Create a copy of InsightResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? insights = null,}) {
  return _then(_self.copyWith(
insights: null == insights ? _self.insights : insights // ignore: cast_nullable_to_non_nullable
as List<InsightModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [InsightResponseModel].
extension InsightResponseModelPatterns on InsightResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InsightResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InsightResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InsightResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _InsightResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InsightResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _InsightResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<InsightModel> insights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InsightResponseModel() when $default != null:
return $default(_that.insights);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<InsightModel> insights)  $default,) {final _that = this;
switch (_that) {
case _InsightResponseModel():
return $default(_that.insights);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<InsightModel> insights)?  $default,) {final _that = this;
switch (_that) {
case _InsightResponseModel() when $default != null:
return $default(_that.insights);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InsightResponseModel implements InsightResponseModel {
  const _InsightResponseModel({final  List<InsightModel> insights = const []}): _insights = insights;
  factory _InsightResponseModel.fromJson(Map<String, dynamic> json) => _$InsightResponseModelFromJson(json);

 final  List<InsightModel> _insights;
@override@JsonKey() List<InsightModel> get insights {
  if (_insights is EqualUnmodifiableListView) return _insights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_insights);
}


/// Create a copy of InsightResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsightResponseModelCopyWith<_InsightResponseModel> get copyWith => __$InsightResponseModelCopyWithImpl<_InsightResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InsightResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InsightResponseModel&&const DeepCollectionEquality().equals(other._insights, _insights));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_insights));

@override
String toString() {
  return 'InsightResponseModel(insights: $insights)';
}


}

/// @nodoc
abstract mixin class _$InsightResponseModelCopyWith<$Res> implements $InsightResponseModelCopyWith<$Res> {
  factory _$InsightResponseModelCopyWith(_InsightResponseModel value, $Res Function(_InsightResponseModel) _then) = __$InsightResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<InsightModel> insights
});




}
/// @nodoc
class __$InsightResponseModelCopyWithImpl<$Res>
    implements _$InsightResponseModelCopyWith<$Res> {
  __$InsightResponseModelCopyWithImpl(this._self, this._then);

  final _InsightResponseModel _self;
  final $Res Function(_InsightResponseModel) _then;

/// Create a copy of InsightResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? insights = null,}) {
  return _then(_InsightResponseModel(
insights: null == insights ? _self._insights : insights // ignore: cast_nullable_to_non_nullable
as List<InsightModel>,
  ));
}


}

// dart format on
