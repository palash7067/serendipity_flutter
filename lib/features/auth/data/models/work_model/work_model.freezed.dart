// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkModel {

 int? get id;@JsonKey(name: 'job_title') String? get jobTitle; String? get company;
/// Create a copy of WorkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkModelCopyWith<WorkModel> get copyWith => _$WorkModelCopyWithImpl<WorkModel>(this as WorkModel, _$identity);

  /// Serializes this WorkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkModel&&(identical(other.id, id) || other.id == id)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.company, company) || other.company == company));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,jobTitle,company);

@override
String toString() {
  return 'WorkModel(id: $id, jobTitle: $jobTitle, company: $company)';
}


}

/// @nodoc
abstract mixin class $WorkModelCopyWith<$Res>  {
  factory $WorkModelCopyWith(WorkModel value, $Res Function(WorkModel) _then) = _$WorkModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'job_title') String? jobTitle, String? company
});




}
/// @nodoc
class _$WorkModelCopyWithImpl<$Res>
    implements $WorkModelCopyWith<$Res> {
  _$WorkModelCopyWithImpl(this._self, this._then);

  final WorkModel _self;
  final $Res Function(WorkModel) _then;

/// Create a copy of WorkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? jobTitle = freezed,Object? company = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WorkModel implements WorkModel {
  const _WorkModel({this.id, @JsonKey(name: 'job_title') this.jobTitle, this.company});
  factory _WorkModel.fromJson(Map<String, dynamic> json) => _$WorkModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'job_title') final  String? jobTitle;
@override final  String? company;

/// Create a copy of WorkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkModelCopyWith<_WorkModel> get copyWith => __$WorkModelCopyWithImpl<_WorkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkModel&&(identical(other.id, id) || other.id == id)&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.company, company) || other.company == company));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,jobTitle,company);

@override
String toString() {
  return 'WorkModel(id: $id, jobTitle: $jobTitle, company: $company)';
}


}

/// @nodoc
abstract mixin class _$WorkModelCopyWith<$Res> implements $WorkModelCopyWith<$Res> {
  factory _$WorkModelCopyWith(_WorkModel value, $Res Function(_WorkModel) _then) = __$WorkModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'job_title') String? jobTitle, String? company
});




}
/// @nodoc
class __$WorkModelCopyWithImpl<$Res>
    implements _$WorkModelCopyWith<$Res> {
  __$WorkModelCopyWithImpl(this._self, this._then);

  final _WorkModel _self;
  final $Res Function(_WorkModel) _then;

/// Create a copy of WorkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? jobTitle = freezed,Object? company = freezed,}) {
  return _then(_WorkModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
