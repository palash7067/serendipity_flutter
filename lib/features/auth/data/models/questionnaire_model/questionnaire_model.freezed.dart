// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionnaireModel {

 int? get id; String? get question; List<OptionModel>? get options;@JsonKey(name: 'selected_option') OptionModel? get selectedOption;
/// Create a copy of QuestionnaireModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionnaireModelCopyWith<QuestionnaireModel> get copyWith => _$QuestionnaireModelCopyWithImpl<QuestionnaireModel>(this as QuestionnaireModel, _$identity);

  /// Serializes this QuestionnaireModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionnaireModel&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.selectedOption, selectedOption) || other.selectedOption == selectedOption));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,const DeepCollectionEquality().hash(options),selectedOption);

@override
String toString() {
  return 'QuestionnaireModel(id: $id, question: $question, options: $options, selectedOption: $selectedOption)';
}


}

/// @nodoc
abstract mixin class $QuestionnaireModelCopyWith<$Res>  {
  factory $QuestionnaireModelCopyWith(QuestionnaireModel value, $Res Function(QuestionnaireModel) _then) = _$QuestionnaireModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? question, List<OptionModel>? options,@JsonKey(name: 'selected_option') OptionModel? selectedOption
});


$OptionModelCopyWith<$Res>? get selectedOption;

}
/// @nodoc
class _$QuestionnaireModelCopyWithImpl<$Res>
    implements $QuestionnaireModelCopyWith<$Res> {
  _$QuestionnaireModelCopyWithImpl(this._self, this._then);

  final QuestionnaireModel _self;
  final $Res Function(QuestionnaireModel) _then;

/// Create a copy of QuestionnaireModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? question = freezed,Object? options = freezed,Object? selectedOption = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<OptionModel>?,selectedOption: freezed == selectedOption ? _self.selectedOption : selectedOption // ignore: cast_nullable_to_non_nullable
as OptionModel?,
  ));
}
/// Create a copy of QuestionnaireModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionModelCopyWith<$Res>? get selectedOption {
    if (_self.selectedOption == null) {
    return null;
  }

  return $OptionModelCopyWith<$Res>(_self.selectedOption!, (value) {
    return _then(_self.copyWith(selectedOption: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _QuestionnaireModel implements QuestionnaireModel {
  const _QuestionnaireModel({this.id, this.question, final  List<OptionModel>? options, @JsonKey(name: 'selected_option') this.selectedOption}): _options = options;
  factory _QuestionnaireModel.fromJson(Map<String, dynamic> json) => _$QuestionnaireModelFromJson(json);

@override final  int? id;
@override final  String? question;
 final  List<OptionModel>? _options;
@override List<OptionModel>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'selected_option') final  OptionModel? selectedOption;

/// Create a copy of QuestionnaireModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionnaireModelCopyWith<_QuestionnaireModel> get copyWith => __$QuestionnaireModelCopyWithImpl<_QuestionnaireModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionnaireModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionnaireModel&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.selectedOption, selectedOption) || other.selectedOption == selectedOption));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,const DeepCollectionEquality().hash(_options),selectedOption);

@override
String toString() {
  return 'QuestionnaireModel(id: $id, question: $question, options: $options, selectedOption: $selectedOption)';
}


}

/// @nodoc
abstract mixin class _$QuestionnaireModelCopyWith<$Res> implements $QuestionnaireModelCopyWith<$Res> {
  factory _$QuestionnaireModelCopyWith(_QuestionnaireModel value, $Res Function(_QuestionnaireModel) _then) = __$QuestionnaireModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? question, List<OptionModel>? options,@JsonKey(name: 'selected_option') OptionModel? selectedOption
});


@override $OptionModelCopyWith<$Res>? get selectedOption;

}
/// @nodoc
class __$QuestionnaireModelCopyWithImpl<$Res>
    implements _$QuestionnaireModelCopyWith<$Res> {
  __$QuestionnaireModelCopyWithImpl(this._self, this._then);

  final _QuestionnaireModel _self;
  final $Res Function(_QuestionnaireModel) _then;

/// Create a copy of QuestionnaireModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? question = freezed,Object? options = freezed,Object? selectedOption = freezed,}) {
  return _then(_QuestionnaireModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<OptionModel>?,selectedOption: freezed == selectedOption ? _self.selectedOption : selectedOption // ignore: cast_nullable_to_non_nullable
as OptionModel?,
  ));
}

/// Create a copy of QuestionnaireModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OptionModelCopyWith<$Res>? get selectedOption {
    if (_self.selectedOption == null) {
    return null;
  }

  return $OptionModelCopyWith<$Res>(_self.selectedOption!, (value) {
    return _then(_self.copyWith(selectedOption: value));
  });
}
}

// dart format on
