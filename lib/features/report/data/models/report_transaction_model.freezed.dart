// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportTransactionModel {

 String get id; String get type; String get description; int get amount; String get status; String get date;
/// Create a copy of ReportTransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportTransactionModelCopyWith<ReportTransactionModel> get copyWith => _$ReportTransactionModelCopyWithImpl<ReportTransactionModel>(this as ReportTransactionModel, _$identity);

  /// Serializes this ReportTransactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportTransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,description,amount,status,date);

@override
String toString() {
  return 'ReportTransactionModel(id: $id, type: $type, description: $description, amount: $amount, status: $status, date: $date)';
}


}

/// @nodoc
abstract mixin class $ReportTransactionModelCopyWith<$Res>  {
  factory $ReportTransactionModelCopyWith(ReportTransactionModel value, $Res Function(ReportTransactionModel) _then) = _$ReportTransactionModelCopyWithImpl;
@useResult
$Res call({
 String id, String type, String description, int amount, String status, String date
});




}
/// @nodoc
class _$ReportTransactionModelCopyWithImpl<$Res>
    implements $ReportTransactionModelCopyWith<$Res> {
  _$ReportTransactionModelCopyWithImpl(this._self, this._then);

  final ReportTransactionModel _self;
  final $Res Function(ReportTransactionModel) _then;

/// Create a copy of ReportTransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? description = null,Object? amount = null,Object? status = null,Object? date = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportTransactionModel].
extension ReportTransactionModelPatterns on ReportTransactionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportTransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportTransactionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportTransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _ReportTransactionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportTransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReportTransactionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String description,  int amount,  String status,  String date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportTransactionModel() when $default != null:
return $default(_that.id,_that.type,_that.description,_that.amount,_that.status,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String description,  int amount,  String status,  String date)  $default,) {final _that = this;
switch (_that) {
case _ReportTransactionModel():
return $default(_that.id,_that.type,_that.description,_that.amount,_that.status,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String description,  int amount,  String status,  String date)?  $default,) {final _that = this;
switch (_that) {
case _ReportTransactionModel() when $default != null:
return $default(_that.id,_that.type,_that.description,_that.amount,_that.status,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportTransactionModel implements ReportTransactionModel {
  const _ReportTransactionModel({required this.id, required this.type, required this.description, required this.amount, required this.status, required this.date});
  factory _ReportTransactionModel.fromJson(Map<String, dynamic> json) => _$ReportTransactionModelFromJson(json);

@override final  String id;
@override final  String type;
@override final  String description;
@override final  int amount;
@override final  String status;
@override final  String date;

/// Create a copy of ReportTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportTransactionModelCopyWith<_ReportTransactionModel> get copyWith => __$ReportTransactionModelCopyWithImpl<_ReportTransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportTransactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportTransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,description,amount,status,date);

@override
String toString() {
  return 'ReportTransactionModel(id: $id, type: $type, description: $description, amount: $amount, status: $status, date: $date)';
}


}

/// @nodoc
abstract mixin class _$ReportTransactionModelCopyWith<$Res> implements $ReportTransactionModelCopyWith<$Res> {
  factory _$ReportTransactionModelCopyWith(_ReportTransactionModel value, $Res Function(_ReportTransactionModel) _then) = __$ReportTransactionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String description, int amount, String status, String date
});




}
/// @nodoc
class __$ReportTransactionModelCopyWithImpl<$Res>
    implements _$ReportTransactionModelCopyWith<$Res> {
  __$ReportTransactionModelCopyWithImpl(this._self, this._then);

  final _ReportTransactionModel _self;
  final $Res Function(_ReportTransactionModel) _then;

/// Create a copy of ReportTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? description = null,Object? amount = null,Object? status = null,Object? date = null,}) {
  return _then(_ReportTransactionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
