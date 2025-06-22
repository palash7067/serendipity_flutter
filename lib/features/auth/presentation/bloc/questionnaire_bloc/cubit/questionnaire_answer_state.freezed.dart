// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_answer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuestionnaireAnswerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireAnswerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionnaireAnswerState()';
}


}

/// @nodoc
class $QuestionnaireAnswerStateCopyWith<$Res>  {
$QuestionnaireAnswerStateCopyWith(QuestionnaireAnswerState _, $Res Function(QuestionnaireAnswerState) __);
}


/// @nodoc


class QuestionnaireAnswerInitial implements QuestionnaireAnswerState {
  const QuestionnaireAnswerInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireAnswerInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionnaireAnswerState.initial()';
}


}




/// @nodoc


class QuestionnaireAnswerLoading implements QuestionnaireAnswerState {
  const QuestionnaireAnswerLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireAnswerLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionnaireAnswerState.loading()';
}


}




/// @nodoc


class QuestionnaireAnswerSuccess implements QuestionnaireAnswerState {
  const QuestionnaireAnswerSuccess(final  Map<String, dynamic> data): _data = data;
  

 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of QuestionnaireAnswerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionnaireAnswerSuccessCopyWith<QuestionnaireAnswerSuccess> get copyWith => _$QuestionnaireAnswerSuccessCopyWithImpl<QuestionnaireAnswerSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireAnswerSuccess&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'QuestionnaireAnswerState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $QuestionnaireAnswerSuccessCopyWith<$Res> implements $QuestionnaireAnswerStateCopyWith<$Res> {
  factory $QuestionnaireAnswerSuccessCopyWith(QuestionnaireAnswerSuccess value, $Res Function(QuestionnaireAnswerSuccess) _then) = _$QuestionnaireAnswerSuccessCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$QuestionnaireAnswerSuccessCopyWithImpl<$Res>
    implements $QuestionnaireAnswerSuccessCopyWith<$Res> {
  _$QuestionnaireAnswerSuccessCopyWithImpl(this._self, this._then);

  final QuestionnaireAnswerSuccess _self;
  final $Res Function(QuestionnaireAnswerSuccess) _then;

/// Create a copy of QuestionnaireAnswerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(QuestionnaireAnswerSuccess(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class QuestionnaireAnswerError implements QuestionnaireAnswerState {
  const QuestionnaireAnswerError(this.message);
  

 final  String message;

/// Create a copy of QuestionnaireAnswerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionnaireAnswerErrorCopyWith<QuestionnaireAnswerError> get copyWith => _$QuestionnaireAnswerErrorCopyWithImpl<QuestionnaireAnswerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireAnswerError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'QuestionnaireAnswerState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $QuestionnaireAnswerErrorCopyWith<$Res> implements $QuestionnaireAnswerStateCopyWith<$Res> {
  factory $QuestionnaireAnswerErrorCopyWith(QuestionnaireAnswerError value, $Res Function(QuestionnaireAnswerError) _then) = _$QuestionnaireAnswerErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$QuestionnaireAnswerErrorCopyWithImpl<$Res>
    implements $QuestionnaireAnswerErrorCopyWith<$Res> {
  _$QuestionnaireAnswerErrorCopyWithImpl(this._self, this._then);

  final QuestionnaireAnswerError _self;
  final $Res Function(QuestionnaireAnswerError) _then;

/// Create a copy of QuestionnaireAnswerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(QuestionnaireAnswerError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
