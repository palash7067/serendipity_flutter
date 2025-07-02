// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenderModel {

 int? get id; String? get name;
/// Create a copy of GenderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenderModelCopyWith<GenderModel> get copyWith => _$GenderModelCopyWithImpl<GenderModel>(this as GenderModel, _$identity);

  /// Serializes this GenderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'GenderModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $GenderModelCopyWith<$Res>  {
  factory $GenderModelCopyWith(GenderModel value, $Res Function(GenderModel) _then) = _$GenderModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$GenderModelCopyWithImpl<$Res>
    implements $GenderModelCopyWith<$Res> {
  _$GenderModelCopyWithImpl(this._self, this._then);

  final GenderModel _self;
  final $Res Function(GenderModel) _then;

/// Create a copy of GenderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GenderModel implements GenderModel {
  const _GenderModel({this.id, this.name});
  factory _GenderModel.fromJson(Map<String, dynamic> json) => _$GenderModelFromJson(json);

@override final  int? id;
@override final  String? name;

/// Create a copy of GenderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenderModelCopyWith<_GenderModel> get copyWith => __$GenderModelCopyWithImpl<_GenderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'GenderModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$GenderModelCopyWith<$Res> implements $GenderModelCopyWith<$Res> {
  factory _$GenderModelCopyWith(_GenderModel value, $Res Function(_GenderModel) _then) = __$GenderModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$GenderModelCopyWithImpl<$Res>
    implements _$GenderModelCopyWith<$Res> {
  __$GenderModelCopyWithImpl(this._self, this._then);

  final _GenderModel _self;
  final $Res Function(_GenderModel) _then;

/// Create a copy of GenderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_GenderModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
