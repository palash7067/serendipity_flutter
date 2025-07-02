// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GenderState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenderState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenderState()';
}


}

/// @nodoc
class $GenderStateCopyWith<$Res>  {
$GenderStateCopyWith(GenderState _, $Res Function(GenderState) __);
}


/// @nodoc


class GenderInitial implements GenderState {
  const GenderInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenderInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenderState.initial()';
}


}




/// @nodoc


class GenderLoading implements GenderState {
  const GenderLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenderLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenderState.loading()';
}


}




/// @nodoc


class GenderSuccess implements GenderState {
  const GenderSuccess(final  List<GenderModel> genders): _genders = genders;
  

 final  List<GenderModel> _genders;
 List<GenderModel> get genders {
  if (_genders is EqualUnmodifiableListView) return _genders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genders);
}


/// Create a copy of GenderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenderSuccessCopyWith<GenderSuccess> get copyWith => _$GenderSuccessCopyWithImpl<GenderSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenderSuccess&&const DeepCollectionEquality().equals(other._genders, _genders));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_genders));

@override
String toString() {
  return 'GenderState.success(genders: $genders)';
}


}

/// @nodoc
abstract mixin class $GenderSuccessCopyWith<$Res> implements $GenderStateCopyWith<$Res> {
  factory $GenderSuccessCopyWith(GenderSuccess value, $Res Function(GenderSuccess) _then) = _$GenderSuccessCopyWithImpl;
@useResult
$Res call({
 List<GenderModel> genders
});




}
/// @nodoc
class _$GenderSuccessCopyWithImpl<$Res>
    implements $GenderSuccessCopyWith<$Res> {
  _$GenderSuccessCopyWithImpl(this._self, this._then);

  final GenderSuccess _self;
  final $Res Function(GenderSuccess) _then;

/// Create a copy of GenderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? genders = null,}) {
  return _then(GenderSuccess(
null == genders ? _self._genders : genders // ignore: cast_nullable_to_non_nullable
as List<GenderModel>,
  ));
}


}

/// @nodoc


class GenderError implements GenderState {
  const GenderError(this.message);
  

 final  String message;

/// Create a copy of GenderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenderErrorCopyWith<GenderError> get copyWith => _$GenderErrorCopyWithImpl<GenderError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenderError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GenderState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $GenderErrorCopyWith<$Res> implements $GenderStateCopyWith<$Res> {
  factory $GenderErrorCopyWith(GenderError value, $Res Function(GenderError) _then) = _$GenderErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$GenderErrorCopyWithImpl<$Res>
    implements $GenderErrorCopyWith<$Res> {
  _$GenderErrorCopyWithImpl(this._self, this._then);

  final GenderError _self;
  final $Res Function(GenderError) _then;

/// Create a copy of GenderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(GenderError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
