// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// @nodoc


class LoginInitial implements LoginState {
  const LoginInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.initial()';
}


}




/// @nodoc


class LoginLoading implements LoginState {
  const LoginLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loading()';
}


}




/// @nodoc


class LoginSuccess implements LoginState {
  const LoginSuccess(final  Map<String, dynamic> data): _data = data;
  

 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessCopyWith<LoginSuccess> get copyWith => _$LoginSuccessCopyWithImpl<LoginSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'LoginState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginSuccessCopyWith(LoginSuccess value, $Res Function(LoginSuccess) _then) = _$LoginSuccessCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$LoginSuccessCopyWithImpl<$Res>
    implements $LoginSuccessCopyWith<$Res> {
  _$LoginSuccessCopyWithImpl(this._self, this._then);

  final LoginSuccess _self;
  final $Res Function(LoginSuccess) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(LoginSuccess(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class LoginError implements LoginState {
  const LoginError(this.message);
  

 final  String message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginErrorCopyWith<LoginError> get copyWith => _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $LoginErrorCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginErrorCopyWith(LoginError value, $Res Function(LoginError) _then) = _$LoginErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$LoginErrorCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(this._self, this._then);

  final LoginError _self;
  final $Res Function(LoginError) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(LoginError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
