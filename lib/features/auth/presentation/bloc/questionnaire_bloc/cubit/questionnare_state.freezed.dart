// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnare_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuestionnaireState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuestionnaireState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuestionnaireState()';
}


}

/// @nodoc
class $QuestionnaireStateCopyWith<$Res>  {
$QuestionnaireStateCopyWith(QuestionnaireState _, $Res Function(QuestionnaireState) __);
}


/// @nodoc


class QuestionnaireInitial with DiagnosticableTreeMixin implements QuestionnaireState {
  const QuestionnaireInitial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuestionnaireState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuestionnaireState.initial()';
}


}




/// @nodoc


class QuestionnaireLoading with DiagnosticableTreeMixin implements QuestionnaireState {
  const QuestionnaireLoading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuestionnaireState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuestionnaireState.loading()';
}


}




/// @nodoc


class QuestionnaireSuccess with DiagnosticableTreeMixin implements QuestionnaireState {
  const QuestionnaireSuccess(final  List<QuestionnaireModel> questionnaires): _questionnaires = questionnaires;
  

 final  List<QuestionnaireModel> _questionnaires;
 List<QuestionnaireModel> get questionnaires {
  if (_questionnaires is EqualUnmodifiableListView) return _questionnaires;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questionnaires);
}


/// Create a copy of QuestionnaireState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionnaireSuccessCopyWith<QuestionnaireSuccess> get copyWith => _$QuestionnaireSuccessCopyWithImpl<QuestionnaireSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuestionnaireState.success'))
    ..add(DiagnosticsProperty('questionnaires', questionnaires));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireSuccess&&const DeepCollectionEquality().equals(other._questionnaires, _questionnaires));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_questionnaires));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuestionnaireState.success(questionnaires: $questionnaires)';
}


}

/// @nodoc
abstract mixin class $QuestionnaireSuccessCopyWith<$Res> implements $QuestionnaireStateCopyWith<$Res> {
  factory $QuestionnaireSuccessCopyWith(QuestionnaireSuccess value, $Res Function(QuestionnaireSuccess) _then) = _$QuestionnaireSuccessCopyWithImpl;
@useResult
$Res call({
 List<QuestionnaireModel> questionnaires
});




}
/// @nodoc
class _$QuestionnaireSuccessCopyWithImpl<$Res>
    implements $QuestionnaireSuccessCopyWith<$Res> {
  _$QuestionnaireSuccessCopyWithImpl(this._self, this._then);

  final QuestionnaireSuccess _self;
  final $Res Function(QuestionnaireSuccess) _then;

/// Create a copy of QuestionnaireState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? questionnaires = null,}) {
  return _then(QuestionnaireSuccess(
null == questionnaires ? _self._questionnaires : questionnaires // ignore: cast_nullable_to_non_nullable
as List<QuestionnaireModel>,
  ));
}


}

/// @nodoc


class QuestionnaireError with DiagnosticableTreeMixin implements QuestionnaireState {
  const QuestionnaireError(this.message);
  

 final  String message;

/// Create a copy of QuestionnaireState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionnaireErrorCopyWith<QuestionnaireError> get copyWith => _$QuestionnaireErrorCopyWithImpl<QuestionnaireError>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuestionnaireState.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuestionnaireState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $QuestionnaireErrorCopyWith<$Res> implements $QuestionnaireStateCopyWith<$Res> {
  factory $QuestionnaireErrorCopyWith(QuestionnaireError value, $Res Function(QuestionnaireError) _then) = _$QuestionnaireErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$QuestionnaireErrorCopyWithImpl<$Res>
    implements $QuestionnaireErrorCopyWith<$Res> {
  _$QuestionnaireErrorCopyWithImpl(this._self, this._then);

  final QuestionnaireError _self;
  final $Res Function(QuestionnaireError) _then;

/// Create a copy of QuestionnaireState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(QuestionnaireError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
