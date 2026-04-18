// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResultEvent {

 ResultEntity get result; int get score; int get total;
/// Create a copy of ResultEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultEventCopyWith<ResultEvent> get copyWith => _$ResultEventCopyWithImpl<ResultEvent>(this as ResultEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultEvent&&(identical(other.result, result) || other.result == result)&&(identical(other.score, score) || other.score == score)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,result,score,total);

@override
String toString() {
  return 'ResultEvent(result: $result, score: $score, total: $total)';
}


}

/// @nodoc
abstract mixin class $ResultEventCopyWith<$Res>  {
  factory $ResultEventCopyWith(ResultEvent value, $Res Function(ResultEvent) _then) = _$ResultEventCopyWithImpl;
@useResult
$Res call({
 ResultEntity result, int score, int total
});




}
/// @nodoc
class _$ResultEventCopyWithImpl<$Res>
    implements $ResultEventCopyWith<$Res> {
  _$ResultEventCopyWithImpl(this._self, this._then);

  final ResultEvent _self;
  final $Res Function(ResultEvent) _then;

/// Create a copy of ResultEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,Object? score = null,Object? total = null,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as ResultEntity,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ResultEvent].
extension ResultEventPatterns on ResultEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Insert value)?  insert,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Insert() when insert != null:
return insert(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Insert value)  insert,}){
final _that = this;
switch (_that) {
case _Insert():
return insert(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Insert value)?  insert,}){
final _that = this;
switch (_that) {
case _Insert() when insert != null:
return insert(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ResultEntity result,  int score,  int total)?  insert,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Insert() when insert != null:
return insert(_that.result,_that.score,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ResultEntity result,  int score,  int total)  insert,}) {final _that = this;
switch (_that) {
case _Insert():
return insert(_that.result,_that.score,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ResultEntity result,  int score,  int total)?  insert,}) {final _that = this;
switch (_that) {
case _Insert() when insert != null:
return insert(_that.result,_that.score,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _Insert implements ResultEvent {
  const _Insert(this.result, this.score, this.total);
  

@override final  ResultEntity result;
@override final  int score;
@override final  int total;

/// Create a copy of ResultEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsertCopyWith<_Insert> get copyWith => __$InsertCopyWithImpl<_Insert>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Insert&&(identical(other.result, result) || other.result == result)&&(identical(other.score, score) || other.score == score)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,result,score,total);

@override
String toString() {
  return 'ResultEvent.insert(result: $result, score: $score, total: $total)';
}


}

/// @nodoc
abstract mixin class _$InsertCopyWith<$Res> implements $ResultEventCopyWith<$Res> {
  factory _$InsertCopyWith(_Insert value, $Res Function(_Insert) _then) = __$InsertCopyWithImpl;
@override @useResult
$Res call({
 ResultEntity result, int score, int total
});




}
/// @nodoc
class __$InsertCopyWithImpl<$Res>
    implements _$InsertCopyWith<$Res> {
  __$InsertCopyWithImpl(this._self, this._then);

  final _Insert _self;
  final $Res Function(_Insert) _then;

/// Create a copy of ResultEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,Object? score = null,Object? total = null,}) {
  return _then(_Insert(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as ResultEntity,null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ResultState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResultState()';
}


}

/// @nodoc
class $ResultStateCopyWith<$Res>  {
$ResultStateCopyWith(ResultState _, $Res Function(ResultState) __);
}


/// Adds pattern-matching-related methods to [ResultState].
extension ResultStatePatterns on ResultState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Error value)?  error,TResult Function( _Inserted value)?  inserted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _Inserted() when inserted != null:
return inserted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Error value)  error,required TResult Function( _Inserted value)  inserted,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Error():
return error(_that);case _Inserted():
return inserted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Error value)?  error,TResult? Function( _Inserted value)?  inserted,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _Inserted() when inserted != null:
return inserted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( ResultEntity result)?  inserted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.message);case _Inserted() when inserted != null:
return inserted(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( ResultEntity result)  inserted,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Error():
return error(_that.message);case _Inserted():
return inserted(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( ResultEntity result)?  inserted,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.message);case _Inserted() when inserted != null:
return inserted(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ResultState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResultState.initial()';
}


}




/// @nodoc


class _Loading implements ResultState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResultState.loading()';
}


}




/// @nodoc


class _Error implements ResultState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of ResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ResultState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ResultStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Inserted implements ResultState {
  const _Inserted(this.result);
  

 final  ResultEntity result;

/// Create a copy of ResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsertedCopyWith<_Inserted> get copyWith => __$InsertedCopyWithImpl<_Inserted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Inserted&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'ResultState.inserted(result: $result)';
}


}

/// @nodoc
abstract mixin class _$InsertedCopyWith<$Res> implements $ResultStateCopyWith<$Res> {
  factory _$InsertedCopyWith(_Inserted value, $Res Function(_Inserted) _then) = __$InsertedCopyWithImpl;
@useResult
$Res call({
 ResultEntity result
});




}
/// @nodoc
class __$InsertedCopyWithImpl<$Res>
    implements _$InsertedCopyWith<$Res> {
  __$InsertedCopyWithImpl(this._self, this._then);

  final _Inserted _self;
  final $Res Function(_Inserted) _then;

/// Create a copy of ResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(_Inserted(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as ResultEntity,
  ));
}


}

// dart format on
