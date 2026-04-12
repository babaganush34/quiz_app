// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuizEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizEvent()';
}


}

/// @nodoc
class $QuizEventCopyWith<$Res>  {
$QuizEventCopyWith(QuizEvent _, $Res Function(QuizEvent) __);
}


/// Adds pattern-matching-related methods to [QuizEvent].
extension QuizEventPatterns on QuizEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadQuestions value)?  loadQuestions,TResult Function( _AnswerSelected value)?  answerSelected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadQuestions() when loadQuestions != null:
return loadQuestions(_that);case _AnswerSelected() when answerSelected != null:
return answerSelected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadQuestions value)  loadQuestions,required TResult Function( _AnswerSelected value)  answerSelected,}){
final _that = this;
switch (_that) {
case _LoadQuestions():
return loadQuestions(_that);case _AnswerSelected():
return answerSelected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadQuestions value)?  loadQuestions,TResult? Function( _AnswerSelected value)?  answerSelected,}){
final _that = this;
switch (_that) {
case _LoadQuestions() when loadQuestions != null:
return loadQuestions(_that);case _AnswerSelected() when answerSelected != null:
return answerSelected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( QuizParams params)?  loadQuestions,TResult Function( String answer)?  answerSelected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadQuestions() when loadQuestions != null:
return loadQuestions(_that.params);case _AnswerSelected() when answerSelected != null:
return answerSelected(_that.answer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( QuizParams params)  loadQuestions,required TResult Function( String answer)  answerSelected,}) {final _that = this;
switch (_that) {
case _LoadQuestions():
return loadQuestions(_that.params);case _AnswerSelected():
return answerSelected(_that.answer);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( QuizParams params)?  loadQuestions,TResult? Function( String answer)?  answerSelected,}) {final _that = this;
switch (_that) {
case _LoadQuestions() when loadQuestions != null:
return loadQuestions(_that.params);case _AnswerSelected() when answerSelected != null:
return answerSelected(_that.answer);case _:
  return null;

}
}

}

/// @nodoc


class _LoadQuestions implements QuizEvent {
  const _LoadQuestions(this.params);
  

 final  QuizParams params;

/// Create a copy of QuizEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadQuestionsCopyWith<_LoadQuestions> get copyWith => __$LoadQuestionsCopyWithImpl<_LoadQuestions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadQuestions&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'QuizEvent.loadQuestions(params: $params)';
}


}

/// @nodoc
abstract mixin class _$LoadQuestionsCopyWith<$Res> implements $QuizEventCopyWith<$Res> {
  factory _$LoadQuestionsCopyWith(_LoadQuestions value, $Res Function(_LoadQuestions) _then) = __$LoadQuestionsCopyWithImpl;
@useResult
$Res call({
 QuizParams params
});




}
/// @nodoc
class __$LoadQuestionsCopyWithImpl<$Res>
    implements _$LoadQuestionsCopyWith<$Res> {
  __$LoadQuestionsCopyWithImpl(this._self, this._then);

  final _LoadQuestions _self;
  final $Res Function(_LoadQuestions) _then;

/// Create a copy of QuizEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_LoadQuestions(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as QuizParams,
  ));
}


}

/// @nodoc


class _AnswerSelected implements QuizEvent {
  const _AnswerSelected(this.answer);
  

 final  String answer;

/// Create a copy of QuizEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswerSelectedCopyWith<_AnswerSelected> get copyWith => __$AnswerSelectedCopyWithImpl<_AnswerSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnswerSelected&&(identical(other.answer, answer) || other.answer == answer));
}


@override
int get hashCode => Object.hash(runtimeType,answer);

@override
String toString() {
  return 'QuizEvent.answerSelected(answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$AnswerSelectedCopyWith<$Res> implements $QuizEventCopyWith<$Res> {
  factory _$AnswerSelectedCopyWith(_AnswerSelected value, $Res Function(_AnswerSelected) _then) = __$AnswerSelectedCopyWithImpl;
@useResult
$Res call({
 String answer
});




}
/// @nodoc
class __$AnswerSelectedCopyWithImpl<$Res>
    implements _$AnswerSelectedCopyWith<$Res> {
  __$AnswerSelectedCopyWithImpl(this._self, this._then);

  final _AnswerSelected _self;
  final $Res Function(_AnswerSelected) _then;

/// Create a copy of QuizEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? answer = null,}) {
  return _then(_AnswerSelected(
null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$QuizState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizState()';
}


}

/// @nodoc
class $QuizStateCopyWith<$Res>  {
$QuizStateCopyWith(QuizState _, $Res Function(QuizState) __);
}


/// Adds pattern-matching-related methods to [QuizState].
extension QuizStatePatterns on QuizState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Error value)?  error,TResult Function( _LoadedQuestions value)?  loadedQuestions,TResult Function( _Finished value)?  finished,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _LoadedQuestions() when loadedQuestions != null:
return loadedQuestions(_that);case _Finished() when finished != null:
return finished(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Error value)  error,required TResult Function( _LoadedQuestions value)  loadedQuestions,required TResult Function( _Finished value)  finished,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Error():
return error(_that);case _LoadedQuestions():
return loadedQuestions(_that);case _Finished():
return finished(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Error value)?  error,TResult? Function( _LoadedQuestions value)?  loadedQuestions,TResult? Function( _Finished value)?  finished,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _LoadedQuestions() when loadedQuestions != null:
return loadedQuestions(_that);case _Finished() when finished != null:
return finished(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Failure failure)?  error,TResult Function( List<QuestionEntity> questions,  int currentIndex,  int score)?  loadedQuestions,TResult Function( int score,  int total)?  finished,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.failure);case _LoadedQuestions() when loadedQuestions != null:
return loadedQuestions(_that.questions,_that.currentIndex,_that.score);case _Finished() when finished != null:
return finished(_that.score,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Failure failure)  error,required TResult Function( List<QuestionEntity> questions,  int currentIndex,  int score)  loadedQuestions,required TResult Function( int score,  int total)  finished,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Error():
return error(_that.failure);case _LoadedQuestions():
return loadedQuestions(_that.questions,_that.currentIndex,_that.score);case _Finished():
return finished(_that.score,_that.total);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Failure failure)?  error,TResult? Function( List<QuestionEntity> questions,  int currentIndex,  int score)?  loadedQuestions,TResult? Function( int score,  int total)?  finished,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.failure);case _LoadedQuestions() when loadedQuestions != null:
return loadedQuestions(_that.questions,_that.currentIndex,_that.score);case _Finished() when finished != null:
return finished(_that.score,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements QuizState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizState.initial()';
}


}




/// @nodoc


class _Loading implements QuizState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizState.loading()';
}


}




/// @nodoc


class _Error implements QuizState {
  const _Error(this.failure);
  

 final  Failure failure;

/// Create a copy of QuizState
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
  return 'QuizState.error(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
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

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_Error(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

/// @nodoc


class _LoadedQuestions implements QuizState {
  const _LoadedQuestions({required final  List<QuestionEntity> questions, required this.currentIndex, required this.score}): _questions = questions;
  

 final  List<QuestionEntity> _questions;
 List<QuestionEntity> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}

 final  int currentIndex;
 final  int score;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedQuestionsCopyWith<_LoadedQuestions> get copyWith => __$LoadedQuestionsCopyWithImpl<_LoadedQuestions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedQuestions&&const DeepCollectionEquality().equals(other._questions, _questions)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.score, score) || other.score == score));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_questions),currentIndex,score);

@override
String toString() {
  return 'QuizState.loadedQuestions(questions: $questions, currentIndex: $currentIndex, score: $score)';
}


}

/// @nodoc
abstract mixin class _$LoadedQuestionsCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory _$LoadedQuestionsCopyWith(_LoadedQuestions value, $Res Function(_LoadedQuestions) _then) = __$LoadedQuestionsCopyWithImpl;
@useResult
$Res call({
 List<QuestionEntity> questions, int currentIndex, int score
});




}
/// @nodoc
class __$LoadedQuestionsCopyWithImpl<$Res>
    implements _$LoadedQuestionsCopyWith<$Res> {
  __$LoadedQuestionsCopyWithImpl(this._self, this._then);

  final _LoadedQuestions _self;
  final $Res Function(_LoadedQuestions) _then;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? questions = null,Object? currentIndex = null,Object? score = null,}) {
  return _then(_LoadedQuestions(
questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<QuestionEntity>,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Finished implements QuizState {
  const _Finished({required this.score, required this.total});
  

 final  int score;
 final  int total;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinishedCopyWith<_Finished> get copyWith => __$FinishedCopyWithImpl<_Finished>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Finished&&(identical(other.score, score) || other.score == score)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,score,total);

@override
String toString() {
  return 'QuizState.finished(score: $score, total: $total)';
}


}

/// @nodoc
abstract mixin class _$FinishedCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory _$FinishedCopyWith(_Finished value, $Res Function(_Finished) _then) = __$FinishedCopyWithImpl;
@useResult
$Res call({
 int score, int total
});




}
/// @nodoc
class __$FinishedCopyWithImpl<$Res>
    implements _$FinishedCopyWith<$Res> {
  __$FinishedCopyWithImpl(this._self, this._then);

  final _Finished _self;
  final $Res Function(_Finished) _then;

/// Create a copy of QuizState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? score = null,Object? total = null,}) {
  return _then(_Finished(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
