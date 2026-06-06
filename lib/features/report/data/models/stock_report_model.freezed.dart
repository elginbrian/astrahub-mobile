// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockStatusCountModel {

 int get kritis; int get menipis; int get aman;
/// Create a copy of StockStatusCountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockStatusCountModelCopyWith<StockStatusCountModel> get copyWith => _$StockStatusCountModelCopyWithImpl<StockStatusCountModel>(this as StockStatusCountModel, _$identity);

  /// Serializes this StockStatusCountModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockStatusCountModel&&(identical(other.kritis, kritis) || other.kritis == kritis)&&(identical(other.menipis, menipis) || other.menipis == menipis)&&(identical(other.aman, aman) || other.aman == aman));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kritis,menipis,aman);

@override
String toString() {
  return 'StockStatusCountModel(kritis: $kritis, menipis: $menipis, aman: $aman)';
}


}

/// @nodoc
abstract mixin class $StockStatusCountModelCopyWith<$Res>  {
  factory $StockStatusCountModelCopyWith(StockStatusCountModel value, $Res Function(StockStatusCountModel) _then) = _$StockStatusCountModelCopyWithImpl;
@useResult
$Res call({
 int kritis, int menipis, int aman
});




}
/// @nodoc
class _$StockStatusCountModelCopyWithImpl<$Res>
    implements $StockStatusCountModelCopyWith<$Res> {
  _$StockStatusCountModelCopyWithImpl(this._self, this._then);

  final StockStatusCountModel _self;
  final $Res Function(StockStatusCountModel) _then;

/// Create a copy of StockStatusCountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kritis = null,Object? menipis = null,Object? aman = null,}) {
  return _then(_self.copyWith(
kritis: null == kritis ? _self.kritis : kritis // ignore: cast_nullable_to_non_nullable
as int,menipis: null == menipis ? _self.menipis : menipis // ignore: cast_nullable_to_non_nullable
as int,aman: null == aman ? _self.aman : aman // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StockStatusCountModel].
extension StockStatusCountModelPatterns on StockStatusCountModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockStatusCountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockStatusCountModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockStatusCountModel value)  $default,){
final _that = this;
switch (_that) {
case _StockStatusCountModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockStatusCountModel value)?  $default,){
final _that = this;
switch (_that) {
case _StockStatusCountModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int kritis,  int menipis,  int aman)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockStatusCountModel() when $default != null:
return $default(_that.kritis,_that.menipis,_that.aman);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int kritis,  int menipis,  int aman)  $default,) {final _that = this;
switch (_that) {
case _StockStatusCountModel():
return $default(_that.kritis,_that.menipis,_that.aman);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int kritis,  int menipis,  int aman)?  $default,) {final _that = this;
switch (_that) {
case _StockStatusCountModel() when $default != null:
return $default(_that.kritis,_that.menipis,_that.aman);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockStatusCountModel implements StockStatusCountModel {
  const _StockStatusCountModel({required this.kritis, required this.menipis, required this.aman});
  factory _StockStatusCountModel.fromJson(Map<String, dynamic> json) => _$StockStatusCountModelFromJson(json);

@override final  int kritis;
@override final  int menipis;
@override final  int aman;

/// Create a copy of StockStatusCountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockStatusCountModelCopyWith<_StockStatusCountModel> get copyWith => __$StockStatusCountModelCopyWithImpl<_StockStatusCountModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockStatusCountModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockStatusCountModel&&(identical(other.kritis, kritis) || other.kritis == kritis)&&(identical(other.menipis, menipis) || other.menipis == menipis)&&(identical(other.aman, aman) || other.aman == aman));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kritis,menipis,aman);

@override
String toString() {
  return 'StockStatusCountModel(kritis: $kritis, menipis: $menipis, aman: $aman)';
}


}

/// @nodoc
abstract mixin class _$StockStatusCountModelCopyWith<$Res> implements $StockStatusCountModelCopyWith<$Res> {
  factory _$StockStatusCountModelCopyWith(_StockStatusCountModel value, $Res Function(_StockStatusCountModel) _then) = __$StockStatusCountModelCopyWithImpl;
@override @useResult
$Res call({
 int kritis, int menipis, int aman
});




}
/// @nodoc
class __$StockStatusCountModelCopyWithImpl<$Res>
    implements _$StockStatusCountModelCopyWith<$Res> {
  __$StockStatusCountModelCopyWithImpl(this._self, this._then);

  final _StockStatusCountModel _self;
  final $Res Function(_StockStatusCountModel) _then;

/// Create a copy of StockStatusCountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kritis = null,Object? menipis = null,Object? aman = null,}) {
  return _then(_StockStatusCountModel(
kritis: null == kritis ? _self.kritis : kritis // ignore: cast_nullable_to_non_nullable
as int,menipis: null == menipis ? _self.menipis : menipis // ignore: cast_nullable_to_non_nullable
as int,aman: null == aman ? _self.aman : aman // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$StockItemModel {

@JsonKey(name: 'product_id') String get productId;@JsonKey(name: 'product_name') String get productName; String get category; int get stock; String get status;
/// Create a copy of StockItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockItemModelCopyWith<StockItemModel> get copyWith => _$StockItemModelCopyWithImpl<StockItemModel>(this as StockItemModel, _$identity);

  /// Serializes this StockItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockItemModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.category, category) || other.category == category)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productName,category,stock,status);

@override
String toString() {
  return 'StockItemModel(productId: $productId, productName: $productName, category: $category, stock: $stock, status: $status)';
}


}

/// @nodoc
abstract mixin class $StockItemModelCopyWith<$Res>  {
  factory $StockItemModelCopyWith(StockItemModel value, $Res Function(StockItemModel) _then) = _$StockItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'product_name') String productName, String category, int stock, String status
});




}
/// @nodoc
class _$StockItemModelCopyWithImpl<$Res>
    implements $StockItemModelCopyWith<$Res> {
  _$StockItemModelCopyWithImpl(this._self, this._then);

  final StockItemModel _self;
  final $Res Function(StockItemModel) _then;

/// Create a copy of StockItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? productName = null,Object? category = null,Object? stock = null,Object? status = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StockItemModel].
extension StockItemModelPatterns on StockItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockItemModel value)  $default,){
final _that = this;
switch (_that) {
case _StockItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _StockItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  String category,  int stock,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockItemModel() when $default != null:
return $default(_that.productId,_that.productName,_that.category,_that.stock,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  String category,  int stock,  String status)  $default,) {final _that = this;
switch (_that) {
case _StockItemModel():
return $default(_that.productId,_that.productName,_that.category,_that.stock,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  String category,  int stock,  String status)?  $default,) {final _that = this;
switch (_that) {
case _StockItemModel() when $default != null:
return $default(_that.productId,_that.productName,_that.category,_that.stock,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockItemModel implements StockItemModel {
  const _StockItemModel({@JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'product_name') required this.productName, required this.category, required this.stock, required this.status});
  factory _StockItemModel.fromJson(Map<String, dynamic> json) => _$StockItemModelFromJson(json);

@override@JsonKey(name: 'product_id') final  String productId;
@override@JsonKey(name: 'product_name') final  String productName;
@override final  String category;
@override final  int stock;
@override final  String status;

/// Create a copy of StockItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockItemModelCopyWith<_StockItemModel> get copyWith => __$StockItemModelCopyWithImpl<_StockItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockItemModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.category, category) || other.category == category)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,productName,category,stock,status);

@override
String toString() {
  return 'StockItemModel(productId: $productId, productName: $productName, category: $category, stock: $stock, status: $status)';
}


}

/// @nodoc
abstract mixin class _$StockItemModelCopyWith<$Res> implements $StockItemModelCopyWith<$Res> {
  factory _$StockItemModelCopyWith(_StockItemModel value, $Res Function(_StockItemModel) _then) = __$StockItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'product_name') String productName, String category, int stock, String status
});




}
/// @nodoc
class __$StockItemModelCopyWithImpl<$Res>
    implements _$StockItemModelCopyWith<$Res> {
  __$StockItemModelCopyWithImpl(this._self, this._then);

  final _StockItemModel _self;
  final $Res Function(_StockItemModel) _then;

/// Create a copy of StockItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? productName = null,Object? category = null,Object? stock = null,Object? status = null,}) {
  return _then(_StockItemModel(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StockReportModel {

 String get period; StockStatusCountModel get summary; List<StockItemModel> get items;
/// Create a copy of StockReportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockReportModelCopyWith<StockReportModel> get copyWith => _$StockReportModelCopyWithImpl<StockReportModel>(this as StockReportModel, _$identity);

  /// Serializes this StockReportModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockReportModel&&(identical(other.period, period) || other.period == period)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,summary,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'StockReportModel(period: $period, summary: $summary, items: $items)';
}


}

/// @nodoc
abstract mixin class $StockReportModelCopyWith<$Res>  {
  factory $StockReportModelCopyWith(StockReportModel value, $Res Function(StockReportModel) _then) = _$StockReportModelCopyWithImpl;
@useResult
$Res call({
 String period, StockStatusCountModel summary, List<StockItemModel> items
});


$StockStatusCountModelCopyWith<$Res> get summary;

}
/// @nodoc
class _$StockReportModelCopyWithImpl<$Res>
    implements $StockReportModelCopyWith<$Res> {
  _$StockReportModelCopyWithImpl(this._self, this._then);

  final StockReportModel _self;
  final $Res Function(StockReportModel) _then;

/// Create a copy of StockReportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? summary = null,Object? items = null,}) {
  return _then(_self.copyWith(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as StockStatusCountModel,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<StockItemModel>,
  ));
}
/// Create a copy of StockReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StockStatusCountModelCopyWith<$Res> get summary {
  
  return $StockStatusCountModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [StockReportModel].
extension StockReportModelPatterns on StockReportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockReportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockReportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockReportModel value)  $default,){
final _that = this;
switch (_that) {
case _StockReportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockReportModel value)?  $default,){
final _that = this;
switch (_that) {
case _StockReportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String period,  StockStatusCountModel summary,  List<StockItemModel> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockReportModel() when $default != null:
return $default(_that.period,_that.summary,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String period,  StockStatusCountModel summary,  List<StockItemModel> items)  $default,) {final _that = this;
switch (_that) {
case _StockReportModel():
return $default(_that.period,_that.summary,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String period,  StockStatusCountModel summary,  List<StockItemModel> items)?  $default,) {final _that = this;
switch (_that) {
case _StockReportModel() when $default != null:
return $default(_that.period,_that.summary,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockReportModel implements StockReportModel {
  const _StockReportModel({required this.period, required this.summary, final  List<StockItemModel> items = const []}): _items = items;
  factory _StockReportModel.fromJson(Map<String, dynamic> json) => _$StockReportModelFromJson(json);

@override final  String period;
@override final  StockStatusCountModel summary;
 final  List<StockItemModel> _items;
@override@JsonKey() List<StockItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of StockReportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockReportModelCopyWith<_StockReportModel> get copyWith => __$StockReportModelCopyWithImpl<_StockReportModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockReportModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockReportModel&&(identical(other.period, period) || other.period == period)&&(identical(other.summary, summary) || other.summary == summary)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,period,summary,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'StockReportModel(period: $period, summary: $summary, items: $items)';
}


}

/// @nodoc
abstract mixin class _$StockReportModelCopyWith<$Res> implements $StockReportModelCopyWith<$Res> {
  factory _$StockReportModelCopyWith(_StockReportModel value, $Res Function(_StockReportModel) _then) = __$StockReportModelCopyWithImpl;
@override @useResult
$Res call({
 String period, StockStatusCountModel summary, List<StockItemModel> items
});


@override $StockStatusCountModelCopyWith<$Res> get summary;

}
/// @nodoc
class __$StockReportModelCopyWithImpl<$Res>
    implements _$StockReportModelCopyWith<$Res> {
  __$StockReportModelCopyWithImpl(this._self, this._then);

  final _StockReportModel _self;
  final $Res Function(_StockReportModel) _then;

/// Create a copy of StockReportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? summary = null,Object? items = null,}) {
  return _then(_StockReportModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as StockStatusCountModel,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<StockItemModel>,
  ));
}

/// Create a copy of StockReportModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StockStatusCountModelCopyWith<$Res> get summary {
  
  return $StockStatusCountModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}

// dart format on
