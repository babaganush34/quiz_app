// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadCategories value)?  loadCategories,TResult Function( _UpdateAmount value)?  updateAmount,TResult Function( _UpdateDifficulty value)?  updateDifficulty,TResult Function( _UpdateType value)?  updateType,TResult Function( _UpdateCategory value)?  updateCategory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadCategories() when loadCategories != null:
return loadCategories(_that);case _UpdateAmount() when updateAmount != null:
return updateAmount(_that);case _UpdateDifficulty() when updateDifficulty != null:
return updateDifficulty(_that);case _UpdateType() when updateType != null:
return updateType(_that);case _UpdateCategory() when updateCategory != null:
return updateCategory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadCategories value)  loadCategories,required TResult Function( _UpdateAmount value)  updateAmount,required TResult Function( _UpdateDifficulty value)  updateDifficulty,required TResult Function( _UpdateType value)  updateType,required TResult Function( _UpdateCategory value)  updateCategory,}){
final _that = this;
switch (_that) {
case _LoadCategories():
return loadCategories(_that);case _UpdateAmount():
return updateAmount(_that);case _UpdateDifficulty():
return updateDifficulty(_that);case _UpdateType():
return updateType(_that);case _UpdateCategory():
return updateCategory(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadCategories value)?  loadCategories,TResult? Function( _UpdateAmount value)?  updateAmount,TResult? Function( _UpdateDifficulty value)?  updateDifficulty,TResult? Function( _UpdateType value)?  updateType,TResult? Function( _UpdateCategory value)?  updateCategory,}){
final _that = this;
switch (_that) {
case _LoadCategories() when loadCategories != null:
return loadCategories(_that);case _UpdateAmount() when updateAmount != null:
return updateAmount(_that);case _UpdateDifficulty() when updateDifficulty != null:
return updateDifficulty(_that);case _UpdateType() when updateType != null:
return updateType(_that);case _UpdateCategory() when updateCategory != null:
return updateCategory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadCategories,TResult Function( int amount)?  updateAmount,TResult Function( String? difficulty)?  updateDifficulty,TResult Function( String type)?  updateType,TResult Function( int? categoryId)?  updateCategory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadCategories() when loadCategories != null:
return loadCategories();case _UpdateAmount() when updateAmount != null:
return updateAmount(_that.amount);case _UpdateDifficulty() when updateDifficulty != null:
return updateDifficulty(_that.difficulty);case _UpdateType() when updateType != null:
return updateType(_that.type);case _UpdateCategory() when updateCategory != null:
return updateCategory(_that.categoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadCategories,required TResult Function( int amount)  updateAmount,required TResult Function( String? difficulty)  updateDifficulty,required TResult Function( String type)  updateType,required TResult Function( int? categoryId)  updateCategory,}) {final _that = this;
switch (_that) {
case _LoadCategories():
return loadCategories();case _UpdateAmount():
return updateAmount(_that.amount);case _UpdateDifficulty():
return updateDifficulty(_that.difficulty);case _UpdateType():
return updateType(_that.type);case _UpdateCategory():
return updateCategory(_that.categoryId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadCategories,TResult? Function( int amount)?  updateAmount,TResult? Function( String? difficulty)?  updateDifficulty,TResult? Function( String type)?  updateType,TResult? Function( int? categoryId)?  updateCategory,}) {final _that = this;
switch (_that) {
case _LoadCategories() when loadCategories != null:
return loadCategories();case _UpdateAmount() when updateAmount != null:
return updateAmount(_that.amount);case _UpdateDifficulty() when updateDifficulty != null:
return updateDifficulty(_that.difficulty);case _UpdateType() when updateType != null:
return updateType(_that.type);case _UpdateCategory() when updateCategory != null:
return updateCategory(_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc


class _LoadCategories implements HomeEvent {
  const _LoadCategories();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadCategories);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.loadCategories()';
}


}




/// @nodoc


class _UpdateAmount implements HomeEvent {
  const _UpdateAmount(this.amount);
  

 final  int amount;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAmountCopyWith<_UpdateAmount> get copyWith => __$UpdateAmountCopyWithImpl<_UpdateAmount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAmount&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,amount);

@override
String toString() {
  return 'HomeEvent.updateAmount(amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$UpdateAmountCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$UpdateAmountCopyWith(_UpdateAmount value, $Res Function(_UpdateAmount) _then) = __$UpdateAmountCopyWithImpl;
@useResult
$Res call({
 int amount
});




}
/// @nodoc
class __$UpdateAmountCopyWithImpl<$Res>
    implements _$UpdateAmountCopyWith<$Res> {
  __$UpdateAmountCopyWithImpl(this._self, this._then);

  final _UpdateAmount _self;
  final $Res Function(_UpdateAmount) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,}) {
  return _then(_UpdateAmount(
null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateDifficulty implements HomeEvent {
  const _UpdateDifficulty(this.difficulty);
  

 final  String? difficulty;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDifficultyCopyWith<_UpdateDifficulty> get copyWith => __$UpdateDifficultyCopyWithImpl<_UpdateDifficulty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDifficulty&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}


@override
int get hashCode => Object.hash(runtimeType,difficulty);

@override
String toString() {
  return 'HomeEvent.updateDifficulty(difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class _$UpdateDifficultyCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$UpdateDifficultyCopyWith(_UpdateDifficulty value, $Res Function(_UpdateDifficulty) _then) = __$UpdateDifficultyCopyWithImpl;
@useResult
$Res call({
 String? difficulty
});




}
/// @nodoc
class __$UpdateDifficultyCopyWithImpl<$Res>
    implements _$UpdateDifficultyCopyWith<$Res> {
  __$UpdateDifficultyCopyWithImpl(this._self, this._then);

  final _UpdateDifficulty _self;
  final $Res Function(_UpdateDifficulty) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? difficulty = freezed,}) {
  return _then(_UpdateDifficulty(
freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UpdateType implements HomeEvent {
  const _UpdateType(this.type);
  

 final  String type;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTypeCopyWith<_UpdateType> get copyWith => __$UpdateTypeCopyWithImpl<_UpdateType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateType&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'HomeEvent.updateType(type: $type)';
}


}

/// @nodoc
abstract mixin class _$UpdateTypeCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$UpdateTypeCopyWith(_UpdateType value, $Res Function(_UpdateType) _then) = __$UpdateTypeCopyWithImpl;
@useResult
$Res call({
 String type
});




}
/// @nodoc
class __$UpdateTypeCopyWithImpl<$Res>
    implements _$UpdateTypeCopyWith<$Res> {
  __$UpdateTypeCopyWithImpl(this._self, this._then);

  final _UpdateType _self;
  final $Res Function(_UpdateType) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(_UpdateType(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdateCategory implements HomeEvent {
  const _UpdateCategory(this.categoryId);
  

 final  int? categoryId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCategoryCopyWith<_UpdateCategory> get copyWith => __$UpdateCategoryCopyWithImpl<_UpdateCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCategory&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'HomeEvent.updateCategory(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$UpdateCategoryCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$UpdateCategoryCopyWith(_UpdateCategory value, $Res Function(_UpdateCategory) _then) = __$UpdateCategoryCopyWithImpl;
@useResult
$Res call({
 int? categoryId
});




}
/// @nodoc
class __$UpdateCategoryCopyWithImpl<$Res>
    implements _$UpdateCategoryCopyWith<$Res> {
  __$UpdateCategoryCopyWithImpl(this._self, this._then);

  final _UpdateCategory _self;
  final $Res Function(_UpdateCategory) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,}) {
  return _then(_UpdateCategory(
freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Error value)?  error,TResult Function( _LoadedCategories value)?  loadedCategories,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _LoadedCategories() when loadedCategories != null:
return loadedCategories(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Error value)  error,required TResult Function( _LoadedCategories value)  loadedCategories,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Error():
return error(_that);case _LoadedCategories():
return loadedCategories(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Error value)?  error,TResult? Function( _LoadedCategories value)?  loadedCategories,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _LoadedCategories() when loadedCategories != null:
return loadedCategories(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int amount,  String difficulty,  String type,  int? categoryId)?  initial,TResult Function()?  loading,TResult Function( Failure failure)?  error,TResult Function( List<CategoriesEntity> categories,  int amount,  String difficulty,  String type,  int? categoryId)?  loadedCategories,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.amount,_that.difficulty,_that.type,_that.categoryId);case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.failure);case _LoadedCategories() when loadedCategories != null:
return loadedCategories(_that.categories,_that.amount,_that.difficulty,_that.type,_that.categoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int amount,  String difficulty,  String type,  int? categoryId)  initial,required TResult Function()  loading,required TResult Function( Failure failure)  error,required TResult Function( List<CategoriesEntity> categories,  int amount,  String difficulty,  String type,  int? categoryId)  loadedCategories,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.amount,_that.difficulty,_that.type,_that.categoryId);case _Loading():
return loading();case _Error():
return error(_that.failure);case _LoadedCategories():
return loadedCategories(_that.categories,_that.amount,_that.difficulty,_that.type,_that.categoryId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int amount,  String difficulty,  String type,  int? categoryId)?  initial,TResult? Function()?  loading,TResult? Function( Failure failure)?  error,TResult? Function( List<CategoriesEntity> categories,  int amount,  String difficulty,  String type,  int? categoryId)?  loadedCategories,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.amount,_that.difficulty,_that.type,_that.categoryId);case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.failure);case _LoadedCategories() when loadedCategories != null:
return loadedCategories(_that.categories,_that.amount,_that.difficulty,_that.type,_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial({this.amount = 10, this.difficulty = 'medium', this.type = 'multiple', this.categoryId});
  

@JsonKey() final  int amount;
@JsonKey() final  String difficulty;
@JsonKey() final  String type;
 final  int? categoryId;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.type, type) || other.type == type)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,amount,difficulty,type,categoryId);

@override
String toString() {
  return 'HomeState.initial(amount: $amount, difficulty: $difficulty, type: $type, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@useResult
$Res call({
 int amount, String difficulty, String type, int? categoryId
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? difficulty = null,Object? type = null,Object? categoryId = freezed,}) {
  return _then(_Initial(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class _Loading implements HomeState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class _Error implements HomeState {
  const _Error(this.failure);
  

 final  Failure failure;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'HomeState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_Error(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _LoadedCategories implements HomeState {
  const _LoadedCategories({required final  List<CategoriesEntity> categories, this.amount = 10, this.difficulty = 'medium', this.type = 'multiple', this.categoryId}): _categories = categories;
  

 final  List<CategoriesEntity> _categories;
 List<CategoriesEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@JsonKey() final  int amount;
@JsonKey() final  String difficulty;
@JsonKey() final  String type;
 final  int? categoryId;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCategoriesCopyWith<_LoadedCategories> get copyWith => __$LoadedCategoriesCopyWithImpl<_LoadedCategories>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedCategories&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.type, type) || other.type == type)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),amount,difficulty,type,categoryId);

@override
String toString() {
  return 'HomeState.loadedCategories(categories: $categories, amount: $amount, difficulty: $difficulty, type: $type, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$LoadedCategoriesCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$LoadedCategoriesCopyWith(_LoadedCategories value, $Res Function(_LoadedCategories) _then) = __$LoadedCategoriesCopyWithImpl;
@useResult
$Res call({
 List<CategoriesEntity> categories, int amount, String difficulty, String type, int? categoryId
});




}
/// @nodoc
class __$LoadedCategoriesCopyWithImpl<$Res>
    implements _$LoadedCategoriesCopyWith<$Res> {
  __$LoadedCategoriesCopyWithImpl(this._self, this._then);

  final _LoadedCategories _self;
  final $Res Function(_LoadedCategories) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? amount = null,Object? difficulty = null,Object? type = null,Object? categoryId = freezed,}) {
  return _then(_LoadedCategories(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoriesEntity>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
