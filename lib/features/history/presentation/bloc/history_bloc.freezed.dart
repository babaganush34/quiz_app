// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryEvent()';
}


}

/// @nodoc
class $HistoryEventCopyWith<$Res>  {
$HistoryEventCopyWith(HistoryEvent _, $Res Function(HistoryEvent) __);
}


/// Adds pattern-matching-related methods to [HistoryEvent].
extension HistoryEventPatterns on HistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Insert value)?  insert,TResult Function( _GetData value)?  getData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Insert() when insert != null:
return insert(_that);case _GetData() when getData != null:
return getData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Insert value)  insert,required TResult Function( _GetData value)  getData,}){
final _that = this;
switch (_that) {
case _Insert():
return insert(_that);case _GetData():
return getData(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Insert value)?  insert,TResult? Function( _GetData value)?  getData,}){
final _that = this;
switch (_that) {
case _Insert() when insert != null:
return insert(_that);case _GetData() when getData != null:
return getData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( HistoryEntity history)?  insert,TResult Function()?  getData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Insert() when insert != null:
return insert(_that.history);case _GetData() when getData != null:
return getData();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( HistoryEntity history)  insert,required TResult Function()  getData,}) {final _that = this;
switch (_that) {
case _Insert():
return insert(_that.history);case _GetData():
return getData();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( HistoryEntity history)?  insert,TResult? Function()?  getData,}) {final _that = this;
switch (_that) {
case _Insert() when insert != null:
return insert(_that.history);case _GetData() when getData != null:
return getData();case _:
  return null;

}
}

}

/// @nodoc


class _Insert implements HistoryEvent {
  const _Insert(this.history);
  

 final  HistoryEntity history;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsertCopyWith<_Insert> get copyWith => __$InsertCopyWithImpl<_Insert>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Insert&&(identical(other.history, history) || other.history == history));
}


@override
int get hashCode => Object.hash(runtimeType,history);

@override
String toString() {
  return 'HistoryEvent.insert(history: $history)';
}


}

/// @nodoc
abstract mixin class _$InsertCopyWith<$Res> implements $HistoryEventCopyWith<$Res> {
  factory _$InsertCopyWith(_Insert value, $Res Function(_Insert) _then) = __$InsertCopyWithImpl;
@useResult
$Res call({
 HistoryEntity history
});




}
/// @nodoc
class __$InsertCopyWithImpl<$Res>
    implements _$InsertCopyWith<$Res> {
  __$InsertCopyWithImpl(this._self, this._then);

  final _Insert _self;
  final $Res Function(_Insert) _then;

/// Create a copy of HistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? history = null,}) {
  return _then(_Insert(
null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as HistoryEntity,
  ));
}


}

/// @nodoc


class _GetData implements HistoryEvent {
  const _GetData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryEvent.getData()';
}


}




/// @nodoc
mixin _$HistoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState()';
}


}

/// @nodoc
class $HistoryStateCopyWith<$Res>  {
$HistoryStateCopyWith(HistoryState _, $Res Function(HistoryState) __);
}


/// Adds pattern-matching-related methods to [HistoryState].
extension HistoryStatePatterns on HistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Error value)?  error,TResult Function( _Loaded value)?  loaded,TResult Function( _Inserted value)?  inserted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Inserted() when inserted != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Error value)  error,required TResult Function( _Loaded value)  loaded,required TResult Function( _Inserted value)  inserted,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Error():
return error(_that);case _Loaded():
return loaded(_that);case _Inserted():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Error value)?  error,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Inserted value)?  inserted,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Inserted() when inserted != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  error,TResult Function( List<HistoryEntity> lsitHistory)?  loaded,TResult Function( HistoryEntity history)?  inserted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.message);case _Loaded() when loaded != null:
return loaded(_that.lsitHistory);case _Inserted() when inserted != null:
return inserted(_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  error,required TResult Function( List<HistoryEntity> lsitHistory)  loaded,required TResult Function( HistoryEntity history)  inserted,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Error():
return error(_that.message);case _Loaded():
return loaded(_that.lsitHistory);case _Inserted():
return inserted(_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  error,TResult? Function( List<HistoryEntity> lsitHistory)?  loaded,TResult? Function( HistoryEntity history)?  inserted,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.message);case _Loaded() when loaded != null:
return loaded(_that.lsitHistory);case _Inserted() when inserted != null:
return inserted(_that.history);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HistoryState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState.initial()';
}


}




/// @nodoc


class _Loading implements HistoryState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState.loading()';
}


}




/// @nodoc


class _Error implements HistoryState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of HistoryState
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
  return 'HistoryState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
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

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Loaded implements HistoryState {
  const _Loaded(final  List<HistoryEntity> lsitHistory): _lsitHistory = lsitHistory;
  

 final  List<HistoryEntity> _lsitHistory;
 List<HistoryEntity> get lsitHistory {
  if (_lsitHistory is EqualUnmodifiableListView) return _lsitHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lsitHistory);
}


/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._lsitHistory, _lsitHistory));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lsitHistory));

@override
String toString() {
  return 'HistoryState.loaded(lsitHistory: $lsitHistory)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<HistoryEntity> lsitHistory
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lsitHistory = null,}) {
  return _then(_Loaded(
null == lsitHistory ? _self._lsitHistory : lsitHistory // ignore: cast_nullable_to_non_nullable
as List<HistoryEntity>,
  ));
}


}

/// @nodoc


class _Inserted implements HistoryState {
  const _Inserted(this.history);
  

 final  HistoryEntity history;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsertedCopyWith<_Inserted> get copyWith => __$InsertedCopyWithImpl<_Inserted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Inserted&&(identical(other.history, history) || other.history == history));
}


@override
int get hashCode => Object.hash(runtimeType,history);

@override
String toString() {
  return 'HistoryState.inserted(history: $history)';
}


}

/// @nodoc
abstract mixin class _$InsertedCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory _$InsertedCopyWith(_Inserted value, $Res Function(_Inserted) _then) = __$InsertedCopyWithImpl;
@useResult
$Res call({
 HistoryEntity history
});




}
/// @nodoc
class __$InsertedCopyWithImpl<$Res>
    implements _$InsertedCopyWith<$Res> {
  __$InsertedCopyWithImpl(this._self, this._then);

  final _Inserted _self;
  final $Res Function(_Inserted) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? history = null,}) {
  return _then(_Inserted(
null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as HistoryEntity,
  ));
}


}

// dart format on
