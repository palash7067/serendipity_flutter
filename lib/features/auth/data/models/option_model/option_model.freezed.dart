// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OptionModel {

 int? get id;@JsonKey(name: 'option_name') String? get optionName;
/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionModelCopyWith<OptionModel> get copyWith => _$OptionModelCopyWithImpl<OptionModel>(this as OptionModel, _$identity);

  /// Serializes this OptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.optionName, optionName) || other.optionName == optionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,optionName);

@override
String toString() {
  return 'OptionModel(id: $id, optionName: $optionName)';
}


}

/// @nodoc
abstract mixin class $OptionModelCopyWith<$Res>  {
  factory $OptionModelCopyWith(OptionModel value, $Res Function(OptionModel) _then) = _$OptionModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'option_name') String? optionName
});




}
/// @nodoc
class _$OptionModelCopyWithImpl<$Res>
    implements $OptionModelCopyWith<$Res> {
  _$OptionModelCopyWithImpl(this._self, this._then);

  final OptionModel _self;
  final $Res Function(OptionModel) _then;

/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? optionName = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,optionName: freezed == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _OptionModel implements OptionModel {
  const _OptionModel({this.id, @JsonKey(name: 'option_name') this.optionName});
  factory _OptionModel.fromJson(Map<String, dynamic> json) => _$OptionModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'option_name') final  String? optionName;

/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionModelCopyWith<_OptionModel> get copyWith => __$OptionModelCopyWithImpl<_OptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.optionName, optionName) || other.optionName == optionName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,optionName);

@override
String toString() {
  return 'OptionModel(id: $id, optionName: $optionName)';
}


}

/// @nodoc
abstract mixin class _$OptionModelCopyWith<$Res> implements $OptionModelCopyWith<$Res> {
  factory _$OptionModelCopyWith(_OptionModel value, $Res Function(_OptionModel) _then) = __$OptionModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'option_name') String? optionName
});




}
/// @nodoc
class __$OptionModelCopyWithImpl<$Res>
    implements _$OptionModelCopyWith<$Res> {
  __$OptionModelCopyWithImpl(this._self, this._then);

  final _OptionModel _self;
  final $Res Function(_OptionModel) _then;

/// Create a copy of OptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? optionName = freezed,}) {
  return _then(_OptionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,optionName: freezed == optionName ? _self.optionName : optionName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
