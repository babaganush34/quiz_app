// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionModel {

@JsonKey(name: 'correct_answer') String get correctAnswer;@JsonKey(name: 'incorrect_answers') List<String> get incorrectAnswers; String get question; String? get difficulty; String? get category;
/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionModelCopyWith<QuestionModel> get copyWith => _$QuestionModelCopyWithImpl<QuestionModel>(this as QuestionModel, _$identity);

  /// Serializes this QuestionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionModel&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&const DeepCollectionEquality().equals(other.incorrectAnswers, incorrectAnswers)&&(identical(other.question, question) || other.question == question)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,correctAnswer,const DeepCollectionEquality().hash(incorrectAnswers),question,difficulty,category);

@override
String toString() {
  return 'QuestionModel(correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers, question: $question, difficulty: $difficulty, category: $category)';
}


}

/// @nodoc
abstract mixin class $QuestionModelCopyWith<$Res>  {
  factory $QuestionModelCopyWith(QuestionModel value, $Res Function(QuestionModel) _then) = _$QuestionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'correct_answer') String correctAnswer,@JsonKey(name: 'incorrect_answers') List<String> incorrectAnswers, String question, String? difficulty, String? category
});




}
/// @nodoc
class _$QuestionModelCopyWithImpl<$Res>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._self, this._then);

  final QuestionModel _self;
  final $Res Function(QuestionModel) _then;

/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? correctAnswer = null,Object? incorrectAnswers = null,Object? question = null,Object? difficulty = freezed,Object? category = freezed,}) {
  return _then(_self.copyWith(
correctAnswer: null == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String,incorrectAnswers: null == incorrectAnswers ? _self.incorrectAnswers : incorrectAnswers // ignore: cast_nullable_to_non_nullable
as List<String>,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionModel].
extension QuestionModelPatterns on QuestionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionModel value)  $default,){
final _that = this;
switch (_that) {
case _QuestionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionModel value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'correct_answer')  String correctAnswer, @JsonKey(name: 'incorrect_answers')  List<String> incorrectAnswers,  String question,  String? difficulty,  String? category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionModel() when $default != null:
return $default(_that.correctAnswer,_that.incorrectAnswers,_that.question,_that.difficulty,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'correct_answer')  String correctAnswer, @JsonKey(name: 'incorrect_answers')  List<String> incorrectAnswers,  String question,  String? difficulty,  String? category)  $default,) {final _that = this;
switch (_that) {
case _QuestionModel():
return $default(_that.correctAnswer,_that.incorrectAnswers,_that.question,_that.difficulty,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'correct_answer')  String correctAnswer, @JsonKey(name: 'incorrect_answers')  List<String> incorrectAnswers,  String question,  String? difficulty,  String? category)?  $default,) {final _that = this;
switch (_that) {
case _QuestionModel() when $default != null:
return $default(_that.correctAnswer,_that.incorrectAnswers,_that.question,_that.difficulty,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionModel implements QuestionModel {
  const _QuestionModel({@JsonKey(name: 'correct_answer') required this.correctAnswer, @JsonKey(name: 'incorrect_answers') required final  List<String> incorrectAnswers, required this.question, required this.difficulty, required this.category}): _incorrectAnswers = incorrectAnswers;
  factory _QuestionModel.fromJson(Map<String, dynamic> json) => _$QuestionModelFromJson(json);

@override@JsonKey(name: 'correct_answer') final  String correctAnswer;
 final  List<String> _incorrectAnswers;
@override@JsonKey(name: 'incorrect_answers') List<String> get incorrectAnswers {
  if (_incorrectAnswers is EqualUnmodifiableListView) return _incorrectAnswers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_incorrectAnswers);
}

@override final  String question;
@override final  String? difficulty;
@override final  String? category;

/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionModelCopyWith<_QuestionModel> get copyWith => __$QuestionModelCopyWithImpl<_QuestionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionModel&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer)&&const DeepCollectionEquality().equals(other._incorrectAnswers, _incorrectAnswers)&&(identical(other.question, question) || other.question == question)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,correctAnswer,const DeepCollectionEquality().hash(_incorrectAnswers),question,difficulty,category);

@override
String toString() {
  return 'QuestionModel(correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers, question: $question, difficulty: $difficulty, category: $category)';
}


}

/// @nodoc
abstract mixin class _$QuestionModelCopyWith<$Res> implements $QuestionModelCopyWith<$Res> {
  factory _$QuestionModelCopyWith(_QuestionModel value, $Res Function(_QuestionModel) _then) = __$QuestionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'correct_answer') String correctAnswer,@JsonKey(name: 'incorrect_answers') List<String> incorrectAnswers, String question, String? difficulty, String? category
});




}
/// @nodoc
class __$QuestionModelCopyWithImpl<$Res>
    implements _$QuestionModelCopyWith<$Res> {
  __$QuestionModelCopyWithImpl(this._self, this._then);

  final _QuestionModel _self;
  final $Res Function(_QuestionModel) _then;

/// Create a copy of QuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? correctAnswer = null,Object? incorrectAnswers = null,Object? question = null,Object? difficulty = freezed,Object? category = freezed,}) {
  return _then(_QuestionModel(
correctAnswer: null == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String,incorrectAnswers: null == incorrectAnswers ? _self._incorrectAnswers : incorrectAnswers // ignore: cast_nullable_to_non_nullable
as List<String>,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
