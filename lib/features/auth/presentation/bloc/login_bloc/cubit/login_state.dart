import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState{
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success(Map<String, dynamic> data) = LoginSuccess;
  const factory LoginState.error(String message) = LoginError;
}
