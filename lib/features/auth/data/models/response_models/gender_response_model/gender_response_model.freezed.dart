// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenderResponseModel {

@JsonKey(name: 'data') List<GenderModel>? get genders;
/// Create a copy of GenderResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenderResponseModelCopyWith<GenderResponseModel> get copyWith => _$GenderResponseModelCopyWithImpl<GenderResponseModel>(this as GenderResponseModel, _$identity);

  /// Serializes this GenderResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenderResponseModel&&const DeepCollectionEquality().equals(other.genders, genders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(genders));

@override
String toString() {
  return 'GenderResponseModel(genders: $genders)';
}


}

/// @nodoc
abstract mixin class $GenderResponseModelCopyWith<$Res>  {
  factory $GenderResponseModelCopyWith(GenderResponseModel value, $Res Function(GenderResponseModel) _then) = _$GenderResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<GenderModel>? genders
});




}
/// @nodoc
class _$GenderResponseModelCopyWithImpl<$Res>
    implements $GenderResponseModelCopyWith<$Res> {
  _$GenderResponseModelCopyWithImpl(this._self, this._then);

  final GenderResponseModel _self;
  final $Res Function(GenderResponseModel) _then;

/// Create a copy of GenderResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? genders = freezed,}) {
  return _then(_self.copyWith(
genders: freezed == genders ? _self.genders : genders // ignore: cast_nullable_to_non_nullable
as List<GenderModel>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GenderResponseModel implements GenderResponseModel {
  const _GenderResponseModel({@JsonKey(name: 'data') final  List<GenderModel>? genders}): _genders = genders;
  factory _GenderResponseModel.fromJson(Map<String, dynamic> json) => _$GenderResponseModelFromJson(json);

 final  List<GenderModel>? _genders;
@override@JsonKey(name: 'data') List<GenderModel>? get genders {
  final value = _genders;
  if (value == null) return null;
  if (_genders is EqualUnmodifiableListView) return _genders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GenderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenderResponseModelCopyWith<_GenderResponseModel> get copyWith => __$GenderResponseModelCopyWithImpl<_GenderResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenderResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenderResponseModel&&const DeepCollectionEquality().equals(other._genders, _genders));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_genders));

@override
String toString() {
  return 'GenderResponseModel(genders: $genders)';
}


}

/// @nodoc
abstract mixin class _$GenderResponseModelCopyWith<$Res> implements $GenderResponseModelCopyWith<$Res> {
  factory _$GenderResponseModelCopyWith(_GenderResponseModel value, $Res Function(_GenderResponseModel) _then) = __$GenderResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<GenderModel>? genders
});




}
/// @nodoc
class __$GenderResponseModelCopyWithImpl<$Res>
    implements _$GenderResponseModelCopyWith<$Res> {
  __$GenderResponseModelCopyWithImpl(this._self, this._then);

  final _GenderResponseModel _self;
  final $Res Function(_GenderResponseModel) _then;

/// Create a copy of GenderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? genders = freezed,}) {
  return _then(_GenderResponseModel(
genders: freezed == genders ? _self._genders : genders // ignore: cast_nullable_to_non_nullable
as List<GenderModel>?,
  ));
}


}

// dart format on
