// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionnaireResponseModel {

@JsonKey(name: 'data') List<QuestionnaireModel>? get questionnaires;
/// Create a copy of QuestionnaireResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionnaireResponseModelCopyWith<QuestionnaireResponseModel> get copyWith => _$QuestionnaireResponseModelCopyWithImpl<QuestionnaireResponseModel>(this as QuestionnaireResponseModel, _$identity);

  /// Serializes this QuestionnaireResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireResponseModel&&const DeepCollectionEquality().equals(other.questionnaires, questionnaires));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(questionnaires));

@override
String toString() {
  return 'QuestionnaireResponseModel(questionnaires: $questionnaires)';
}


}

/// @nodoc
abstract mixin class $QuestionnaireResponseModelCopyWith<$Res>  {
  factory $QuestionnaireResponseModelCopyWith(QuestionnaireResponseModel value, $Res Function(QuestionnaireResponseModel) _then) = _$QuestionnaireResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<QuestionnaireModel>? questionnaires
});




}
/// @nodoc
class _$QuestionnaireResponseModelCopyWithImpl<$Res>
    implements $QuestionnaireResponseModelCopyWith<$Res> {
  _$QuestionnaireResponseModelCopyWithImpl(this._self, this._then);

  final QuestionnaireResponseModel _self;
  final $Res Function(QuestionnaireResponseModel) _then;

/// Create a copy of QuestionnaireResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionnaires = freezed,}) {
  return _then(_self.copyWith(
questionnaires: freezed == questionnaires ? _self.questionnaires : questionnaires // ignore: cast_nullable_to_non_nullable
as List<QuestionnaireModel>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _QuestionnaireResponseModel implements QuestionnaireResponseModel {
  const _QuestionnaireResponseModel({@JsonKey(name: 'data') final  List<QuestionnaireModel>? questionnaires}): _questionnaires = questionnaires;
  factory _QuestionnaireResponseModel.fromJson(Map<String, dynamic> json) => _$QuestionnaireResponseModelFromJson(json);

 final  List<QuestionnaireModel>? _questionnaires;
@override@JsonKey(name: 'data') List<QuestionnaireModel>? get questionnaires {
  final value = _questionnaires;
  if (value == null) return null;
  if (_questionnaires is EqualUnmodifiableListView) return _questionnaires;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of QuestionnaireResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionnaireResponseModelCopyWith<_QuestionnaireResponseModel> get copyWith => __$QuestionnaireResponseModelCopyWithImpl<_QuestionnaireResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionnaireResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionnaireResponseModel&&const DeepCollectionEquality().equals(other._questionnaires, _questionnaires));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_questionnaires));

@override
String toString() {
  return 'QuestionnaireResponseModel(questionnaires: $questionnaires)';
}


}

/// @nodoc
abstract mixin class _$QuestionnaireResponseModelCopyWith<$Res> implements $QuestionnaireResponseModelCopyWith<$Res> {
  factory _$QuestionnaireResponseModelCopyWith(_QuestionnaireResponseModel value, $Res Function(_QuestionnaireResponseModel) _then) = __$QuestionnaireResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<QuestionnaireModel>? questionnaires
});




}
/// @nodoc
class __$QuestionnaireResponseModelCopyWithImpl<$Res>
    implements _$QuestionnaireResponseModelCopyWith<$Res> {
  __$QuestionnaireResponseModelCopyWithImpl(this._self, this._then);

  final _QuestionnaireResponseModel _self;
  final $Res Function(_QuestionnaireResponseModel) _then;

/// Create a copy of QuestionnaireResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionnaires = freezed,}) {
  return _then(_QuestionnaireResponseModel(
questionnaires: freezed == questionnaires ? _self._questionnaires : questionnaires // ignore: cast_nullable_to_non_nullable
as List<QuestionnaireModel>?,
  ));
}


}

// dart format on
