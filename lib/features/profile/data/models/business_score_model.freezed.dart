// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessScoreModel {

 int get score;@JsonKey(name: 'max_score') int get maxScore; String get badge; String get description;
/// Create a copy of BusinessScoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessScoreModelCopyWith<BusinessScoreModel> get copyWith => _$BusinessScoreModelCopyWithImpl<BusinessScoreModel>(this as BusinessScoreModel, _$identity);

  /// Serializes this BusinessScoreModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessScoreModel&&(identical(other.score, score) || other.score == score)&&(identical(other.maxScore, maxScore) || other.maxScore == maxScore)&&(identical(other.badge, badge) || other.badge == badge)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,maxScore,badge,description);

@override
String toString() {
  return 'BusinessScoreModel(score: $score, maxScore: $maxScore, badge: $badge, description: $description)';
}


}

/// @nodoc
abstract mixin class $BusinessScoreModelCopyWith<$Res>  {
  factory $BusinessScoreModelCopyWith(BusinessScoreModel value, $Res Function(BusinessScoreModel) _then) = _$BusinessScoreModelCopyWithImpl;
@useResult
$Res call({
 int score,@JsonKey(name: 'max_score') int maxScore, String badge, String description
});




}
/// @nodoc
class _$BusinessScoreModelCopyWithImpl<$Res>
    implements $BusinessScoreModelCopyWith<$Res> {
  _$BusinessScoreModelCopyWithImpl(this._self, this._then);

  final BusinessScoreModel _self;
  final $Res Function(BusinessScoreModel) _then;

/// Create a copy of BusinessScoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? maxScore = null,Object? badge = null,Object? description = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,maxScore: null == maxScore ? _self.maxScore : maxScore // ignore: cast_nullable_to_non_nullable
as int,badge: null == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BusinessScoreModel].
extension BusinessScoreModelPatterns on BusinessScoreModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessScoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessScoreModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessScoreModel value)  $default,){
final _that = this;
switch (_that) {
case _BusinessScoreModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessScoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessScoreModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int score, @JsonKey(name: 'max_score')  int maxScore,  String badge,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessScoreModel() when $default != null:
return $default(_that.score,_that.maxScore,_that.badge,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int score, @JsonKey(name: 'max_score')  int maxScore,  String badge,  String description)  $default,) {final _that = this;
switch (_that) {
case _BusinessScoreModel():
return $default(_that.score,_that.maxScore,_that.badge,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int score, @JsonKey(name: 'max_score')  int maxScore,  String badge,  String description)?  $default,) {final _that = this;
switch (_that) {
case _BusinessScoreModel() when $default != null:
return $default(_that.score,_that.maxScore,_that.badge,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusinessScoreModel implements BusinessScoreModel {
  const _BusinessScoreModel({required this.score, @JsonKey(name: 'max_score') required this.maxScore, required this.badge, required this.description});
  factory _BusinessScoreModel.fromJson(Map<String, dynamic> json) => _$BusinessScoreModelFromJson(json);

@override final  int score;
@override@JsonKey(name: 'max_score') final  int maxScore;
@override final  String badge;
@override final  String description;

/// Create a copy of BusinessScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessScoreModelCopyWith<_BusinessScoreModel> get copyWith => __$BusinessScoreModelCopyWithImpl<_BusinessScoreModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessScoreModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessScoreModel&&(identical(other.score, score) || other.score == score)&&(identical(other.maxScore, maxScore) || other.maxScore == maxScore)&&(identical(other.badge, badge) || other.badge == badge)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,maxScore,badge,description);

@override
String toString() {
  return 'BusinessScoreModel(score: $score, maxScore: $maxScore, badge: $badge, description: $description)';
}


}

/// @nodoc
abstract mixin class _$BusinessScoreModelCopyWith<$Res> implements $BusinessScoreModelCopyWith<$Res> {
  factory _$BusinessScoreModelCopyWith(_BusinessScoreModel value, $Res Function(_BusinessScoreModel) _then) = __$BusinessScoreModelCopyWithImpl;
@override @useResult
$Res call({
 int score,@JsonKey(name: 'max_score') int maxScore, String badge, String description
});




}
/// @nodoc
class __$BusinessScoreModelCopyWithImpl<$Res>
    implements _$BusinessScoreModelCopyWith<$Res> {
  __$BusinessScoreModelCopyWithImpl(this._self, this._then);

  final _BusinessScoreModel _self;
  final $Res Function(_BusinessScoreModel) _then;

/// Create a copy of BusinessScoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? maxScore = null,Object? badge = null,Object? description = null,}) {
  return _then(_BusinessScoreModel(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,maxScore: null == maxScore ? _self.maxScore : maxScore // ignore: cast_nullable_to_non_nullable
as int,badge: null == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
